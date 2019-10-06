<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

//model层
class Role extends Model
{

	public $table = "role";
	public $primaryKey = "id";

	protected $fillable = ['name',"created_at",'updated_at'];
}
