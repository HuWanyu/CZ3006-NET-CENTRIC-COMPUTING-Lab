package Udp;
import java.io.*;
import java.net.*;

//Name: Hu Wanyu
//Group: TS5
//IP Address: 172.21.148.66

public class Rfc865UdpClient {
	public static void main(String[] argv) throws UnknownHostException {
	// 1. Open UDP socket
	DatagramSocket socket = null;
	try {
		socket = new DatagramSocket();
		//Connect to the Server
		InetAddress serverAddress = InetAddress.getByName("SWL2-RM1-vL01");
		socket.connect(serverAddress, 17);
		System.out.println("Connecting to Server: "+serverAddress);
	}

	catch (SocketException e) {
		e.printStackTrace();
		System.exit(-1);
	}

	catch (UnknownHostException e){
		e.printStackTrace();
		System.exit(-1);
	}


	try {

		// 2. Send UDP request to server
		//my Client IP Address: 172.21.148.66
		byte[] buf = "Hu Wanyu, TS5, <172.21.148.66>".getBytes("UTF-8");
		DatagramPacket request = new DatagramPacket(buf, buf.length);
		socket.send(request);


		// 3. Receive UDP reply from server

		//Create a buffer to store received messages
		byte[] replybuffer = new byte[512];
		DatagramPacket reply = new DatagramPacket(replybuffer,replybuffer.length);
		socket.receive(reply);

		//Decode from byte to String
		String quote = new String(replybuffer);
		System.out.println(quote);
	}
	catch (UnsupportedEncodingException e){
		e.printStackTrace();
	}
	catch (IOException e) {
		e.printStackTrace();
	}

	System.out.println("Disconnecting...");
	socket.disconnect();
	socket.close();
	}
}
