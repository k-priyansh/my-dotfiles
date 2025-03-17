# Add aliases for hacking
alias hacking-hackthebox='docker run -it --rm hackthebox/hackthebox'
alias hacking-pwntools='docker run -it --rm pwntools/pwntools'
alias hacking-shellshock='docker run -it --rm owasp/shockwave'
alias hacking-burp='docker run -it --rm owasp/burp'
alias hacking-metasploit='docker run -it --rm metasploit/metasploit'
alias hacking-sqlmap='docker run -it --rm sqlmap/sqlmap'
alias hacking-pwncat='docker run -it --rm pwncat/pwncat'
alias hacking-wfuzz='docker run -it --rm wfuzz/wfuzz'
alias hacking-nmap='docker run -it --rm nmap/nmap'
alias hacking-dirbuster='docker run -it --rm dirbuster/dirbuster'
alias hacking-nikto='docker run -it --rm owasp/nikto'
alias hacking-hping3='docker run -it --rm hping3/hping3'
alias hacking-john='docker run -it --rm john/john'
alias hacking-hydra='docker run -it --rm hydra/hydra'
alias hacking-john-the-ripper='docker run -it --rm john-the-ripper/john-the-ripper'
alias hacking-john-jumbo='docker run -it --rm john-jumbo/john-jumbo'
alias hacking-john-watson='docker run -it --rm john-watson/john-watson'
alias hacking-john-wordlist='docker run -it --rm john-wordlist/john-wordlist'
alias hacking-john-parallel='docker run -it --rm john-parallel/john-parallel'
alias hacking-john-pre-parallel='docker run -it --rm john-pre-parallel/john-pre-parallel'
alias hacking-john-wordlist-parallel='docker run -it --rm john-wordlist-parallel/john-wordlist-parallel'



# -----------------------------------------------------
# BugBounty Tools
# -----------------------------------------------------
alias pdtm="$HOME/tools/pdtm/pdtm"                                                  # pdtm command
alias httpx="$HOME/tools/httpx/httpx"                                               # httpx command
alias aquatone="$HOME/.tools/aquatone/aquatone"                                     # aquatone command

#----- AWS -------

s3ls(){
aws s3 ls s3://$1
}

s3cp(){
aws s3 cp $2 s3://$1 
}

#---- Content discovery ----
thewadl(){ #this grabs endpoints from a application.wadl and puts them in yahooapi.txt
curl -s $1 | grep path | sed -n "s/.*resource path=\"\(.*\)\".*/\1/p" | tee -a ~/tools/dirsearch/db/yahooapi.txt
}

#----- recon -----
crtndstry(){
./tools/crtndstry/crtndstry $1
}

am(){ #runs amass passively and saves to json
amass enum --passive -d $1 -json $1.json
jq .name $1.json | sed "s/\"//g"| httprobe -c 60 | tee -a $1-domains.txt
}

certprobe(){ #runs httprobe on all the hosts from certspotter
curl -s https://crt.sh/\?q\=\%.$1\&output\=json | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u | httprobe | tee -a ./all.txt
}

mscan(){ #runs masscan
sudo masscan -p4443,2075,2076,6443,3868,3366,8443,8080,9443,9091,3000,8000,5900,8081,6000,10000,8181,3306,5000,4000,8888,5432,15672,9999,161,4044,7077,4040,9000,8089,443,744
}

certspotter(){ 
curl -s https://certspotter.com/api/v0/certs\?domain\=$1 | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | grep $1
} #h/t Michiel Prins

crtsh(){
curl -s https://crt.sh/?Identity=%.$1 | grep ">*.$1" | sed 's/<[/]*[TB][DR]>/\n/g' | grep -vE "<|^[\*]*[\.]*$1" | sort -u | awk 'NF'
}

certnmap(){
curl https://certspotter.com/api/v0/certs\?domain\=$1 | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | grep $1  | nmap -T5 -Pn -sS -i - -$
} #h/t Jobert Abma

ipinfo(){
curl http://ipinfo.io/$1
}


#------ Tools ------
dirsearch(){ runs dirsearch and takes host and extension as arguments
python3 ~/tools/dirsearch/dirsearch.py -u $1 -e $2 -t 50 -b 
}

#sqlmap(){
#python ~/tools/sqlmap*/sqlmap.py -u $1 
#}

ncx(){
nc -l -n -vv -p $1 -k
}

crtshdirsearch(){ #gets all domains from crtsh, runs httprobe and then dir bruteforcers
curl -s https://crt.sh/?q\=%.$1\&output\=json | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u | httprobe -c 50 | grep https | xargs -n1 -I{} python3 ~/tools/dirsearch/dirsearch.py -u {} -e $2 -t 50 -b 
}
