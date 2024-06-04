# Introduction to Cyber Security

## Intro to Offensive Security

Offensive security is the process of breaking into computer systems, exploiting software bugs, and finding loopholes in applications to gain unauthorized access to them.

To beat a hacker, you need to behave like a hacker, finding vulnerabilities and recommending patches before a cybercriminal does, as you'll do in this room!

On the flip side, there is also defensive security, which is the process of protecting an organization's network and computer systems by analyzing and securing any potential digital threats; learn more in the digital forensics room.

In a defensive cyber role, you could be investigating infected computers or devices to understand how it was hacked, tracking down cybercriminals, or monitoring infrastructure for malicious activity.

* We will use a command-line application called "GoBuster" to brute-force FakeBank's website to find hidden directories and pages. GoBuster will take a list of potential page or directory names and tries accessing a website with each of them; if the page exists, it tells you.
	- since a terminal execute:
		- In the command above, -u is used to state the website we're scanning, -w takes a list of words to iterate through to find hidden pages.
			- gobuster -u http://fakebank.com -w wordlist.txt dir

- If you were a penetration tester or security consultant, this is an exercise you’d perform for companies to test for vulnerabilities in their web applications; find hidden pages to investigate for vulnerabilities.

- What careers are there? The cyber careers room goes into more depth about the different careers in cyber. However, here is a short description of a few offensive security roles:

    - Penetration Tester - Responsible for testing technology products for finding exploitable security vulnerabilities.
    - Red Teamer - Plays the role of an adversary, attacking an organization and providing feedback from an enemy's perspective.
    - Security Engineer - Design, monitor, and maintain security controls, networks, and systems to help prevent cyberattacks.

## Intro to Defensive Security

Offensive security focuses on one thing: breaking into systems. Breaking into systems might be achieved through exploiting bugs, abusing insecure setups, and taking advantage of unenforced access control policies, among other things. Red teams and penetration testers specialize in offensive security.

- Defensive security is somewhat the opposite of offensive security, as it is concerned with two main tasks:
	- Preventing intrusions from occurring
    - Detecting intrusions when they occur and responding properly

Blue teams are part of the defensive security landscape.

- Some of the tasks that are related to defensive security include:

    - User cyber security awareness: Training users about cyber security helps protect against various attacks that target their systems.
    - Documenting and managing assets: We need to know the types of systems and devices that we have to manage and protect properly.
    - Updating and patching systems: Ensuring that computers, servers, and network devices are correctly updated and patched against any known vulnerability (weakness).
    - Setting up preventative security devices: firewall and intrusion prevention systems (IPS) are critical components of preventative security. Firewalls control what network traffic can go inside and what can leave the system or network. IPS blocks any network traffic that matches present rules and attack signatures.
    	- Establecer dispositivos de seguridad preventivos.
    - Setting up logging and monitoring devices: Without proper logging and monitoring of the network, it won’t be possible to detect malicious activities and intrusions. If a new unauthorized device appears on our network, we should be able to know.
    	- Configuración de dispositivos de registro y supervición. 

There is much more to defensive security, and the list above only covers a few common topics.

- In this room, we cover: https://tryhackme.com/room/defensivesecurity
    - Security Operations Center (SOC) - Centro de Operaciones de Seguridad
    	- Threat Intelligence - Inteligencia sobre amenazas
    - Digital Forensics and Incident Response (DFIR) - Análisis forense digital y respuesta a incidentes
    	- Malware Analysis 
### Security Operations Center (SOC)

A Security Operations Center (SOC) is a team of cyber security professionals that monitors the network and its systems to detect malicious cyber security events. 

- Some of the main areas of interest for a SOC are:
	- Vulnerabilities: Whenever a system vulnerability (weakness) is discovered, it is essential to fix it by installing a proper update or patch. When a fix is not available, the necessary measures should be taken to prevent an attacker from exploiting it. Although remediating vulnerabilities is of vital interest to a SOC, it is not necessarily assigned to them.
	- Policy violations: We can think of a security policy as a set of rules required for the protection of the network and systems. For example, it might be a policy violation if users start uploading confidential company data to an online storage service.
		- violación de políticas
	- Unauthorized activity: Consider the case where a user’s login name and password are stolen, and the attacker uses them to log into the network. A SOC needs to detect such an event and block it as soon as possible before further damage is done.
	- Network intrusions: No matter how good your security is, there is always a chance for an intrusion. An intrusion can occur when a user clicks on a malicious link or when an attacker exploits a public server. Either way, when an intrusion occurs, we must detect it as soon as possible to prevent further damage.

Security operations cover various tasks to ensure protection; one such task is threat-amenazas intelligence.

#### Threat Intelligence
Intelligence refers to information you gather about actual and potential enemies. A threat is any action that can disrupt or adversely affect a system.

Threat intelligence aims to gather information to help the company better prepare against potential adversaries. The purpose would be to achieve a threat-informed defense.

Intelligence needs data. Data has to be collected, processed, and analyzed. Data collection is done from local sources such as network logs and public sources such as forums. Processing of data aims to arrange them into a format suitable for analysis. The analysis phase seeks to find more information about the attackers and their motives; moreover, it aims to create a list of recommendations and actionable steps.

Learning about your adversaries allows you to know their tactics, techniques, and procedures. As a result of threat intelligence, we identify the threat actor (adversary), predict their activity, and consequently, we will be able to mitigate their attacks and prepare a response strategy.

### Digital Forensics and Incident Response (DFIR) - Malware Analysis.

Forensics-Criminalística is the application of science to investigate crimes-delitos and establish facts. With the use and spread-propagación of digital systems, such as computers and smartphones, a new branch of forensics was born to investigate related crimes: computer forensics, which later evolved-evolucionando into, digital forensics.

- In defensive security, the focus of digital forensics shifts to analyzing evidence of an attack and its perpetrators and other areas such as intellectual property theft, cyber espionage, and possession of unauthorized content. Consequently, digital forensics will focus on different areas such as:

    - File System: Analyzing a digital forensics image (low-level copy) of a system’s storage reveals much information, such as installed programs, created files, partially overwritten files, and deleted files.
    - System memory: If the attacker is running their malicious program in memory without saving it to the disk, taking a forensic image (low-level copy) of the system memory is the best way to analyze its contents and learn about the attack.
    - System logs: Each client and server computer maintains different log files about what is happening. Log files provide plenty of information about what happened on a system. Some traces will be left even if the attacker tries to clear their traces.
    Network logs: Logs of the network packets that have traversed a network would help answer more questions about whether an attack is occurring and what it entails.

#### Incident Response

An incident usually refers to a data breach-violación or cyber attack; however, in some cases, it can be something less critical, such as a misconfiguration, an intrusion attempt, or a policy violation. Examples of a cyber attack include an attacker making our network or systems inaccessible, defacing (changing) the public website, and data breach (stealing company data). How would you respond to a cyber attack? Incident response specifies the methodology that should be followed to handle such a case. The aim is to reduce damage and recover in the shortest time possible. Ideally, you would develop a plan ready for incident response.

- The four major phases of the incident response process are: respuestas a incidentes
	- Preparation: This requires a team trained and ready to handle-manejar incidents. Ideally, various measures are put in place to prevent incidents from happening in the first place.
    - Detection and Analysis: The team has the necessary resources to detect any incident; moreover, it is essential to further analyze any detected incident to learn about its severity.
    - Containment-contención, Eradication, and Recovery: Once an incident is detected, it is crucial to stop it from affecting other systems, eliminate it, and recover the affected systems. For instance, when we notice that a system is infected with a computer virus, we would like to stop (contain) the virus from spreading to other systems, clean (eradicate) the virus, and ensure proper system recovery.
    - Post-Incident Activity: After successful recovery, a report is produced, and the learned lesson is shared to prevent similar future incidents.

#### Malware Analysis

* Malware stands for malicious software. Software refers to programs, documents, and files that you can save on a disk or send over the network. Malware includes many types, such as:

    - Virus is a piece of code (part of a program) that attaches itself to a program. It is designed to spread from one computer to another; moreover, it works by altering, overwriting, and deleting files once it infects a computer. The result ranges from the computer becoming slow to unusable.
    - Trojan Horse is a program that shows one desirable function but hides a malicious function underneath. For example, a victim might download a video player from a shady website that gives the attacker complete control over their system.
    - Ransomware is a malicious program that encrypts the user’s files. Encryption makes the files unreadable without knowing the encryption password. The attacker offers the user the encryption password if the user is willing to pay a “ransom.”

* Malware analysis aims to learn-pretende conocer about such malicious programs using various means-medios:

    - Static analysis works by inspecting the malicious program without running it. Usually, this requires solid knowledge of assembly language (processor’s instruction set, i.e., computer’s fundamental instructions).
    - Dynamic analysis works by running the malware in a controlled environment and monitoring its activities. It lets you observe how the malware behaves when running.

#### Practice

- There are many open-source databases out there, like AbuseIPDB, and Cisco Talos Intelligence, where you can perform a reputation and location check for the IP address. Most security analysts use these tools to aid them with alert investigations. You can also make the Internet safer by reporting the malicious IPs, for example, on AbuseIPDB.

## Careers in Cyber

- Security Analyst: Responsible for maintaining the security of an organisation's data
	- Security analysts are integral to constructing security measures across organisations to protect the company from attacks. Analysts explore and evaluate company networks to uncover actionable data and recommendations for engineers to develop preventative measures. This job role requires working with various stakeholders to gain an understanding of security requirements and the security landscape.
- Security engineers: Design, monitor and maintain security controls, networks, and systems to help prevent cyberattacks.
	- Security engineers develop and implement security solutions using threats and vulnerability data - often sourced from members of the security workforce. Security engineers work across circumventing a breadth of attacks, including web application attacks, network threats, and evolving trends and tactics. The ultimate goal is to retain and adopt security measures to mitigate the risk of attack and data loss.

- Incident Responder: Identifies and mitigates attacks whilst an attackers operations are still unfolding.
	- Incident responders respond productively and efficiently to security breaches. Responsibilities include creating plans, policies, and protocols for organisations to enact during and following incidents. This is often a highly pressurised position with assessments and responses required in real-time, as attacks are unfolding. Incident response metrics include MTTD, MTTA, and MTTR - the meantime to detect, acknowledge, and recover (from attacks.) The aim is to achieve a swift and effective response, retain financial standing and avoid negative breach implications. Ultimately, incident responders protect the company's data, reputation, and financial standing from cyber attacks.

- Digital Forensics Examiner: Responsible for using digital forensics to investigate incidents and crimes
- Malwarea Analyst: Analyses all types of malware to learn more about how they work and what they do.
- Penetration Tester: Responsible for testing technology products for security loopholes.
	- You may see penetration testing referred to as pentesting and ethical hacking. A penetration tester's job role is to test the security of the systems and software within a company - this is achieved through attempts to uncover flaws and vulnerabilities through systemised hacking. Penetration testers exploit these vulnerabilities to evaluate the risk in each instance. The company can then take these insights to rectify issues to prevent a real-world cyberattack.
- Red Teamer: Red teamers share similarities to penetration testers, with a more targeted job role. Penetration testers look to uncover many vulnerabilities across systems to keep cyber-defence in good standing, whilst red teamers are enacted to test the company's detection and response capabilities. This job role requires imitating cyber criminals' actions, emulating malicious attacks, retaining access, and avoiding detection. Red team assessments can run for up to a month, typically by a team external to the company. They are often best suited to organisations with mature security programs in place.

    - Emulate the role of a threat actor to uncover exploitable vulnerabilities, maintain access and avoid detection
    - Assess organisations' security controls, threat intelligence, and incident response procedures
    - Evaluate and report on insights, with actionable data for companies to avoid real-world instances

# Introduction to Offensive Security

## Web Application Security Risks

* There are a few main categories of common attacks against web applications. Consider the following steps and related attacks.

    - Log in at the website: The attacker can try to discover the password by trying many words. The attacker would use a long list of passwords with an automated tool to test them against the login page.
    - Search for the product: The attacker can attempt to breach the system by adding specific characters and codes to the search term. The attacker’s objective is for the target system to return data it should not or execute a program it should not. SQLi
    - Provide payment details: The attacker would check if the payment details are sent in cleartext or using weak encryption. Encryption refers to making the data unreadable without knowing the secret key or password.

### Some vulnerability categories

* Identification refers to the ability to identify a user uniquely. In contrast, authentication refers to the ability to prove that the user is whom they claim to be. The online shop must confirm the user’s identity and authenticate them before they can use the system. However, this step is prone to different types of weaknesses. Example weaknesses include:

    - Allowing the attacker to use brute force, i.e., try many passwords, usually using automated tools, to find valid login credentials.
    - Allowing the user to choose a weak password. A weak password is usually easy to guess.
    - Storing the users’ passwords in plain text. If the attacker manages to read the file containing the passwords, we don’t want them to be able to learn the stored password.

- Broken Access Control: Access control ensures that each user can only access files (documents, images, etc.) related to their role or work. For example, you don’t want someone in the marketing department to access (read) the finance department’s documents. Example vulnerabilities related to access control include:

    - Failing to apply the principle of the least privilege and giving users more access permissions than they need. For example, an online customer should be able to view the prices of the items, but they should not be able to change them.
    - Being able to view or modify someone else’s account by using its unique identifier. For example, you don’t want one bank client to be able to view the transactions of another client.
    - Being able to browse pages that require authentication (logging in) as an unauthenticated user. For example, we cannot let anyone view the webmail before logging in.

- Injection: An injection attack refers to a vulnerability in the web application where the user can insert malicious code as part of their input. One cause of this vulnerability is the lack of proper validation and sanitization of the user’s input.

- Cryptographic Failures: This category refers to the failures related to cryptography. Cryptography focuses on the processes of encryption and decryption of data. Encryption scrambles cleartext into ciphertext, which should be gibberish to anyone who does not have the secret key to decrypt it. In other words, encryption ensures that no one can read the data without knowing the secret key. Decryption converts the ciphertext back into the original cleartext using the secret key. Examples of cryptographic failures include:

    - Sending sensitive data in clear text, for example, using HTTP instead of HTTPS. HTTP is the protocol used to access the web, while HTTPS is the secure version of HTTP. Others can read everything you send over HTTP, but not HTTPS.
    - Relying on a weak cryptographic algorithm. One old cryptographic algorithm is to shift each letter by one. For instance, “TRY HACK ME” becomes “USZ IBDL NF.” This cryptographic algorithm is trivial to break.
    - Using default or weak keys for cryptographic functions. It won’t be challenging to break the encryption that used 1234 as the secret key.

# Operating System Security

## Introduction
The Operating System (OS) is the layer sitting between the hardware and the applications and programs you are running. 

* When we talk about security, we should think of protecting three things:

    - Confidentiality: You want to ensure that secret and private files and information are only available to intended persons.
    - Integrity: It is crucial that no one can tamper with the files stored on your system or while being transferred on the network.
    - Availability: You want your laptop or smartphone to be available to use anytime you decide to use it.

* three weaknesses targeted by malicious users:
    
    - Authentication and Weak Passwords: Authentication is the act of verifying your identity, be it a local or a remote system.
    - Weak File Permissions: Proper security dictates the principle of least privilege. In a work environment, you want any file accessible only by those who need to access it to get work done. On a personal level, if you are planning a trip with family or friends, you might want to share all the files related to the trip plan with those going on that trip; you don’t want to share such files publicly. That’s the principle of least privilege, or in simpler terms, “who can access what?”
        - Weak file permissions make it easy for the adversary to attack confidentiality and integrity. They can attack confidentiality as weak permissions allow them to access files they should not be able to access. Moreover, they can attack integrity as they might modify files that they should not be able to edit.
    - 
## Network Security

A computer network is a group of computers and devices connected with each other. Network security focuses on protecting the security of these devices and the links connecting them. (In more precise terms, network security refers to the devices, technologies, and processes to protect the confidentiality, integrity, and availability of a computer network and the data on it.)

- Examples of hardware appliances include:
    - Firewall appliance: The firewall allows and blocks connections based on a predefined set of rules. It restricts what can enter and what can leave a network.
    - Intrusion Detection System (IDS) appliance: An IDS detects system and network intrusions and intrusion attempts. It tries to detect attackers’ attempts to break into your network.
    - Intrusion Prevention System (IPS) appliance: An IPS blocks detected intrusions and intrusion attempts. It aims to prevent attackers from breaking into your network.
    - Virtual Private Network (VPN) concentrator appliance: A VPN ensures that the network traffic cannot be read nor altered by a third party. It protects the confidentiality (secrecy) and integrity of the sent data.

- On the other hand, we have software security solutions. Common examples are:
    - Antivirus software: You install an antivirus on your computer or smartphone to detect malicious files and block them from executing.
    - Host firewall: Unlike the firewall appliance, a hardware device, a host firewall is a program that ships as part of your system, or it is a program that you install on your system. For instance, MS Windows includes Windows Defender Firewall, and Apple macOS includes an application firewall; both are host firewalls.

- Breaking into a target network usually includes a number of steps. According to Lockheed Martin, the Cyber Kill Chain has seven steps:

    - Recon: Recon, short for reconnaissance, refers to the step where the attacker tries to learn as much as possible about the target. Information such as the types of servers, operating system, IP addresses, names of users, and email addresses, can help the attack’s success.
    - Weaponization: This step refers to preparing a file with a malicious component, for example, to provide the attacker with remote access.
    - Delivery: Delivery means delivering the “weaponized” file to the target via any feasible method, such as email or USB flash memory.
    - Exploitation: When the user opens the malicious file, their system executes the malicious component.
    - Installation: The previous step should install the malware on the target system.
    - Command & Control (C2): The successful installation of the malware provides the attacker with a command and control ability over the target system.
    - Actions on Objectives: After gaining control over one target system, the attacker has achieved their objectives. One example objective is Data Exfiltration (stealing target’s data).

### practice:

- The first step of our attack is Recon; we can speed up our reconnaissance activities using different tools that gather information about the various aspects related to the target.
    - nmap: Network Mapper: Nmap is a network scanner that helps us discover running machines and any programs running on them that are visible to the outside world.
        - We just discovered three services running:
            - FTP server: FTP stands-MEANS for File Transfer Protocol and is used to transfer files between machines.
            - SSH server: SSH stands for Secure Shell and is used for secure remote login(inicio de sesión). In other words, it allows you to execute commands on a remote system securely.
            - HTTP server: HTTP stands for Hypertext Transfer Protocol and is used for the web. Whenever you are browsing the web, you are using HTTP or HTTPS. HTTPS is the secure (encrypted) version of HTTP.
        - You can also notice that Nmap reports on whether the host is up based on whether it receives any response from it. This is useful to know when no ports are open or accessible.

# Introduction to Offensive Security

## Intro to Digital Forensics

Forensics is the application of science to investigate crimes and establish facts. With the use and spread of digital systems, such as computers and smartphones, a new branch of forensics was born to investigate related crimes: computer forensics, which later evolved into, digital forensics.

More formally, digital forensics is the application of computer science to investigate digital evidence for a legal purpose. Digital forensics is used in two types of investigations:

1. Public-sector investigations refer to the investigations carried out by government and law enforcement agencies. They would be part of a crime or civil investigation.
2. Private-sector investigations refer to the investigations carried out by corporate bodies by assigning a private investigator, whether in-house or outsourced. They are triggered by corporate policy violations.

Whether investigating a crime or a corporate policy violation, part of the evidence is related to digital devices and digital media. This is where digital forensics comes into play and tries to establish what has happened. Without trained digital forensics investigators, it won’t be possible to process any digital evidence properly.

- As a digital forensics investigator, you arrive at a scene similar to the one shown in the image above. What should you do as a digital forensics investigator? After getting the proper legal authorization, the basic plan goes as follows:

    - Acquire the evidence: Collect the digital devices such as laptops, storage devices, and digital cameras. (Note that laptops and computers require special handling if they are turned on; however, this is outside the scope of this room.)
    - Establish a chain of custody: Fill out the related form appropriately (Sample form). The purpose is to ensure that only the authorized investigators had access to the evidence and no one could have tampered with it.
    - Place the evidence in a secure container: You want to ensure that the evidence does not get damaged. In the case of smartphones, you want to ensure that they cannot access the network, so they don’t get wiped remotely.
    - Transport the evidence to your digital forensics lab.

- More generally, according to the former director of the Defense Computer Forensics Laboratory, Ken Zatyko, digital forensics includes:

    - Proper search authority: Investigators cannot commence without the proper legal authority.
    - Chain of custody: This is necessary to keep track of who was holding the evidence at any time.
    - Validation with mathematics: Using a special kind of mathematical function, called a hash function, we can confirm that a file has not been modified.
    - Use of validated tools: The tools used in digital forensics should be validated to ensure that they work correctly. For example, if you are creating an image of a disk, you want to ensure that the forensic image is identical to the data on the disk.
    - Repeatability: The findings of digital forensics can be reproduced as long as the proper skills and tools are available.
    - Reporting: The digital forensics investigation is concluded with a report that shows the evidence related to the case that was discovered.

### practice

- At the lab, the process goes as follows:
    - Retrieve the digital evidence from the secure container.
    - Create a forensic copy of the evidence: The forensic copy requires advanced software to avoid modifying the original data.
    - Return the digital evidence to the secure container: You will be working on the copy. If you damage the copy, you can always create a new one.
    - Start processing the copy on your forensics workstation.

- Document Metadata:
    - When you create a text file, TXT, some metadata gets saved by the Operating System, such as file creation date and last modification date. However, much information gets kept within the file’s metadata when you use a more advanced editor, such as MS Word. There are various ways to read the file metadata; you might open them within their official viewer/editor or use a suitable forensic tool. Note that exporting the file to other formats, such as PDF, would maintain most of the metadata of the original document, depending on the PDF writer used.
        - Let’s see what we can learn from the PDF file. We can try to read the metadata using the program *pdfinfo*. Pdfinfo displays various metadata related to a PDF file, such as title, subject, author, creator, and creation date. 
            - on kali:
                - sudo apt install poppler-utils
    - Photo EXIF Data: Exchangeable Image File Format it is a standard for saving metadata to image files. Whenever you take a photo with your smartphone or with your digital camera, plenty of information gets embedded in the image. The following are examples of metadata that can be found in the original digital images:
        - Because smartphones are equipped with a GPS sensor, finding GPS coordinates embedded in the image is highly probable. The GPS coordinates, i.e., latitude and longitude, would generally show the place where the photo was taken.
            - If you take the above coordinates and search one of the online maps, you will learn more about this location. Searching [Microsoft Bing Maps](https://www.bing.com/maps?cp=51.514418%7E-0.094094&lvl=21.0&mo=om.1) or Google Maps for 51° 31' 4.00" N, 0° 5' 48.30" W reveals that these coordinates indicate that the image was taken very near to the Museum of London. 
                - We only replaced deg with ° for our search to work.) We noticed that the coordinates were converted to decimal representation on the search page: 51.517776, -0.09675.
                    - example: 
                        - GPS Position                    : 51 deg 30' 51.90" N, 0 deg 5' 38.73" W
            - on kali:
                - sudo apt install libimage-exiftool-perl
        - Camera model / Smartphone model
        - Date and time of image capture
        - Photo settings such as focal length, aperture, shutter speed, and ISO settings

## Security Operations

- A Security Operations Center (SOC) is a team of IT security professionals tasked with monitoring a company’s network and systems 24 hours a day, seven days a week. Their purpose of monitoring is to:
    - Find vulnerabilities on the network: 
        - A vulnerability is a weakness that an attacker can exploit to carry out things beyond their permission level. A vulnerability might be discovered in any device’s software (operating system and programs) on the network, such as a server or a computer. For instance, the SOC might discover a set of MS Windows computers that must be patched against a specific published vulnerability. Strictly speaking, vulnerabilities are not necessarily the SOC’s responsibility; however, unfixed vulnerabilities affect the security level of the entire company.
    - Detect unauthorized activity
        - Consider the case where an attacker discovered the username and password of one of the employees and used it to log in to the company system. It is crucial to detect this kind of unauthorized activity quickly before it causes any damage. Many clues can help us detect this, such as geographic location.
    - Discover policy violations
        - A security policy is a set of rules and procedures created to help protect a company against security threats and ensure compliance. What is considered a violation would vary from one company to another; examples include downloading pirated media files and sending confidential company files insecurely.

    - Detect intrusions: Intrusions refer to system and network intrusions. One example scenario would be an attacker successfully exploiting our web application. Another example scenario would be a user visiting a malicious site and getting their computer infected.

    - Support with the incident response: An incident can be an observation, a policy violation, an intrusion attempt, or something more damaging such as a major breach. Responding correctly to a severe incident is not an easy task. The SOC can support the incident response team handle the situation.

### Elements of Security Operations

* Data Sources
    - Server logs: . Logs contain information about various activities, such as successful and failed login attempts, among many others. There is a trove of information that can be found in the server logs.
    - DNS activity: DNS stands for **Domain Name System**, and it is the protocol responsible for converting a domain name, such as tryhackme.com, to an IP address, such as 10.3.13.37, among other domain name related queries. One analogy of the DNS query is asking, “How can I reach TryHackMe?” and someone replying with the postal address. In practice, if someone tries to browse tryhackme.com, the DNS server has to resolve it and can log the DNS query to monitoring. The SOC can gather information about domain names that internal systems are trying to communicate with by merely inspecting DNS queries.
    - Firewall logs: A firewall is a device that controls network packets entering and leaving the network mainly by letting them through or blocking them. Consequently, firewall logs can reveal much information about what packets passed or tried to pass through the firewall.
    - DHCP logs: DHCP stands for Dynamic Host Configuration Protocol, and it is responsible for assigning an IP address to the systems that try to connect to a network. One analogy of the DHCP request would be when you enter a fancy restaurant, and the waiter welcomes you and guides you to an empty table. Know that DHCP has automatically provided your device with the network settings whenever you can join a network without manual configuration. By inspecting DHCP transactions, we can learn about the devices that joined the network.

    - A SOC might use a Security Information and Event Management (SIEM) system. The SIEM aggregates the data from the different sources so that the SOC can efficiently correlate the data and respond to attacks.

- SOC Services:
    - Monitor security posture-monitorear la postura de seguridad: 
    - Vulnerability management: This refers to finding vulnerabilities in the company systems and patching (fixing) them. (not necessarily)
    - Malware analysis: The SOC might recover malicious programs that reached the network. The SOC can do basic analysis by executing it in a controlled environment. 
    - Intrusion detection: An intrusion detection system (IDS) is used to detect and log intrusions and suspicious packets. The SOC’s job is to maintain such a system, monitor its alerts, and go through its logs as the need dictates.
    - Reporting: It is essential to report incidents and alarms. Reporting is necessary to ensure a smooth workflow and to support compliance requirements.

* Proactive services refer to the tasks handled by the SOC without any indicator of an intrusion. Example proactive services carried out by the SOC include:
    - Network security monitoring (NSM): This focuses on monitoring the network data and analyzing the traffic to detect signs of intrusions.
    - Threat hunting: With threat hunting, the SOC assumes an intrusion has already taken place and begins its hunt to see if they can confirm this assumption.
    - Threat Intelligence: Threat intelligence focuses on learning about potential adversaries and their tactics and techniques to improve the company’s defences. The purpose would be to establish a threat-informed defence.
- THREAT-amenazas
- HUNTING-caza

## New Words
- THREAT-amenazas
- HUNTING-caza
- go through - revisar
- to aid-ayudar
- trove-tesoro
- a data breach: violación de datos
- reconnaissance/ree-co_noi_sens/-reconocimiento
- feasible-factible
- intrusions-intrusiones
- proper-adecuada
- dictates-dicta
- aware-consiente
- targeted-a los que apuntan
- seeks-busca
- accomplish-cumplir
- tamper-manipular
- plenty-infinidad
- intended-dedicada
- layer-capa
- Relying-confiar,depender
- gibberish-galimatías: spoken or written words that have no meaning
- scrambles-transforma
- straightforwardly-directamente
- guilty-culpables
- charging-acusando
- breaches-violaciones-infracciones
- unfolding-despliegue
- desirable-deseables
- underneath-debajo de 
- arrange-organizar
- aims-pretende-objetivos
- gather-reunir
- loopholes-lagunas-vacios 
- landscape-paisaje
- whenever-siempre que
- weakness-debilidad
- harmless-inofensivo
- triggered-desencadenado
- suspicious-sospechoso
- carry out-llevar a acabo-realizar


# Protect your home: CiberSecurity to IoT


https://haak.com.mx/protegiendo-tu-hogar-conectado-ciberseguridad-para-el-internet-de-las-cosas/