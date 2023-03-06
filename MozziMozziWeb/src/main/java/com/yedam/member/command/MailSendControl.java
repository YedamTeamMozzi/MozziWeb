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

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;

public class MailSendControl implements Command {

	@SuppressWarnings("null")
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("userName");
		String email = req.getParameter("userEmail");


		MemberService service = new MemberServiceImpl();

		int mailCheck = service.emailCheck(email);
		// fId 가 뭔가를 반환받았다면(즉, 아이디를 받환받았다면)
		if (mailCheck > 2 ) {

			return "{ \"retCode\" : \"Fail\" }.json";
		} else {
			final String fromEmail = "xkq5533@gmail.com"; // replace with your email
			final String password = "rpukfopxaadakfcp"; // replace with your email password
			final String toEmail = email;

			////////////////////////////////////////////////////////////////////////////////////////////

			Properties props = System.getProperties();
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
			req.setAttribute("checkCode", check);
			Session session = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromEmail, password);
				}
			});
			try {
				MimeMessage msg = new MimeMessage(session);
				msg.setFrom(new InternetAddress(fromEmail, "MozziMozzi"));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
				
				// 메일이 보내는 형식 국내에서 사용하는 UTF-8 설정
				msg.setHeader("Content-type", "text/html; charset=UTF-8");
				
				// 메일 제목
				msg.setSubject("MozziMozzi 쇼핑몰 회원가입 인증번호", "UTF-8");
				
				// 메일 내용 (바디)
				msg.setContent("안녕하세요, " + name + " 회원님의 인증번호는 : " 
				                + check + " 입니다.", "text/html; charset=UTF-8");

				Transport.send(msg);

				return "{ \"retCode\" : \"Success\" , \"emailNumber\" : \"" + check + "\"}.json";
			} catch (Exception e) {
				e.printStackTrace();
				return "member/login.tiles";
			}
		}
	}

}
