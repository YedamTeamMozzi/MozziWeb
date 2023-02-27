<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.*" %>
    <%@ page import="javax.activation.*" %>
      <%@ page import="javax.mail.*" %>
        <%@ page import="javax.mail.internet.*" %>
          <% request.setCharacterEncoding("UTF-8"); %>
            <% 
            // SMTP 서버 주소
            String smtpHost="125.185.230.141" ;
            
            //받는 사람의 정보
            String toName="${idFindInfo.name}"; 
            String toEmail="${idFindInfo.email}";
            
            //보내는 사람의 정보 
            String fromName="최현석" ;
            String fromEmail="choihyunsuk177@gmail.com"; 
            try { 
            	Properties props=new Properties();
              	props.put("mail.smtp.host", smtpHost);
              	Session sess=Session.getDefaultInstance(props, null);
              	InternetAddress addr=new InternetAddress();
              	addr.setPersonal(fromName,"UTF-8");
              	addr.setAddress(fromEmail); 
              	
              	// create a message 
              	Message msg=new MimeMessage(sess);
              	msg.setFrom(addr);
              	msg.setSubject(MimeUtility.encodeText("${idFindInfo.name}의 ID 정보", "utf-8" ,"B"));
              	msg.setContent("${idFindInfo.name}의 아이디는 ${idFindInfo.email}", "text/html;charset=utf-8" );
              	msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
              	Transport.send(msg);
              } catch (Exception e) {
              	e.printStackTrace();
              	out.println("<script>alert('메일전송이 실패하였습니다.');location.href='idFind.do';</script>");
              }
              out.println("<script>alert('메일이 전송되었습니다.'); location.href = 'login.do';</script>");
              %>