package Udp;
import java.io.*;
import java.net.*;

public class Rfc865UdpClient {
	public static void main(String[] argv) throws UnknownHostException {
	//
	// 1. Open UDP socket
	//
	DatagramSocket socket = null;

	try {
	socket = new DatagramSocket();
	//Connect to the Server
	InetAddress serverAddress = InetAddress.getByName("localhost");
	socket.connect(serverAddress, 17);
	System.out.println("Connecting to Server: "+serverAddress);
	} 

	catch (SocketException e) {
		System.out.println("Socket error: " + e.getMessage());
	}

	catch (UnknownHostException e){
		e.printStackTrace();
		System.exit(-1);
	}

		
	try {
		//
		// 2. Send UDP request to server
		//
		InetAddress serverAddress = InetAddress.getByName("localhost");
		//Ipv4 address of the client
		InetAddress clientAddress = InetAddress.getByName("localhost");
		System.out.println("Sending Datagram to Server: "+serverAddress);

		//byte[] buf = "Hu Wanyu, TS5, <>".getBytes("UTF-8");
		
		byte[] buffer = ((String)("Information content from "+ clientAddress)).getBytes();
		DatagramPacket request = new DatagramPacket(buffer, buffer.length,serverAddress, 17);
		socket.send(request);

		//
		// 3. Receive UDP reply from server
		//
		//Create a buffer to store received messages
		buffer = new byte[512];
		DatagramPacket reply = new DatagramPacket(buffer,buffer.length);
		socket.receive(reply);

		//Decode from byte to String
		String quote = new String(buffer, 0, reply.getLength());
		System.out.println(quote);
	} 
	catch (IOException e) {
		System.out.println("Client error: " + e.getMessage());
		e.printStackTrace();
	}

	System.out.println("Disconnecting...");
	socket.disconnect();
	socket.close();
	}
}
