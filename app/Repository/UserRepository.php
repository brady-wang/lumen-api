<?php

namespace App\Repository;

//仓储 用于连接service和model
use App\Model\User;
use Brady\Tool\Repository\BaseRepository;

class UserRepository extends BaseRepository
{
	const MODEL = User::class;

	public function getUserList()
	{

		$res = $this->one();
		return $res;
	}
}