# Add aliases for network basics
# !Basic Networking Commands
alias ipconfig="ip a"                                                               # Display all IP addresses
alias ipup="sudo dhclient"                                                          # Get a new IP via DHCP
alias ipdown="sudo dhclient -r"                                                     # Release current IP
alias netstat="ss -tulnp"                                                           # Show listening ports and connections
alias ports="sudo netstat | grep LISTEN"                                            # Show open ports
alias ping="ping -c 5"                                                              # Send 5 ICMP echo requests
alias trace="traceroute"                                                            # Run traceroute
alias myip="curl ifconfig.me"                                                       # Get public IP address
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"                    # Alternative public IP
alias dnslookup="nslookup"                                                          # Query DNS records
alias whois="whois"                                                                 # Perform a WHOIS lookup
alias macvendor="sudo nmap --script mac-vendor"                                     # Discover MAC address vendor

# Add aliases for network interfaces
# !Wi-Fi and Network Interfaces
alias wifiup="nmcli radio wifi on"                                                  # Enable Wi-Fi
alias wifidown="nmcli radio wifi off"                                               # Disable Wi-Fi
alias wifilist="nmcli dev wifi list"                                                # List available Wi-Fi networks
alias wificonnect="nmcli dev wifi connect"                                          # Connect to a Wi-Fi network
alias wifidisconnect="nmcli dev disconnect wlan0"                                   # Disconnect from Wi-Fi
alias netinfo="nmcli dev show"                                                      # Show detailed info for all network devices
alias ifup="sudo ifconfig wlan0 up"                                                 # Bring up wireless interface
alias ifdown="sudo ifconfig wlan0 down"                                             # Bring down wireless interface
alias ifrestart="sudo systemctl restart NetworkManager"                             # Restart NetworkManager

# Add aliases for dns and hosts
# !DNS and Hosts
alias resolv="cat /etc/resolv.conf"                                                 # View DNS configuration
alias dnsflush="sudo resolvectl flush-caches"                                       # Flush DNS cache (systemd-resolved)
alias addhost="sudo nano /etc/hosts"                                                # Edit /etc/hosts file
alias dnstest="dig google.com"                                                      # Test DNS resolution
alias dnsperf="dig google.com +stats"                                               # Test DNS query performance
alias dnstrace="dig +trace google.com"                                              # Trace DNS query

# Add aliases for network tools
# !Networking Tools
alias sniff="sudo tcpdump -i any"                                                   # Capture network packets
alias pscan="sudo nmap -sS"                                                         # Perform a SYN scan with nmap
alias arp="arp -a"                                                                  # Display ARP table
alias netsp="iftop"                                                                 # Show network speed (requires iftop)
alias iperf="iperf3"                                                                # Run an iperf3 bandwidth test
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"  # Run a speed test
alias netcon="nmcli connection show"                                                # List all network connections
alias connect="nmcli connection up"                                                 # Activate a network connection
alias disconnect="nmcli connection down"                                            # Deactivate a network connection
alias ip-os='nmap -O'
alias ip-arp='arp -a'


# Add aliases for firewall 
# !Firewall and Security
alias fwstatus="sudo ufw status verbose"                                            # Check firewall status
alias fwallow="sudo ufw allow"                                                      # Allow a port/service in firewall
alias fwdeny="sudo ufw deny"                                                        # Deny a port/service in firewall
alias fwreload="sudo ufw reload"                                                    # Reload firewall rules
alias scanlocal="sudo nmap -sn 192.168.1.0/24"                                      # Scan local network
alias listconns="ss -s"                                                             # Show network socket statistics
alias tcpblock="iptables -A INPUT -p tcp --dport"                                   # Block TCP port
alias udpblock="iptables -A INPUT -p udp --dport"                                   # Block UDP port


# Add aliases for public IP addresses
# !Public IP and Network Testing
alias checkip="curl -s ipinfo.io"                                                   # Display public IP and geo-info
alias googledns="ping 8.8.8.8 -c 5"                                                 # Test connection to Google DNS
alias speed="speedtest-cli"                                                         # Run a network speed test
alias latency="ping -c 5 1.1.1.1"                                                   # Test latency to Cloudflare's DNS


