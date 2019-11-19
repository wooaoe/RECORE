package com.self;

import java.util.Scanner;

public class BankApplication {
	private static Account[] accountArray = new Account[100];
	private static Scanner sc = new Scanner(System.in);

	public static void main(String args[]) {
		boolean run = true;

		while (run) {
			System.out.println("----------------------------------------------");
			System.out.println("1. 계좌생성 | 2. 계좌목록 | 3. 예금 | 4. 출금 | 5. 종료");
			System.out.println("----------------------------------------------");
			System.out.println("선택 > ");

			int selectNo = sc.nextInt();

			if (selectNo == 1) {
				createAccount();
			} else if (selectNo == 2) {
				accountList();
			} else if (selectNo == 3) {
				deposit();
			} else if (selectNo == 4) {
				withdraw();
			} else if (selectNo == 5) {
				run = false;
			}
		}
		System.out.println("프로그램 종료");
	}

	private static void circlePrintln01() {

		System.out.println("-------------");
		System.out.println("계좌 생성");
		System.out.println("-------------");

	}

	private static void circlePrintln02() {
		System.out.println("-------------");
		System.out.println("계좌 목록");
		System.out.println("-------------");

	}

	private static void circlePrintln03() {
		System.out.println("-------------");
		System.out.println("예금");
		System.out.println("-------------");
	}

	private static void circlePrintln04() {
		System.out.println("-------------");
		System.out.println("출금");
		System.out.println("-------------");
	}

	// 계좌 생성하기
	private static void createAccount() {

		circlePrintln01();

		System.out.println("계좌번호(000-000형식) : ");
		String accountNum = sc.next();
		System.out.println("계좌주 : ");
		String accountOwner = sc.next();
		System.out.println("초기 입금액 : ");
		int accountBal = sc.nextInt();

		Account newAccount = new Account(accountNum, accountOwner, accountBal);

		for (int i = 0; i < accountArray.length; i++) {
			if (accountArray[i] == null) {
				accountArray[i] = newAccount;
				System.out.println("결과 : 계좌가 생성되었습니다.");
				break;
			}
		}
	}

	// 계좌목록 보기
	private static void accountList() {

		circlePrintln02();

		for (int i = 0; i < accountArray.length; i++) {
			Account account = accountArray[i];
			if (accountArray[i] != null) {
				System.out.println(account.toString());
			}
		}

	}

	// 예금하기
	private static void deposit() {

		circlePrintln03();

		System.out.println("계좌 번호(000-000형식) : ");
		String accountNum = sc.next();
		System.out.println("예금액 : ");
		int accountBal = sc.nextInt();

		Account account = findAccount(accountNum);

		if (account == null) {
			System.out.println("계좌가 존재하지 않습니다.");
			return;
		}
		if (!account.getAno().equals(accountNum)) {
			System.out.println("계좌번호를 잘못 입력하셨습니다.");
			return;
		}

		account.setBalance(account.getBalance() + accountBal);
		System.out.println("예금이 성공되었습니다.");

	}

	// 출금하기
	private static void withdraw() {

		circlePrintln04();

		System.out.println("계좌번호(000-000형식) : ");
		String accountNum = sc.next();
		System.out.println("출금액 : ");
		int accountBal = sc.nextInt();

		Account account = findAccount(accountNum);

		if (account == null) {
			System.out.println("계좌가 존재하지 않습니다.");
			return;
		}
		if (!account.getAno().equals(accountNum)) {
			System.out.println("계좌번호를 잘못 입력하셨습니다.");
			return;
		}
		if (account.getBalance() == 0 || account.getBalance() < accountBal || account.getBalance() - accountBal < 0) {
			System.out.println("잔액이 부족합니다.");
			return;
		}

		account.setBalance(account.getBalance() - accountBal);
		System.out.println("출금이 성공되었습니다.");

	}

	private static Account findAccount(String ano) {

		Account account = null;

		for (int i = 0; i < accountArray.length; i++) {
			if (accountArray[i] != null) {
				String accountNum = accountArray[i].getAno();
				if (accountNum.equals(ano)) {
					account = accountArray[i];
					break;
				}
			}

		}
		return account;
	}

}
