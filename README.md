# BypassFirewall
Firewall bypass refers to techniques used by attackers to bypass the firewall's security measures and gain access to the network.

# What is a Bypass Firewall?
Firewall bypassing is an underhanded way of tricking the firewall into believing that the illicit access request is legitimate. It involves specific strategies and tactics aimed at manipulating the weakness in a firewall system to gain illicit access to a secured network.

# This Tool is tested on:
Ubuntu

Kali Linux

# Main Points
1) SYN scan - It involves sending a SYN packet to each port on the target and waiting for a response. If the port is open, the target will send back a SYN-ACK packet.

2) FIN scan - It operates by sending TCP (Transmission Control Protocol) segments containing active FIN control bits to a targeted port.This process is also referred to as 'connection termination.

3) NULL scan - It is a series of TCP packets which hold a sequence number of “zeros” (0000000) and since there are none flags set, the destination will not know how to reply to the request. It will discard the packet and no reply will be sent, which indicates that the t port is open.

4) Xmas scan - It is designed to manipulate the PSH, URG and FIN flags of the TCP header. When source sent FIN, PUSH, and URG packet to a specific port and if a port is open then destination will discard the packets and will not sent any reply to a source.

5) Fragment scan - It split up the TCP header over several packets to make it harder for packet filters, intrusion detection systems, and other annoyances to detect what you are doing.

6) Data Length scan - This scan let you append the random data length of your choice.

7) TTL scan - Time to live (TTL) is a value that signifies how long a packet of data can exist in a network before it is discarded.

8) Source Port scan - It  is used to define a source port which will carry network packets to the destination port. 


9) Stealth scan - This scan does not creates log on the destination device.

10) Decoy scan - It makes your IP one of a torrent of others supposedly scanning the victim at the same time

![bfirewall](https://github.com/shantanu-65/BypassFirewall/assets/172571474/f3833f88-fb45-408a-9872-9b1b48cf017d)

# Installing
sudo apt install nmap
git clone https://github.com/shantanu-65/BypassFirewall
cd BypassFirewall
bash bfirewall.sh


FirewallBypass is created to help in penetration testing and it is not responsible for any misuse or illegal purposes.
