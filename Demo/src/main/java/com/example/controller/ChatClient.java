package com.example.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

public class ChatClient {
    private Socket socket;
    private PrintWriter out;
    private BufferedReader in;

    public void start(String serverAddress, int port) throws IOException {
        socket = new Socket(serverAddress, port);
        System.out.println("Connected to server: " + socket.getInetAddress().getHostName());

        out = new PrintWriter(socket.getOutputStream(), true);
        in = new BufferedReader(new InputStreamReader(socket.getInputStream()));

        startChat();
    }

    private void startChat() throws IOException {
        BufferedReader stdIn = new BufferedReader(new InputStreamReader(System.in));
        String userInput;

        // Read messages from the console and send them to the server
        while ((userInput = stdIn.readLine()) != null) {
            out.println(userInput);

            String response = in.readLine();
            System.out.println("Server: " + response);

            if (userInput.equalsIgnoreCase("bye")) {
                break;
            }
        }
    }

    public void stop() throws IOException {
        in.close();
        out.close();
        socket.close();
    }

    public static void main(String[] args) {
        String serverAddress = "192.168.0.106"; // Replace with the server IP address
        int port = 12345; // Use the same port number as the server

        ChatClient client = new ChatClient();
        try {
            client.start(serverAddress, port);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
