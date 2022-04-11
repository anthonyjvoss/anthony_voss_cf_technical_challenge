# SRE Technical Challenge Questions

## Question 1

1. Troubleshooting steps to debug the problem
   1. Check for any region outages
   2. Ensure Route53 is operational (It's always DNS, right?)
   3. Ensure the load balancer is operating correctly
   4. Check the VPC flow logs for network traffic errors or abnormalities
   5. Check the CloudWatch logs for application
   6. Check the CloudTrail logs for security incidents
2. The above tools should provide the level of monitoring visibility to verify healthy state.
3. While root cause is not entirely clear from this exercise, adding another database instance will remove the single point of failure and increase availability from the app.

## Question 2

1. PowerShell script to apply the group policy settings.  Ansible playbook to simplify deployment and overall be more reusable.
   ```powershell
   # Need to find the registry path for local User Rights Assignment

   # Create GPO and add active ASR rule
   New-GPO -Name "CIS_Benchmark"
   Set-GPRegistryValue -Name "CIS_Benchmark" -Key "Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -ValueName "26190899-1602-49e8-8b27-eb1d0a1ce869" -Value 1

## Question 3

See `cloud_app` for codified Terraform solution
