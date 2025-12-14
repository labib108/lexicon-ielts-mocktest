<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WsScore extends Model
{
    // Table name (optional if it matches plural form of model name, but good to be explicit)
    protected $table = 'ws_scores';

    // Allow mass assignment on these fields
    protected $fillable = [
        'test_user_id',
        'writing_result',
        'speaking_result',
    ];

    /**
     * Relation: Each score belongs to one test user
     */
    public function testUser()
    {
        return $this->belongsTo(TestUser::class, 'test_user_id');
    }
}
