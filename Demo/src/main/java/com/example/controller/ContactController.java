package com.example.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.util.Properties;

@Controller
public class ContactController {
	
//	 @Autowired
//	 private MailSender mailSender;

	@RequestMapping(value="/contact",method = RequestMethod.GET)
	public String about() {
		return "contact";
	}
	
	@RequestMapping(value="/Mail",method = RequestMethod.POST)
//	public String mail(@RequestParam String name,@RequestParam String email,@RequestParam String subject,@RequestParam String message) {
	public String mail(HttpServletRequest request,HttpServletResponse response) {
		
		try {
			String Name = request.getParameter("name");
			String email = request.getParameter("email");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
			System.out.println("In Controller >: " + email);
//			SimpleMailMessage mailMessage = new SimpleMailMessage();
//			mailMessage.setTo("ruppellsairlines57@gmail.com");
//			mailMessage.setSubject(subject);
//			mailMessage.setText(Name + " " + message);
//			mailMessage.setFrom(email);
////	         
////	        // sends the e-mail
//	        mailSender.send(mailMessage);
			
//	        Properties properties = System.getProperties();
//	        properties.setProperty("mail.smtp.host", "smtp.gmail.com");

	        // Create a session without an authenticator
//	        Session session = Session.getInstance(properties);
			
			Properties props = System.getProperties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");

	        // Create a session with an authenticator
	        Session session = Session.getInstance(props, new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("ruppellsairlines57@gmail.com", "fbwb vywv wwrx adpb");
	            }
	        });

	        try {
	            // Create a MimeMessage
	            MimeMessage emailMessage = new MimeMessage(session);
	            emailMessage.setFrom(new InternetAddress(email));
	            emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress("pankaj25665@gmail.com"));
	            emailMessage.setSubject(subject);
	            emailMessage.setText(message);

	            // Send the email
	            System.out.println("Testststs ");
	            Transport.send(emailMessage);

	            response.setStatus(HttpServletResponse.SC_OK);
	        } catch (MessagingException e) {
	            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Email could not be sent: " + e.getMessage());
	        }

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "contact";
	}
}
