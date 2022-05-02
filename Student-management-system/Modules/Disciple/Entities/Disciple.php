<?php

namespace Modules\Disciple\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Disciple extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'date',
        'type',
        'description',
        'created_at',
    ];

    protected $casts = [
        'created_at' => 'date:D, d-m-y'
    ];

    protected $hidden = [
        'updated_at'
    ];
}
