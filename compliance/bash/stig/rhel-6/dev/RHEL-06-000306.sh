#!/bin/bash
#
##########################################################################
#Red Hat Enterprise Linux 6 - DISA STIG Compliance Remediation Content
#Copyright (C) 2013 
#Vincent C. Passaro (vince@buddhalabs.com)
#
##########################################################################
#
######################  Buddha Labs LLC  ################################
# By Vincent C. Passaro                                                 #
# Buddha Labs LLC.                                                      #
# vince[@]buddhalabs[.]com                                              #
# www.buddhalabs.com	                                                #
######################  Buddha Labs LLC  ################################
#_________________________________________________________________________
#    Version |   Change Information     |      Author        |    Date    
#-------------------------------------------------------------------------
#    1.0     |  Initial Script Creation |  Vincent Passaro   | 1-JUNE-2013
#	                                                                  
   
#	
#######################DISA INFORMATION##################################
# Group ID (Vulid): RHEL-06-000306
# Group Title: SRG-OS-000202
#
   
# Rule ID: RHEL-06-000306_rule
# Severity: medium
# Rule Version (STIG-ID): RHEL-06-000306
# Rule Title: The operating system must detect unauthorized changes to 
# software and information.
#
# Vulnerability Discussion: By default, AIDE does not install itself for 
# periodic execution. Periodically running AIDE may reveal unexpected 
# changes in installed files.
#
# Responsibility: 
# IAControls: 
#
# Check Content:
#
# To determine that periodic AIDE execution has been scheduled, run the 
# following command: 

# grep aide /etc/crontab


# If there is no output, this is a finding.
#
# Fix Text: 
#
# AIDE should be executed on a periodic basis to check for changes. To 
# implement a daily execution of AIDE at 4:05am using cron, add the 
# following line to /etc/crontab: 

# 05 4 * * * root /usr/sbin/aide --check

# AIDE can be executed periodically through other means; this is merely one 
# example.  
#######################DISA INFORMATION##################################
#	
# Global Variables
PDI=RHEL-06-000306
#
#BEGIN_CHECK
#END_CHECK
#BEGIN_REMEDY
#END_REMEDY

