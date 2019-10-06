<?php

namespace App\Service;

//服务层
use App\Constants\ErrorCode;
use App\Repository\UserRepository;
use Brady\Tool\Exception\ExceptionResult;
use Mockery\Exception;

class UserService
{
	public  $userRepository;

	public function __construct()
	{
		$this->userRepository = new UserRepository();
	}

	public function queryUserList($where)
	{
		$where = ['name'=>"brady"];
		return $this->userRepository->getList($where);
	}

	public function getUserInfo($id)
	{
		try{
			ExceptionResult::throwException(ErrorCode::UNAUTHORIZED);

			return $this->userRepository->getById($id);

		} catch (\Exception $e){
			var_dump($e->getMessage());
		}

	}



}