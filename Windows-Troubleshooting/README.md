````markdown
# Windows Endpoint Troubleshooting Toolkit

A personal IT Support portfolio project containing PowerShell practice scripts for common Windows endpoint diagnostic and troubleshooting tasks.

## Project Overview

This project was created to strengthen my practical Windows troubleshooting skills and demonstrate how PowerShell can support common IT Service Desk workflows.

The scripts focus on gathering system information, reviewing network configuration, testing connectivity, and performing basic endpoint maintenance.

The project is designed around realistic Service Desk scenarios rather than production automation.

## Objectives

- Practice structured Windows troubleshooting
- Build reusable diagnostic scripts
- Improve PowerShell fundamentals
- Organize common endpoint troubleshooting checks
- Document troubleshooting logic
- Demonstrate practical IT Support skills through GitHub

## Environment

- Windows 10 / Windows 11
- PowerShell
- Windows networking utilities
- GitHub

---

# Completed Scripts

## 1. Get-SystemInfo.ps1

### Purpose

`Get-SystemInfo.ps1` is a PowerShell practice script designed to collect basic Windows endpoint information during initial IT Service Desk troubleshooting.

### Information Collected

The script retrieves:

- Computer name
- Windows operating system and version
- System architecture
- Manufacturer and device model
- Processor information
- Installed physical RAM
- Active IPv4 network configuration
- Default gateway

### Troubleshooting Scenario

A user reports a workstation-related issue such as poor performance, an application problem, or a connectivity issue.

Before troubleshooting further, a Service Desk technician can collect basic endpoint information to understand the affected device and its current configuration.

This information can help establish the starting point for further troubleshooting or escalation.

### Example Test Environment

The script was tested on a personal Windows workstation.

**Operating System:** Windows 10 Pro  
**Architecture:** 64-bit  
**Manufacturer:** Acer  
**Model:** Veriton M200-B350  
**Processor:** AMD Ryzen 7 1700X Eight-Core Processor  
**Installed RAM:** 15.94 GB  
**Network Interface:** Ethernet

### Example Output

The following example is based on an actual test run. Personal device identifiers and network addressing information have been removed.

```text
=========================================
       WINDOWS SYSTEM INFORMATION
=========================================

[Computer Name]
-----------------------------------------
[Personal device name removed]

[Operating System]
-----------------------------------------
Name:         Microsoft Windows 10 Pro
Version:      10.0.19045
Architecture: 64-bit

[System Manufacturer and Model]
-----------------------------------------
Manufacturer: Acer
Model:        Veriton M200-B350

[Processor]
-----------------------------------------
Processor:    AMD Ryzen 7 1700X Eight-Core Processor

[Total RAM]
-----------------------------------------
Installed RAM: 15.94 GB

[IP Configuration]
-----------------------------------------
Interface:    Ethernet
IPv4 Address: [Private IP address removed]
Gateway:      [Default gateway removed]

=========================================
System Information Collection Complete.
=========================================
````

### Skills Demonstrated

* Windows endpoint troubleshooting
* System information gathering
* Basic network diagnostics
* PowerShell fundamentals
* Hardware and operating system identification
* Technical documentation
* Service Desk troubleshooting methodology

### What I Learned

This project helped me practice using PowerShell to collect endpoint information that can be useful during the initial stages of an IT Support investigation.

It also reinforced the importance of gathering system and network information before applying troubleshooting steps or escalating an issue.

### Project Status

**Completed — Initial Version**

Future improvements may include:

* Additional error handling
* Input validation
* Troubleshooting result logging
* Additional Windows diagnostic checks

---

# 2. Get-IPConfiguration.ps1

### Purpose

`Get-IPConfiguration.ps1` is a PowerShell practice script designed to review the active IPv4 network configuration of a Windows workstation.

The script helps collect basic network information that can be useful during initial IT Service Desk troubleshooting.

### Information Collected

The script retrieves:

* Network interface name
* Network adapter description
* IPv4 address
* Default gateway
* DNS server information

The script filters the results to focus on network interfaces with both an IPv4 address and a default gateway.

### Troubleshooting Scenario

A user reports that they cannot access a website, internal application, or network resource.

Before moving to more advanced troubleshooting, a Service Desk technician can review the endpoint's network configuration to determine whether the workstation has an active IPv4 configuration and a default gateway.

This provides a useful starting point for troubleshooting connectivity-related incidents.

### Example Test Environment

The script was tested on a personal Windows workstation.

**Operating System:** Windows 10 Pro
**Network Connection:** Ethernet
**Network Adapter:** Realtek PCIe GbE Family Controller

### Example Output

The following example is based on an actual test run. Private network addressing information has been removed.

```text
=========================================
         IP CONFIGURATION
=========================================

[Network Adapter]
-----------------------------------------
Interface:    Ethernet
Description:  Realtek PCIe GbE Family Controller
IPv4 Address: [Private IP address removed]
Gateway:      [Default gateway removed]
DNS Server(s): [DNS server removed]

=========================================
Network Configuration Check Complete.
===========================
```
