<?php

namespace App\Models;

use \DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomeworkAnswers extends Model
{
    use HasFactory;
 
    public $table = 'homework_answers';

    protected $dates = [
        'created_at',
        'updated_at',
    ];

    protected $fillable = [
        'is_correct',
        'home_scores_id',
        'question_id',
        'option_id',
        'created_at',
        'updated_at',
    ];

   
}
