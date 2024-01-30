package com.example.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Scanner;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Demo {
	
	private static List<String> chatHistory = new ArrayList<>();
	private static final String BOT_NAME = "Sulochana enterprises";
    private static final String HANDOFF_MESSAGE = "Connecting you to a human operator...";
    private static final String EMAIL_SUBJECT = "ChatBot Notification";
    private static final String EMAIL_BODY = "A human operator is needed to assist with a chat.";
    private static final String CHAT_HISTORY_FILE = "chat_history.txt";
    private static final String SMTP_PORT = "587";
    private static String lastBotResponse = "";


	@RequestMapping(value="/home",method = RequestMethod.GET)
	public String hello() {
		return "home";
	}
	
//	@RequestMapping(value="/about",method = RequestMethod.GET)
//	public String about() {
//		return "about";
//	}
	
	
	@RequestMapping(value="/Chat",method = RequestMethod.POST)

    public void chat (HttpServletRequest req,HttpServletResponse response) throws IOException {
		
		
        String userInput = req.getParameter("userInput");
        System.out.println("Input " + userInput);
        String botResponse = "";
        if(lastBotResponse.contains("Do you want to proceed with the handoff? (yes/no)")) {
        	botResponse = shouldHandoff(userInput);
        }else if(lastBotResponse.contains("Please enter your name .....")) {
        	botResponse = "Welcome to sulochana enterprises"+" "+userInput;
        }
        else {
        botResponse = getResponse(userInput);
        }
        
        lastBotResponse = botResponse;
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.write(botResponse);
        out.close();
	}
	
    private static String getResponse(String userInput) {
        String response;
        
        // Add your own logic to generate appropriate responses based on user input
        if (userInput.contains("hello") || userInput.contains("hii") ||userInput.contains("Hii")) {
//            response = "Hello! How can I help you?";
        	response = "Welcome to " + BOT_NAME + "! How can I assist you today?";
        	response += "Do you want to proceed with the handoff? (yes/no)";
//        	shouldHandoff(userInput);
        } else if (userInput.contains("how are you")) {
            response = "I'm doing well, thank you!";
        } else if (userInput.contains("bye")) {
            response = "Goodbye!";
        } else {
            response = "I'm sorry, I didn't understand. Can you please rephrase?";
        }
        
        return response;
    }

		
	
	@RequestMapping(value="/Chat1",method = RequestMethod.POST)

    public String chat1 (HttpServletRequest req,HttpServletResponse response) throws IOException {
        // Welcome message
		PrintWriter out = response.getWriter();

        Scanner scanner = new Scanner(System.in);

        System.out.println("Welcome to " + BOT_NAME + "! How can I assist you today?");

        // Loop to keep the conversation going
        while (true) {
            // Read user input
        	String userInput = req.getParameter("msg");
//            String userInput = System.console().readLine();
//            String userInput =scanner.nextLine().trim();


            // Check if user wants to exit
            if (userInput.equalsIgnoreCase("exit")) {
                System.out.println("Thank you for chatting with " + BOT_NAME + "! Goodbye!");

                // Write chat history to file
//                writeChatHistoryToFile();

                break;
            }

            // Check if it's time to hand off to a human operator
//            if(System.currentTimeMillis()==8000) {
            if (!userInput.isEmpty()) {

                System.out.println(HANDOFF_MESSAGE);
                out.print(HANDOFF_MESSAGE);
                // Send notification email
//                sendNotificationEmail();
//                shouldHandoff();

                // Wait for response from human operator
                waitForHumanOperatorResponse();

                break;
            }
//            }

            // Process user input and generate bot response
            String botResponse = generateResponse(userInput);

            // Print bot response
            System.out.println(BOT_NAME + ": " + botResponse);

            // Add chat to history
//            addToChatHistory(BOT_NAME, botResponse);

            // Wait for a few seconds before the next message
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        scanner.close();
		return "home";
    }

	private String shouldHandoff(String userInput) {
//    private static boolean shouldHandoff(String userInput) {
        	String response = "";
    	if (userInput.equals("yes")) {
            response = "Please enter your name .....";
        } else if (userInput.equals("no")) {
            response = "No data found ... ";
        } else {
        	response= "Invalid response. Please try again.";
        }
    	
        return response;
    }

    private static void sendNotificationEmail() {
        // Code to send notification email
        String from = "ruppellsairlines57@gmail.com";
        String to = "pankaj572001@gmail.com";
        String host = "smtp.gmail.com";
        String username = "ruppellsairlines57@gmail.com";
        String password = "vmnaohsxntdbyugu";

        Properties properties = System.getProperties();
        properties.setProperty("mail.smtp.host", host);
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.smtp.port", SMTP_PORT);
        properties.put("mail.smtp.starttls.enable", "true");


        Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };

        Session session = Session.getInstance(properties, authenticator);

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(EMAIL_SUBJECT);
            message.setText(EMAIL_BODY);

            Transport.send(message);
            System.out.println("Notification email sent successfully!");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    private static void waitForHumanOperatorResponse() {
        // Code to wait for response from human operator
        // This can be through a chat API or a notification system
    }

    private static String generateResponse(String userInput) {
        // Code to generate bot response based on user input
        return "I'm sorry, I didn't understand. Can you please re";
}
}
