package com.example.controller;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class CHat {
    private static final String BOT_NAME = "ChatBot";
    private static final String HANDOFF_MESSAGE = "Connecting you to a human operator...";
    private static final String EMAIL_SUBJECT = "ChatBot Notification";
    private static final String EMAIL_BODY = "A human operator is needed to assist with a chat.";
    private static final String CHAT_HISTORY_FILE = "chat_history.txt";
    private static final String SMTP_PORT = "587";


    private static List<String> chatHistory = new ArrayList<>();

    public static void main(String[] args) {
        // Welcome message
        Scanner scanner = new Scanner(System.in);

        System.out.println("Welcome to " + BOT_NAME + "! How can I assist you today?");

        // Loop to keep the conversation going
        while (true) {
            // Read user input
//            String userInput = System.console().readLine();
            String userInput =scanner.nextLine().trim();


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
                
                // Send notification email
                sendNotificationEmail();
                shouldHandoff();

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
    }

    private static boolean shouldHandoff() {
        // Check if it's time to hand off to a human operator
        // This can be based on a specific trigger or a random
        // time interval
        return false;
    }

    private static void sendNotificationEmail() {
        // Code to send notification email
        String from = "@gmail.com";
        String to = "@gmail.com";
        String host = "smtp.gmail.com";
        String username = "@gmail.com";
        String password = "aoogfdojeoiyopj00";

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