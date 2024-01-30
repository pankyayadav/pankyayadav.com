package com.example.controller;
//
//import com.google.api.client.auth.oauth2.Credential;
//import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
//import com.google.api.client.json.JsonFactory;
//import com.google.api.client.json.JsonFactory;
//import com.google.api.client.json.jackson2.JacksonFactory;
//import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
//import com.google.api.client.extensions.java6.auth.oauth2.FileDataStoreFactory;
//import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
//import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
//import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
//
//import java.util.Properties;
//
//import javax.mail.*;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//
//public class sendMail {
//    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();
//
//    public static void main(String[] args) throws Exception {
//        // Set up Gmail API client and OAuth 2.0 authorization
//
//        // Send an email using Gmail SMTP server
//        sendEmail("your_email@gmail.com", "Recipient's Email", "Subject", "Message");
//    }
//
//    private static void sendEmail(String from, String to, String subject, String message) throws Exception {
//        // Create and configure a MimeMessage
//        Properties props = new Properties();
//        Session session = Session.getDefaultInstance(props, null);
//
//        Message email = new MimeMessage(session);
//        email.setFrom(new InternetAddress(from));
//        email.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
//        email.setSubject(subject);
//        email.setText(message);
//
//        // Send the email
//        Transport.send(email);
//    }
//}

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class sendMail {
	
	public static void main(String[] args) {
		
	    System.out.println("SimpleEmail Start");
		
	    String smtpHostServer = "smtp.gmail.com";
	    String emailID = "pankaj572001@gmail.com";
	    
	    Properties props = System.getProperties();

	    props.put("mail.smtp.host", smtpHostServer);

	    Session session = Session.getInstance(props, null);
	    
	    sendMail.sendEmail(session, emailID,"SimpleEmail Testing Subject", "SimpleEmail Testing Body");
	}
	
	public static void sendEmail(Session session, String toEmail, String subject, String body){
		try
	    {
	      MimeMessage msg = new MimeMessage(session);
	      //set message headers
	      msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
	      msg.addHeader("format", "flowed");
	      msg.addHeader("Content-Transfer-Encoding", "8bit");

	      msg.setFrom(new InternetAddress("ruppellsairlines57@gmail.com", "omwr mgzb xpjp uhqj"));

	      msg.setReplyTo(InternetAddress.parse("pankaj572001@gmail.com", false));

	      msg.setSubject(subject, "UTF-8");

	      msg.setText(body, "UTF-8");

	      msg.setSentDate(new Date());

	      msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
	      System.out.println("Message is ready");
    	  Transport.send(msg);  

	      System.out.println("EMail Sent Successfully!!");
	    }
	    catch (Exception e) {
	      e.printStackTrace();
	    }
	}
}


