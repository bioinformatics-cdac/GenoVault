# H-BAT

## Hydrogen Bond Analysis Tool for Molecular Simulation Trajectories

H-BAT is a Big Data analytics tool to analyze the Hydrogen bonds in the molecular simulation trajectories. The available tools perform the same analysis but they fail with large trajectories with water or are unable to handle multiple trajectories simultaneously. This tool is scalable and portable on any distributed computing platform and can find out Hydrogen bonds between all types of residues including water. A Nearest neighbor algorithm is used to boost the performance of the tool in terms of h-bond calculations.

**Key Features:**
* Easy analysis of Big data as it is stored on Hadoop file system
* Fault tolerant and fast parallel processing of distributed data
* Support for both in-memory and on-disk data operations
* Scalable and portable on any distributed computing platform
* Nearest Neighbor approach used to optimize performance
* Hydrogen bonds between all types of residues including water-water interaction is possible
* It can analyse PDB, AMBER and GROMACS trajectories
* Hydrogen Bond parameters like Bond distance and angle are configurable 

## Sample Input Data

Sample Input data is provided here for Amber and Gromacs type of trajectories.
<br/>
Google Drive link for the sample input data [ Click here ](https://drive.google.com/drive/u/2/folders/1vzk3w4xARlkqogL3pzBIwwAA5sKCQv4d)


## Usage

Using the deployed jar file for the tool it can be executed on any stand-alone desktop machine or a big data cluster with n number of nodes.Following is the way to execute it.

### 1. Stand-alone Usage

HBAT tool can be executed on a stand-alone desktop machine on which JAVA is installed. Below is the command line usage for the JAVA jar file.


```bash

java -jar <JAR file path> [command] [command options]

```

Example for execution:

```bash

java -jar <JAR file path> hbat -f <filter file path> -i <input file path> -o <output path> -l --pdb

```

#### Command  
`hbat` command is used to execute the application. It takes various inputs like Trajectory file path, Output path and a Filter file. It also has various options to set the hbond parameters

#### Command Options

Following are the Command line options available for the `hbat` command

**Required Options**

| Option | Description |
| ------ | ------ |
|  --filter, -f | Path of Filter file |
|  --input, -i | Path of Trajectory Input File| 
|  --output, -o | Path of Output Directory | 

**Other Optional Options**

| Option | Description |
| ------ | ------ |
| --local, -l  | Run on the local machine <br> Default: false |
| --topology, -t  | Topology file path |
| --pdbtopology, -p  |Topology file path in PDB format for GROMACS input |
| --frameInfo  | All unique Hbonds with acceptor, hydrogen, donor, Count and Percent <br> Default: false  |
| --bondAngle, -b | Bond angle - Lower limit of the angle in degree. Upper limit is by default set to 180 degree <br> Default: 135.0 | 
| --distanceHeavyAtoms, -d2  | Distance between the heavy Atoms <br> Default: 3.5 |
| --distanceHydrogenBond, -d1  | Distance for the Hydrogen Bond <br> Default: 3.5 |
| --skipAngle  | Skip Bond Angle for calculating HBonds <br> Default: false |
| --skipSolvent  | Skip Solvent, whether to consider or skip the solvent for finding hbonds <br> Default: false |
| --skipSolventSolvent  | Skip calculation of solvent-solvent Hydrogen bonds <br> Default: false |
| --solvents  | Explicitly specify the solvent Molecule present in the trajectory <br> Default: [SOL, WAT] |
| --perModelSkip  | Offset to skip frames for calculation (Works for Amber format) <br> Default: 0 |
| --amber | Amber input <br> Default: false|
| --gromacs  | Gromacs input <br> Default: false |
| --pdb  | PDB input <br> Default: false |
| --log  | Detailed Log of the backend Executions <br> Default: false |



### 2. Hadoop Cluster Usage
For significantly big data it can also be executed on a Hadoop cluster with SPARK where data is stored on HDFS. The application can be executed using the spark-submit command.


```bash

spark-submit [spark-options] <application Jar file path> [command] [command options]

```

Example:
```bash

spark-submit --deploy-mode client --master yarn --driver-memory 50g --driver-cores 25 --executor-memory 48g --executor-cores 15 --num-executors 80 /home/hbat-1.0-jar-with-dependencies.jar hbat -i file:///home/new_data/protwat.mdcrd -t file:///home/new_data/protwat.prmtop -f file:///home/dna_protein_water.txt -o file:///home/output_1 --log --skipSolventSolvent

```

The [command](#command) and [command options](#command-options) are already described above.











#######################################################################
#											                                                #
#	GenoVault - Cloud Based Genomic Respository using Cloud Platform		#
#	version 1.0.0									                                      #
#											                                                #
#######################################################################

1. GenoVault version 1.0.0 Overview
-----------------------------------
GenoVault is a cloud-based central repository for storage and retrieval of genomic data generated in 
various research labs in the various organizations. The solution is delivered in the form of a software suite called “GenoVault”, which is a cloud-based genomic repository that  enables quick archival and retrieval tools along with analytical engines. GenoVault is a Genomics Repository based on OpenStack cloud. It exploits and utilize the full advantage of Cloud Computing viz, distributed computing and storage. Users can upload the genomics sequence data onto the Cloud using Web or JavaFX based interface of GenoVault along with metadata which will be stored in a distributed manner on the cloud. This feature enables swift and efficient retrieval of the data. This centralized repository would be of enormous importance for healthcare.

2. End User License Agreement (EULA)
-------------------------------------
By installing/using GenoVault version 1.0.0, you agree with the terms stated in the EULA and you are
 consenting to be bound by the agreement. You agree that your use of the software acknowledges that
you have read the license, understood it and agree to be bound by its terms and conditions. If you
do not agree to all of the terms of the agreement, do not use the software and uninstall the software
from your computer.


3. Licensing
--------------
   * GenoVault application modules are licensed by their respective providers and you need to agree to 
     licenses appropriately before linking them with GenoVault Web-Interface or GenoVault StandAlone Client.
   * GenoVault StandAlone client application modules are licensed by their respective providers and you need to agree to 
     licenses appropriately before linking them with GenoVault StandAlone Client.

4.  Installation
-----------------

Please refer installation_guide for installation of the portal in GenoVault.


5.  Application Structure for openstack-based GenoVault
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

6. Pre-requisites
-----------------
 * Must:
   - Java 1.8 or above (https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)
   - MySQL 5 or above (http://www.mysql.com/)
   - OpenStack Cloud Setup (https://www.openstack.org/software/)
   - Swift based Object Storage Setup (https://www.openstack.org/software/)
   - Wildfly 10.x server   (http://wildfly.org)
  

7. Get Started
--------------
Default Portal Access URL : http://<Application server>:8080/Genome-1 
Default "admin" user is created for ADMIN module (password -   ). 
Change the pasword once logged in, and create appropriate application users though ADMIN interface. 


8. Tested On
--------------
Operating Systems : 
 	           Ubuntu 

Browser: (Requires javascript enabled) 
	Internet Explorer 12, Mozilla Firefox 76.0,Google Chrome 



10. Disclaimer
---------------
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
