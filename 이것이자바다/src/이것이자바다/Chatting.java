package 이것이자바다;

public class Chatting {
	void startChat(String chatId) {
		String nickName = null;
		nickName = chatId;  //(X) 
		//변경 --> String nickName = chatId;
		
		Chat chat = new Chat() {
			
			@Override
			public void start() {
				while(true) {
					String inputDate = "안녕하세요";
					String message = "[" + nickName + "]" + inputDate;
					//nickName은 final로 선언된 상수라 chatId로 초기화가 불가능하다.
					//null도 하나의 값으로 인식하기 때문.
					sendMessage(message);
				}
			}
		};
		chat.start();
	}
	
	class Chat{
		void start() {}
		void sendMessage(String message) {}
	}

}
