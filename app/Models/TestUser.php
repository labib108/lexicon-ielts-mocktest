<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TestUser extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = ['mock_test_id', 'name', 'phone', 'email'];
    public $timestamps = true;

    public function mockTest()
    {
        return $this->belongsTo(MockTest::class, 'mock_test_id', 'id');
    }
    public function wsScore()
    {
        return $this->hasOne(WsScore::class, 'test_user_id');
    }
    public function userScores()
    {
        return $this->hasMany(UserScore::class, 'test_user_id');
    }
}
