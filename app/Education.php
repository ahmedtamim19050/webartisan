<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Education extends Model
{
    protected $casts = [
        'start_date' => 'datetime:d/m/Y', 
        'end_date' => 'datetime:d/m/Y',
        ];
}
