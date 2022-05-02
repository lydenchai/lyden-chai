<?php

namespace Modules\Score\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Score extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'htmlcss',
        'javascript',
        'python',
        'php',
        'laravel',
        'java',
    ];

    protected $casts = [
        'created_at' => 'date:D, d-F-Y'
    ];

    protected $hidden = [
        'updated_at'
    ];
}
