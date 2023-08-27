<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyGiftRequest;
use App\Http\Requests\StoreGiftRequest;
use App\Http\Requests\UpdateGiftRequest;
use App\Models\Gift;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class GiftsController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('gift_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $gifts = Gift::all();

        return view('frontend.gifts.index', compact('gifts'));
    }

    public function create()
    {
        abort_if(Gate::denies('gift_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('frontend.gifts.create');
    }

    public function store(StoreGiftRequest $request)
    {
        $gift = Gift::create($request->all());

        return redirect()->route('frontend.gifts.index');
    }

    public function edit(Gift $gift)
    {
        abort_if(Gate::denies('gift_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('frontend.gifts.edit', compact('gift'));
    }

    public function update(UpdateGiftRequest $request, Gift $gift)
    {
        $gift->update($request->all());

        return redirect()->route('frontend.gifts.index');
    }

    public function show(Gift $gift)
    {
        abort_if(Gate::denies('gift_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('frontend.gifts.show', compact('gift'));
    }

    public function destroy(Gift $gift)
    {
        abort_if(Gate::denies('gift_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $gift->delete();

        return back();
    }

    public function massDestroy(MassDestroyGiftRequest $request)
    {
        Gift::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
