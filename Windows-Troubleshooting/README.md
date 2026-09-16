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
