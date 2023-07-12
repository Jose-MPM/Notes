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

## New Words
- guilty-culpables
- charging-acusando
- breaches-violaciones-infracciones
- unfolding-despliegue
- desirable-deseables
- underneath-debajo de 
- arrange-organizar
- aims-pretende-objetivos
- gather-reunir
- loopholes-laginas-vacios 
- landscape-paisaje
- whenever-siempre que
- weakness-debilidad
- harmless-inofensivo
- triggered-desencadenado
- suspicious-sospechoso
- carry out-llevar a acabo-realizar

# Read more!

Ya sé que todos “odiamos ser adultos” y que nos gusta el KFC y así, pero si todos deberíamos tener resuelto esto:

Deberías tener tu e-firma en una USB. De preferencia tener una Constancia de situación fiscal y una opinión de cumplimiento recientes.

No solo deberías saber en qué Afore estás asignado sino de preferencia hacer alguna aportación voluntaria o un PPR si tienes la posibilidad.

Deberías tener un Drive al que puedas tener acceso desde tu celular con TODOS tus documentos oficiales digitalizados.

Deberías tener tu CV en inglés y en español. Una semblanza o portafolio si eres independiente o emprendedor a la mano, en el drive.

Deberías tener historial crediticio bueno. Saca una tarjeta de crédito, un plan de teléfono lo que sea y paga a tiempo, a menos que tengas la vida resuelta y nunca vayas a necesitar un crédito. Si es así qué buena onda.

Deberías tener un fondo de emergencia de liquidez inmediata o a un día, de 1 a 3 meses de ingreso.

Al menos una persona de tu familia debería saber dónde están todos tus documentos personales, pólizas de seguros, cuentas bancarias, inversiones. Por si te mueres.

Deberías tener beneficiarios en todas tus cuentas. Ese beneficiario debería saber que lo es. Dijera tu tía, un día estamos, al otro no.

Las app de inversiones (Dinn, GBM+, etcétera) también tienen la opción de establecer beneficiarios, búscale, desígnalos. Avísales.

Deberías saberte tu RFC, tu CURP, tu NSS, tu cédula profesional si tu carrera lo exige. De memoria, así como “Mis ojos lloran por ti”.

Deberías evitar el KFC 😪. Es mucha grasa.