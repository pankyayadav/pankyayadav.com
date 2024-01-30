package com.example.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class ChatServer {
    private ServerSocket serverSocket;
    private Socket clientSocket;
    private PrintWriter out;
    private BufferedReader in;

    public void start(int port) throws IOException {
        serverSocket = new ServerSocket(port);
        System.out.println("Server started. Listening on port " + port);

        clientSocket = serverSocket.accept();
        System.out.println("Client connected: " + clientSocket.getInetAddress().getHostName());

        out = new PrintWriter(clientSocket.getOutputStream(), true);
        in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

        startChat();
    }

    private void startChat() throws IOException {
        String inputLine;

        // Read messages from the client and respond
        while ((inputLine = in.readLine()) != null) {
            System.out.println("Client: " + inputLine);
            out.println("Server: " + inputLine);

            if (inputLine.equalsIgnoreCase("bye")) {
                break;
            }
        }
    }

    public void stop() throws IOException {
        in.close();
        out.close();
        clientSocket.close();
        serverSocket.close();
    }

    public static void main(String[] args) {
        int port = 12345; // Choose a suitable port number

        ChatServer server = new ChatServer();
        try {
            server.start(port);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
