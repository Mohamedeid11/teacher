@extends('layouts.frontend')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            @can('gift_create')
                <div style="margin-bottom: 10px;" class="row">
                    <div class="col-lg-12">
                        <a class="btn btn-success" href="{{ route('frontend.gifts.create') }}">
                            {{ trans('global.add') }} {{ trans('cruds.gift.title_singular') }}
                        </a>
                    </div>
                </div>
            @endcan
            <div class="card">
                <div class="card-header">
                    {{ trans('cruds.gift.title_singular') }} {{ trans('global.list') }}
                </div>

                <div class="card-body">
                    <div class="table-responsive">
                        <table class=" table table-bordered table-striped table-hover datatable datatable-Gift">
                            <thead>
                                <tr>
                                    <th>
                                        {{ trans('cruds.gift.fields.id') }}
                                    </th>
                                    <th>
                                        {{ trans('cruds.gift.fields.name') }}
                                    </th>
                                    <th>
                                        {{ trans('cruds.gift.fields.image') }}
                                    </th>
                                    <th>
                                        {{ trans('cruds.gift.fields.points') }}
                                    </th>
                                    <th>
                                        {{ trans('cruds.gift.fields.is_active') }}
                                    </th>
                                    <th>
                                        &nbsp;
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($gifts as $key => $gift)
                                    <tr data-entry-id="{{ $gift->id }}">
                                        <td>
                                            {{ $gift->id ?? '' }}
                                        </td>
                                        <td>
                                            {{ $gift->name ?? '' }}
                                        </td>
                                        <td>
                                            {{ $gift->image ?? '' }}
                                        </td>
                                        <td>
                                            {{ $gift->points ?? '' }}
                                        </td>
                                        <td>
                                            <span style="display:none">{{ $gift->is_active ?? '' }}</span>
                                            <input type="checkbox" disabled="disabled" {{ $gift->is_active ? 'checked' : '' }}>
                                        </td>
                                        <td>
                                            @can('gift_show')
                                                <a class="btn btn-xs btn-primary" href="{{ route('frontend.gifts.show', $gift->id) }}">
                                                    {{ trans('global.view') }}
                                                </a>
                                            @endcan

                                            @can('gift_edit')
                                                <a class="btn btn-xs btn-info" href="{{ route('frontend.gifts.edit', $gift->id) }}">
                                                    {{ trans('global.edit') }}
                                                </a>
                                            @endcan

                                            @can('gift_delete')
                                                <form action="{{ route('frontend.gifts.destroy', $gift->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: inline-block;">
                                                    <input type="hidden" name="_method" value="DELETE">
                                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                                    <input type="submit" class="btn btn-xs btn-danger" value="{{ trans('global.delete') }}">
                                                </form>
                                            @endcan

                                        </td>

                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent
<script>
    $(function () {
  let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
@can('gift_delete')
  let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
  let deleteButton = {
    text: deleteButtonTrans,
    url: "{{ route('frontend.gifts.massDestroy') }}",
    className: 'btn-danger',
    action: function (e, dt, node, config) {
      var ids = $.map(dt.rows({ selected: true }).nodes(), function (entry) {
          return $(entry).data('entry-id')
      });

      if (ids.length === 0) {
        alert('{{ trans('global.datatables.zero_selected') }}')

        return
      }

      if (confirm('{{ trans('global.areYouSure') }}')) {
        $.ajax({
          headers: {'x-csrf-token': _token},
          method: 'POST',
          url: config.url,
          data: { ids: ids, _method: 'DELETE' }})
          .done(function () { location.reload() })
      }
    }
  }
  dtButtons.push(deleteButton)
@endcan

  $.extend(true, $.fn.dataTable.defaults, {
    orderCellsTop: true,
    order: [[ 1, 'desc' ]],
    pageLength: 100,
  });
  let table = $('.datatable-Gift:not(.ajaxTable)').DataTable({ buttons: dtButtons })
  $('a[data-toggle="tab"]').on('shown.bs.tab click', function(e){
      $($.fn.dataTable.tables(true)).DataTable()
          .columns.adjust();
  });
  
})

</script>
@endsection