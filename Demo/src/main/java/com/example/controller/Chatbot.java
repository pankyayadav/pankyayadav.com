////package com.example.controller;
////
////import java.util.Scanner;
////import org.alicebot.ab.Bot;
////import org.alicebot.ab.Magic;
////
////public class Chatbot {
////
////    private Scanner scanner;
////    private Bot bot;
////
////    public Chatbot() {
////        scanner = new Scanner(System.in);
////        bot = new Bot();
////        bot.setAIMLDirectory("./aiml");
////        bot.startup();
////    }
////
////    public void start() {
////        System.out.println("Welcome to the chatbot!");
////        while (true) {
////            System.out.print("What would you like to say? ");
////            String input = scanner.nextLine();
////            if (input.equals("quit")) {
////                break;
////            }
////            String response = bot.respond(input);
////            System.out.println("The chatbot says: " + response);
////        }
////    }
////
////    public static void main(String[] args) {
////        Chatbot chatbot = new Chatbot();
////        chatbot.start();
////    }
////}
//
//import org.alicebot.ab.Bot;
//import org.alicebot.ab.Chat;
//import org.alicebot.ab.MagicBooleans;
//import org.alicebot.ab.MagicStrings;
//
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//
//public class Chatbot {
//    private static final boolean TRACE_MODE = false;
//    private static final String BOT_NAME = "super";
//    private static final String AIML_FILE = "aiml/standard.aiml";
//
//    public static void main(String[] args) {
//        try {
//            String resourcesPath = getResourcesPath();
//            MagicBooleans.trace_mode = TRACE_MODE;
//            Bot bot = new Bot(BOT_NAME, resourcesPath);
//            Chat chat = new Chat(bot);
//            bot.brain.nodeStats();
//            String textLine = "";
//
//            while (!textLine.equalsIgnoreCase("bye")) {
//                System.out.print("User: ");
//                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
//                textLine = bufferedReader.readLine();
//                if (textLine.isEmpty()) {
//                    textLine = MagicStrings.null_input;
//                }
//                if (textLine.equalsIgnoreCase("q")) {
//                    System.exit(0);
//                }
//                String response = chat.multisentenceRespond(textLine);
//                System.out.println("Bot: " + response);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//    private static String getResourcesPath() {
//        String path = Chatbot.class.getResource("").getPath();
//        return path.substring(1, path.length() - "ChatBot/".length()) + "program-ab-0.0.4.3/";
//    }
//}
