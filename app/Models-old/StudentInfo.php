<?php

namespace App\Models;

use \DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class StudentInfo extends Model
{
    use SoftDeletes;
    use HasFactory;

    public $table = 'student_infos';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'student_id',
        'whatsapp',
        'phone',
        'grade_id',
        'parent_id',
        'parent_phone',
        'parent_name',
        'parent_job',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function student()
    {
        return $this->belongsTo(User::class, 'student_id');
    }

    public function grade()
    {
        return $this->belongsTo(Category::class, 'grade_id');
    }

    public function parent()
    {
        return $this->belongsTo(User::class, 'parent_id');
    }

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }
}
