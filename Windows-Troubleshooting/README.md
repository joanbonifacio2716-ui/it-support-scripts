# Windows Endpoint Troubleshooting Toolkit

A personal IT Support portfolio project containing PowerShell practice scripts for common Windows endpoint diagnostic and troubleshooting tasks.

## Project Overview

This project was created to strengthen my practical Windows troubleshooting skills and demonstrate how PowerShell can support common IT Service Desk workflows.

The scripts focus on gathering system information, reviewing network configuration, testing connectivity, and performing basic endpoint maintenance.

The project is designed around realistic Service Desk scenarios rather than production automation.

## Objectives

* Practice structured Windows troubleshooting
* Build reusable diagnostic scripts
* Improve PowerShell fundamentals
* Organize common endpoint troubleshooting checks
* Document troubleshooting logic
* Demonstrate practical IT Support skills through GitHub

## Environment

* Windows 10 / Windows 11
* PowerShell
* Windows command-line utilities
* GitHub

---

# Scripts

## Get-SystemInfo.ps1

### Purpose

`Get-SystemInfo.ps1` is a PowerShell practice script designed to collect basic Windows endpoint information during initial IT Service Desk troubleshooting.

### Information Collected

The script retrieves:

* Computer name
* Windows operating system and version
* System architecture
* Manufacturer and device model
* Processor information
* Installed physical RAM
* Active IPv4 network configuration
* Default gateway

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
```

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

## Get-IPConfiguration.ps1

**Purpose:**
Retrieve the computer's current network configuration.

**Example use case:**

A user reports that they cannot access an internal application or website. Reviewing the endpoint's IP configuration can help determine whether the device has a valid network configuration.

**Skills demonstrated:**

* Basic networking
* IP configuration
* Windows troubleshooting
* PowerShell fundamentals

**Status:** Planned / In Progress

---

## Test-NetworkConnectivity.ps1

**Purpose:**
Perform basic connectivity checks to help identify network communication issues.

**Example use case:**

A user reports intermittent connectivity or difficulty reaching a service. The script can be used as an initial diagnostic step before escalating the issue.

**Skills demonstrated:**

* Network troubleshooting
* Connectivity testing
* Troubleshooting methodology
* PowerShell fundamentals

**Status:** Planned / In Progress

---

## Clear-TempFiles.ps1

**Purpose:**
Practice basic Windows endpoint maintenance by identifying and clearing temporary files.

**Example use case:**

A workstation has limited available storage or temporary files are contributing to an endpoint maintenance issue.

**Skills demonstrated:**

* Windows maintenance
* File-system operations
* PowerShell fundamentals
* Endpoint support

**Status:** Planned / In Progress

---

# Troubleshooting Approach

My general troubleshooting approach is:

1. Understand the user's reported issue.
2. Identify the affected device or service.
3. Gather relevant system information.
4. Check basic connectivity and configuration.
5. Isolate the possible cause.
6. Apply an appropriate troubleshooting step.
7. Validate whether the issue has been resolved.
8. Document the findings and next action.

This approach reflects the structured troubleshooting process used in IT Service Desk environments.

---

# What I Am Practicing

This project is part of my ongoing development in:

* Windows troubleshooting
* PowerShell
* Basic networking
* IT Service Desk diagnostics
* Technical documentation
* Troubleshooting methodology

---

# Limitations

These scripts are personal learning and portfolio projects.

They are not intended to replace enterprise IT policies, security controls, change-management procedures, or approved production automation.

Testing is performed in a personal Windows environment unless otherwise stated.

---

# Future Improvements

Planned improvements include:

* Additional network diagnostic scripts
* More structured error handling
* Logging troubleshooting results
* Input validation
* Active Directory practice scripts
* Microsoft 365 support-related utilities
* More detailed example outputs
* Additional troubleshooting scenarios

---

# Repository

Main repository:

https://github.com/joanbonifacio2716-ui/it-support-scripts
