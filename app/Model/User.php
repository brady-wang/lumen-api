<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

//model层
class User extends Model
{

	public $table = "user";
	public $primaryKey = "id";

	protected $fillable = ['name','email',"created_at",'updated_at'];
}
