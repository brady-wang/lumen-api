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
		return $this->userRepository->getList($where);
	}

	public function getUserInfo($id)
	{
		try{
			return $this->userRepository->getById($id);

		} catch (\Exception $e){
			var_dump($e->getMessage());
		}

	}

	public function createUser($params)
	{
		try{
			return $this->userRepository->addUser($params);

		} catch (\Exception $e){
			var_dump($e->getMessage());
		}
	}

	public function editUser($params,$id)
	{
		try{
			$affectedRows = $this->userRepository->editUser($params,$id);
			return ['affectedRows'=>$affectedRows];
		} catch (\Exception $e){
			var_dump($e->getMessage());
		}
	}



}