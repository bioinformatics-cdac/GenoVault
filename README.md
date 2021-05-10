# GenoVault

## GenoVault "A Cloud Based Genomics Repository"

GenoVault is a cloud-based central repository for storage and retrieval of genomic data generated in various research labs in the various organizations. The solution is delivered in the form of a software suite called “GenoVault”, which is a cloud-based genomic repository that  enables quick archival and retrieval tools along with analytical engines. GenoVault is a Genomics Repository based on OpenStack cloud. It exploits and utilize the full advantage of Cloud Computing viz, distributed computing and storage. Users can upload the genomics sequence data onto the Cloud using Web or JavaFX based interface of GenoVault along with metadata which will be stored in a distributed manner on the cloud. This feature enables swift and efficient retrieval of the data. This centralized repository would be of enormous importance for healthcare.

**Key Features:**
* Web-based user-friendly interface
* Standalone Desktop Client
* Capable of transferring files of sizes > 50GB
* Every user has their own area for upload or download of data
* Data is stored into the Cloud as Object
* The Object will be stored in a distributed manner across swift nodes
* Distribruted storage enables efficient retrieval of the genomics data
* Solution is capable of scaling vertically and horizontally 


## Sample Input Data

Sample Input data is provided here.
<br/>
Google Drive link for the sample input data [Click here](https://drive.google.com/drive/folders/1GsbIS9WaNdBFKU0xfAE1v-KLY-d6FwjA?usp=sharinginch)


## Usage
Using the deployed WAR and Jar file, the tool can be as web client over the internet and executed on any stand-alone desktop machine. Upload the genomics file over the Cloud with n number of the object's nodes.Following is the way to install and execute it.

## Installation

### Pre-requisites
-----------------
 * Must:
   - Java 1.8 or above (https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)
   - MySQL 5 or above (http://www.mysql.com/)
   - OpenStack Cloud Setup (https://www.openstack.org/software/)
   - Swift based Object Storage Setup (https://www.openstack.org/software/)
   - Wildfly 10.x server   (http://wildfly.org)

### Application Structure for openstack-based GenoVault
--------------------------------------------------

									-------------------------
									|			|	
								________|Object Storage Node 1	|	
							      /		|			|	
							     /		-------------------------
							    /	
							   /
							  /				-------------------------
	=================		=================/				|			|
	| Application 	|		|		|  				|Object Storage Node 2	|
	|  Server	|---------------|Controller Node|_______________________________|			|
	|		|		| 		|				-------------------------
	=================		=================\
							  \
							   \ 		-------------------------
							    \		|			|	
							     ___________|Object Storage Node 3 	|	
									|			|	
									-------------------------

	Application Server: This is the node where the GenoVault Portal is deployed. 
	Controller Node: This is the node where the Cloud Entry point.
	Object Storage Nodes : These are nodes where the container will be created.
	Note : All the nodes, except Application Server, are a part of OpenStack Cloud.
   
#### Server Side


JDK  
        Install Java 1.8 or above
# MySQl 
        Install MySQL Server 5.6.33 or above
	        $ sudo apt update
	        $ sudo apt install mysql-server
	        $ sudo mysql_secure_installation
		
# Download GenoVault Database MySql dump
<br/>
Google Drive link for the mysql data [Click here](https://drive.google.com/drive/folders/1GsbIS9WaNdBFKU0xfAE1v-KLY-d6FwjA?usp=sharinginch)


[Click here](https://drive.google.com/drive/folders/1kckwURF27LeSuDLAGFa8BDmbzY8G0uyC?usp=sharing)

# Import the default database
         $ mysql -u root -p
	        mysql> CREATE DATABASE genovaultdb;
	        $ mysql -u root -p < genovault.sql;
        Set environment variables.
 	        $ mkdir -p $HOME/genovault/upload
	        $ mkdir -p $HOME/genovault/download
	        $ cat >> .bashrc <<EOF 
	                export GENOVAULT=$HOME/genovault
                        
### Web Based Client:

Download Widfly 10.x server

Wildfly 10.x server   (http://wildfly.org)

Extract 
```bash
	tar -xvf Widfly 10.x
```
# Download GenoVault WAR file
<br/>
Google Drive link for the mysql data [Click here](https://drive.google.com/drive/folders/1o9v002Lhw7uXhP0f4qUMvXYHG_sxxQUe?usp=sharing)

Copy Genome-1.jar Jar file from GenoVaul_Jar's folder into the Wildfly deployment folder.	

```bash
	cp Genome-1.jar ~/wildfly/standalone/deployments/
```
Change the Database server hostname and port as per user setting.

#### Get Started

Default Portal Access URL : 
```bash
http://<Application server>:8080/Genome-1 
```

By default admin user is created for ADMIN module (password admin). Change the password once logged in and create appropriate users for GenoVault module.

### Login as Admin and Change the Cloud Configuration 

### Standalone Client:

Genovault Standalone Client is enable to transfer the very large files of the user to the Server. To run server downlod the jar file.

Google Drive link for the Standalone server and client [Click here](https://drive.google.com/drive/folders/1jT7DjxNpL2UbEF2Ds7n2-haJimtQPw9A?usp=sharing)

Copy the fdt.jar from the Standalone directory to the destination directory

```bash

java -jar <JAR file path> [command] [command options]

```

Run fdt Jar on the Server from the 

Example for execution:

```bash

java -jar fdt.jar

```

### Stand-alone Usage

GenoVault tool can be executed on a stand-alone desktop machine on which JAVA is installed. Below is the command line usage for the JAVA jar file.
Run GenovaultFX-1.jar from the Client machine


```bash

java -jar <JAR file path> [command] [command options]

```

Example for execution:

```bash

java -jar GenovaultFX.jar

```
