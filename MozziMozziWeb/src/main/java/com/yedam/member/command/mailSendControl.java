package com.yedam.member.command;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class mailSendControl implements Command {

	@SuppressWarnings("null")
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("user_name");
		String email_start = req.getParameter("user_email");
		String email_end = req.getParameter("user_email_end");

		String email = email_start + email_end;
		MemberService service = new MemberServiceImpl();

		MemberVO mailCheck = service.emailCheck(email);

		// fId 가 뭔가를 반환받았다면(즉, 아이디를 받환받았다면)
		if (mailCheck != null) {
			// 에러 메시지 출력 후 다시 findIdForm화면으로
			// req.setAttribute("error", "해당하는 계정이 없는데요");
//	         HttpSession session = req.getSession();
//	         session.setAttribute("error", "해당하는 계정이 없는데요");

			return "{ \"retCode\" : \"Fail\" }.json";
		}

		final String fromEmail = "choihyunsuk177@gmail.com"; // replace with your email
		final String password = "xixlogutumptfyjh"; // replace with your email password

		final String toEmail = email;

		////////////////////////////////////////////////////////////////////////////////////////////

		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com"); // for gmail
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");

		////////////////////////////////////////////////////////////////////////////////////////////

		// 인증 번호 생성기
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();

		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}

		String check = temp.toString();
		mailCheck.setEmailCheck("ok");
		

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(fromEmail, password);
			}
		});
		HttpSession ssion = req.getSession();
		ssion.setAttribute("checkCode", check);
		
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(fromEmail, "MozziMozzi"));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

			// 메일 제목
			msg.setSubject("MozziMozzi 쇼핑몰 회원가입 인증번호");
			// 메일 내용 (바디)
			msg.setText("안녕하세요, " + name + "님.\n회원님의 인증번호는 :  " + check + " 입니다.");

			Transport.send(msg);
			System.out.println("이메일 전송 완료!");

			return "{ \"retCode\" : \"Success\" }.json";
		} catch (Exception e) {
			e.printStackTrace();
			return "이메일 전송 실패";
		}

	}

}
