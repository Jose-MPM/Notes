# Pre-Security

## What is networking?

What is the key term for devices that are connected together? Network
Networks are simply things connected. 

* What is the internet?
	- The Internet is one giant-gigante network that consists of many, many small networks within itself. 
		- muchisimas redes pequeñas dentro de sí misma.
	-  network can be one of two types:
		- A private network
    	- A public network
* Identifying Devices on a Network
	- To communicate and maintain order, devices must be both identifying and identifiable on a network.
	- Devices on a network are very similar to humans in the fact that we have two ways of being identified:
	    - Our Name
	    - Our Fingerprints
	-  Devices have the same thing: two means of identification, with one being permeable.
		- An IP Address
			-  An IP address (or Internet Protocol) address can be used as a way of identifying a host on a network for a period of time, where that IP address can then be associated with another device without the IP address changing. 
			- An IP address is a set of numbers that are divided into four octets. The value of each octet will summarise to be the IP address of the device on the network. This number is calculated through a technique known as IP addressing & subnetting
			- IP Addresses follow a set of standards known as protocols. These protocols are the backbone of networking and force many devices to communicate in the same language
			- A public address is used to identify the device on the Internet, whereas a private address is used to identify a device amongst other devices. 
			- These two devices(in the same private network) will be able to use their private IP addresses to communicate with each other. However, any data sent to the Internet from either of these devices will be identified by the same public IP address. Public IP addresses are given by your Internet Service Provider (or ISP) at a monthly fee (your bill!)
    	- A Media Access Control (MAC) Address -- think of this as being similar to a serial number.
    		- Devices on a network will all have a physical network interface, which is a microchip board found on the device's motherboard. This network interface is assigned a unique address at the factory it was built at, called a MAC (Media Access Control ) address. The MAC address is a twelve-character hexadecimal number split into two's and separated by a colon. 
- ping: Ping is one of the most fundamental network tools available to us. Ping uses ICMP (Internet Control Message Protocol) packets to determine the performance of a connection between devices, for example, if the connection exists or is reliable.

## Intro to LAN-Local Area Network

There has been experimentation and implementation of various network designs.  In reference to networking, when we refer to the term "topology", we are actually referring to the design or look of the network at hand.

* subnetting:  Networks can be found in all shapes and sizes - ranging from small to large. Subnetting is the term given to splitting up a network into smaller, miniature networks within itself. 
	- Whilst you know where to send information in real life to the correct department, networks need to know as well. Network administrators use subnetting to categorise and assign specific parts of a network to reflect this.
	- Subnetting is achieved by splitting up the number of hosts that can fit within the network, represented by a number called a subnet mask.
	- As we can recall, an IP address is made up of four sections called octets. The same goes for a subnet mask which is also represented as a number of four bytes 	
	- Subnets use IP addresses in three different ways:
	    - Identify the network address
	    	- purpose: This address identifies the start of the actual network and is used to identify a network's existence.
	    	- explanation: For example, a device with the IP address of 192.168.1.100 will be on the network identified by 192.168.1.0
	    	- example: 192.168.1.0
	    - Identify the host address
	    	- purpose: An IP address here is used to identify a device on the subnet
	    	- explanation: For example, a device will have the network address of 192.168.1.1
	    	- example: 192.168.1.100
	    - Identify the default gateway
	    	- purpose: The default gateway address is a special address assigned to a device on the network that is capable of sending information to another network 
	    	- explanation: Any data that needs to go to a device that isn't on the same network (i.e. isn't on 192.168.1.0) will be sent to this device. These devices can use any host address but usually use either the first or last host address in a network (.1 or .254)
	    	- example: 192.168.1.254

	    - Subnetting provides a range of benefits, including:
		    - Efficiency
		    - Security
		    - Full control
* ARP Protocol
	- the ARP protocol or Address Resolution Protocol for short, is the technology that is responsible for allowing devices to identify themselves on a network.
	- the ARP protocol allows a device to associate its MAC address with an IP address on the network. Each device on a network will keep a log of the MAC addresses associated with other devices.
	- When devices wish to communicate with another, they will send a broadcast to the entire network searching for the specific device. Devices can use the ARP protocol to find the MAC address (and therefore the physical identifier) of a device for communication.
	- Each device within a network has a ledger to store information on, which is called a cache. In the context of the ARP protocol, this cache stores the identifiers of other devices on the network.
		- In order to map these two identifiers together (IP address and MAC address), the ARP protocol sends two types of messages:
			- ARP Request
		    - ARP Reply
		- When an ARP request is sent, a message is broadcasted to every other device found on a network by the device, asking whether or not the device's MAC address matches the requested IP address. If the device does have the requested IP address, an ARP reply is returned to the initial device to acknowledge this. The initial device will now remember this and store it within its cache (an ARP entry). 
* DHCP Protocol

## OSI Model

The OSI model (or Open Systems Interconnection Model) is an absolute-ABSOLUTAMENTE fundamental model used in networking.  This critical model provides a framework-marco dictating how all networked devices will send, receive and interpret data.

One of the main benefits of the OSI model is that devices can have different functions and designs on a network while communicating with other devices. Data sent across a network that follows the uniformity of the OSI model can be understood by other devices.

At every individual layer that data travels through, specific processes take place, and pieces of information are added to this data. However, for now, we only need to understand that this process is called encapsulation.

1. Application: layer 7
	- The application layer of the OSI model is the layer that you will be most familiar with. This familiarity is because the application layer is the layer in which protocols and rules are in place to determine how the user should interact with data sent or received.
	- Everyday applications such as email clients, browsers, or file server browsing software such as FileZilla provide a friendly, Graphical User Interface (GUI) for users to interact with data sent or received. Other protocols include DNS (Domain Name System), which is how website addresses are translated into IP addresses.
2. Presentation: layer 6
	- Layer 6 of the OSI model is the layer in which standardisation starts to take place. Because software developers can develop any software such as an email client differently, the data still needs to be handled in the same way — no matter how the software works.
	- This layer acts as a translator for data to(hacia) and from-desde the application layer (layer 7). The receiving computer will also understand data sent to a computer in one format destined for in another format. For example, when you send an email, the other user may have another email client to you, but the contents of the email will still need to display the same.
	- Security features such as data encryption (like HTTPS when visiting a secure site) occur at this layer.
3. Session-layer 5
	- Once data has been correctly translated or formatted from the presentation layer (layer 6), the session layer (layer 5) will begin to create a connection to the other computer that the data is destined for. When a connection is established, a session is created. Whilst this connection is active, so is the session.

	- The session layer (layer 5) synchronises the two computers to ensure that they are on the same page before data is sent and received. Once these checks are in place, the session layer will begin to divide up the data sent into smaller chunks of data and begin to send these chunks (packets) one at a time. This dividing up is beneficial because if the connection is lost, only the chunks that weren't yet sent will have to be sent again — not the entire piece of the data (think of it as loading a save file in a video game).

	- What is worthy of noting is that sessions are unique — meaning that data cannot travel over different sessions, but in fact, only across each session instead.
4. Transport - layer 4
	- Layer 4 of the OSI model plays a vital part in transmitting data across a network and can be a little bit difficult to grasp. When data is sent between devices, it follows one of two different protocols that are decided based upon several factors:
		- TCP
			- Let's begin with TCP. The Transmission Control Protocol (TCP). Potentially hinted by the name, this protocol is designed with reliability and guarantee in mind. This protocol reserves a constant connection between the two devices for the amount of time it takes for the data to be sent and received.
				- Not only this, but TCP incorporates error checking into its design. Error checking is how TCP can guarantee that data sent from the small chunks in the session layer (layer 5) has then been received and reassembled in the same order.
			- advantages and disadvantages of TCP
				- advantages:
					- Capable of synchronising two devices to prevent each other from being flooded with data.
						-  para evitar que el otro se inunde de datos.
					- Performs a lot more processes for reliability.
						- fiabilidad
					- Guarantees the accuracy of data.
				- disadvantages:
					- Requires a reliable connection between the two devices. If one small chunk of data is not received, then the entire chunk of data cannot be used.
					- A slow connection can bottleneck another device as the connection will be reserved on the receiving computer the whole time.
					- TCP is significantly slower than UDP because more work has to be done by the devices using this protocol.
			- uses:
				- TCP is used for situations such as file sharing, internet browsing or sending an email. This usage is because these services require the data to be accurate and complete (no good having half a file!).
		- UDP:
			-  User Datagram Protocol: This protocol is not nearly as advanced as its brother - the TCP protocol. It doesn't boast the many features offered by TCP, such as error checking and reliability. In fact, any data that gets sent via UDP is sent to the computer whether it gets there or not. There is no synchronisation between the two devices or guarantee; just hope for the best, and fingers crossed.
				- Advantages of UDP	Disadvantages of UDP
					- advantages:
						- UDP is much faster than TCP.
						- UDP leaves the application layer (user software) to decide if there is any control over  how quickly packets are sent.
						- UDP does not reserve a continuous connection on a device as TCP does.
					- disadvantages:	
						- UDP doesn't care if the data is received.
						- It is quite flexible to software developers in this sense.
						- This means that unstable connections result in a terrible experience for the user.
			- uses: UDP is useful in situations where there are small pieces of data being sent. For example, protocols used for discovering devices (ARP and DHCP that we discussed in Room 2 - Intro to LAN) or larger files such as video streaming (where it is okay if some part of the video is pixelated. Pixels are just lost pieces of data!)
5. Network-layer 3
	- The third layer of the OSI model (network layer) is where the magic of routing & re-assembly of data takes place (from these small chunks to the larger chunk). Firstly, routing simply determines the most optimal path in which these chunks of data should be sent.
	- Whilst some protocols at this layer determine exactly what is the "optimal" path that data should take to reach a device, we should only know about their existence at this stage of the networking module. Briefly, these protocols include OSPF (**Open Shortest Path First**) and RIP (**Routing Information Protocol**). The factors that decide what route is taken is decided by the following:
		- What path is the shortest? I.e. has the least amount of devices that the packet needs to travel across.
	    - What path is the most reliable? I.e. have packets been lost on that path before?
	    - Which path has the faster physical connection? I.e. is one path using a copper connection (slower) or a fibre (considerably faster)?
	- At this layer, everything is dealt with via IP addresses such as 192.168.1.100. Devices such as routers capable of delivering packets using IP addresses are known as Layer 3 devices — because they are capable of working at the third layer of the OSI model.
6. Data Link - layer 2
	- The data link layer focuses on the physical addressing of the transmission. It receives a packet from the network layer (including the IP address for the remote computer) and adds in the physical MAC (Media Access Control) address of the receiving endpoint. Inside every network-enabled computer is a Network Interface Card (NIC) which comes with a unique MAC address to identify it.
	- MAC addresses are set by the manufacturer and literally burnt into the card; they can't be changed -- although they can be spoofed. When information is sent across a network, it's actually the physical address that is used to identify where exactly to send the information.
	- Additionally, it's also the job of the data link layer to present the data in a format suitable for transmission.
7. Physical: This layer is one of the easiest layers to grasp. Put simply, this layer references the physical components of the hardware used in networking and is the lowest layer that you will find. Devices use electrical signals to transfer data between each other in a binary numbering system (1's and 0's).


## New Words
- bottleneck-obstaculo
- reliable-confiable-fiable
- reliability-fiabilidad
- grasp-comprender
- chunks-trozos
- What is worthy-digno of noting-lo que vale la pena notar
- recall-recordar
- fairly-bastante
- reliability-fiabilidad
- Whlist-aunque
- whereas-mientras que
- gathering-recuperación
- delivering electricity- suministro de energía
- embedded-integrado
- grasp-comprender
- force-obligan


##