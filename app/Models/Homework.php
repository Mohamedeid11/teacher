<?php

namespace App\Models;

use \DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Homework extends Model
{
    use SoftDeletes;
    use HasFactory;

    public $table = 'homeworks';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'title',
        'description',
        'grade_id',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function grade()
    {
        return $this->belongsTo(Category::class, 'grade_id');
    }

    public function questions()
    {
        return $this->belongsToMany(Question::class);
    }

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }
	
	
}
