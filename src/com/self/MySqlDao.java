package com.self;

public class MySqlDao implements DataAccessObject{

	@Override
	public void select() {
		System.out.println("MySqlDao에서 검색");
		
	}

	@Override
	public void insert() {
		System.out.println("MySqlDao에서 삽입");
		
	}

	@Override
	public void update() {
		System.out.println("MySqlDao에서 수정");
		
	}

	@Override
	public void delete() {
		System.out.println("MySqlDao에서 삭제");
		
	}

}
