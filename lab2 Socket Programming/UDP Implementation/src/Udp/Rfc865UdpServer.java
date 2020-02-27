package Udp;
import java.net.*;
import java.io.*;

public class Rfc865UdpServer {
	public static void main(String[] argv) {
		//
		// 1. Open UDP socket at well-known port 17 for QOTD service
		//
		// static DatagramSocket socket;
		DatagramSocket socket = null;

		try {
			socket = new DatagramSocket(17);
		} catch (SocketException e) {
			e.printStackTrace();
			System.exit(-1);
		}

		////////////////////////////////////////////////////////////////
		while (true) {
			try {
				// 2. Listen for UDP request from client
				byte[] buffer = new byte[512];
				DatagramPacket request = new DatagramPacket(buffer,buffer.length);
				socket.receive(request);

				//debug print
				System.out.println("Received Request");

				//convert from bytestream to String
				String ClientData = new String(buffer,0,request.getLength());
				System.out.println("Data: " + ClientData);

				//record down the ip of client for reply
				InetAddress clientAddr = request.getAddress();
				int clientPort = request.getPort();
				System.out.println("Client Address = " + clientAddr);

				//////////////////////////////////////////////////////////

				//
				// 3. Send UDP reply to client
				//
				//enter qotd here and pack up before sending to user
				buffer = "Hello World! Message Received".getBytes();
				DatagramPacket reply = new DatagramPacket(buffer,buffer.length,clientAddr,clientPort);
				socket.send(reply);
				System.out.println("Sent Reply");
				//break;
			} catch (IOException e) {
				System.out.println("Server error: " + e.getMessage());
				socket.close();
			}
	}
}
}