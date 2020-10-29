# Jenkins Setup

A Jenkins setup with a master and slave to be able to develop and test Jenkins shared libraries and parallel process locally

# Requirements

- Git 2.16.2.windows.1
- Java OpenJDK 11
- Docker Desktop for Windows 2.3.0.3
- Windows 10
- PowerShell with Invoke-WebRequest 

# Setup Jenkins Locally

- Clone the repository 

- Edit the file `Start.bat`, line 4, set the full path where you have cloned the repository, eg.
SET WORKSPACE=C:\Users\i052330\WorkspaceNew\sigom-aws\jenkins-setup

- Run the script `.\Start.bat` in PowerShell

- Jenkins user is `admin` and the password is `admin`

- Set environment variables in your Jenkinsfile `JENKINS_ENV=LOCAL` and `HOST_IP=your_ip_local`

# LDAP Server

- The SIGOM Server will need a LDAP server
- Starts the LDAP server with `docker-compose up -d`
- If you need to add LDAP users or create OUs, DCs, etc, use the file `ldap-setup-full.ldif` and build the LDAP image again.

## Other useful docker-compose commands
docker-compose stop serviceName

docker-compose start serviceName

docker-compose down

docker-compose logs -f serviceName

docker-compose ps
