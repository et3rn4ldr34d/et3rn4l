# et3rn4l

## Lightweight Bounty Automation Control Hub

The idea of this repo is to create an aggregation hub app for bounty automation.

## How it works

I mainly wanted to help automate and speed up the bounty process by adding an interface and scaling automation to an all-in-one location.

Over time, this app should become a swiss-army-knife of sorts, where you can run it on a VPS.

The goal is to first design a minimal CLI aggregate tool.  Eventually it would be nice to expand this to include a private webserver, vpn, and more, so that when you want to perform bug bounty, you can install this app on a VPS to pair along with tools like Burp or ZAP.

Most likely features will be added in an incremental basis.

*IkFueXRoaW5nIG91dCB0aGVyZSBpcyB2dWxuZXJhYmxlIHRvIGF0dGFjayBnaXZlbiBlbm91Z2ggdGltZSBhbmQgcmVzb3VyY2VzLiIgLSBLZXZpbiBNaXRuaWNr*

## To Do:

- Add VPN Container Service
- NAS (To Locally Mount Scan Results for access without having to SCP)
- Private Email Server
- Push Alerts (Email, SNS)
- SSH Tunneling into LiveDashboard/LiveView
- Add LiveView Admin Panel for GUI Hacking
- Customizable Methodology Checklist
- Responsive Design
- Mobile Architecture
- Connect to dr34d for easy command chaining
- Pub/Sub Persistence Scanning w/SA-X for Subdomain Takeover
- DigitalOcean Scaling
- Logger
- Hive AI Automated Hacking (Advanced, similar to pwnagotchi reinforcement learning)

## Installation

1. SSH into your VPS.
2. Ensure Git/Curl is installed if it doesn't come with your distro:
  > 
3. Clone GitHub Repo using the following command (you can copy and paste into SSH terminal):
  > 
4. Run install.sh
  > 
5. Visit localhost:1337
6. Enjoy your new VPS.
*Note: If you do not need scaling capabilities, VPN Setup, or a GUI, it may be more efficient to simply run the base CLI tool: [dr34d](github.com/et3rn4ldr34d/dr34d)

**There is an included "wipe.sh" script that you can run that will both uninstall as well as fully purge all application data from the VPS.  Please use this if necessary, but be VERY careful.  You will not be able to recover this data, so be absolutely certain you want to wipe.**
<br></br>

**In most cases, wiping will not be necessary.  It is included for best practices, as there may be sensitive data that may linger as a result of application use, and it is an extra safeguard to use, especially if you need to destroy the VPS for any reason.  Simply run "wipe.sh" with this command:**

