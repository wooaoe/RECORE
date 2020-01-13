package com.mvc.dao;

import com.mvc.vo.Vo_Account;

public interface AccountDao {

	public Vo_Account A_selectAccount(String acc_id, String acc_pw); //로그인
	
	public boolean A_selectAccountOne(String acc_id);
	
	public boolean A_selectAccountphone(String acc_phone);

	public boolean A_insert(Vo_Account vo); //회원가입

	public boolean A_update(Vo_Account vo); //회원정보 수정

	public boolean A_delete(int aseq); // 쿼리문은 update로 사용 / 회원탈퇴 여부 판단

	
}
