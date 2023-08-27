<?php

namespace App\Models;

use \DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class HomeScore extends Model
{
    use SoftDeletes;
    use HasFactory;

    public $table = 'home_scores';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'home_id',
        'student_id',
        'score',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function home()
    {
        return $this->belongsTo(Homework::class, 'home_id');
    }

    public function student()
    {
        return $this->belongsTo(User::class, 'student_id');
    }

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }
}
