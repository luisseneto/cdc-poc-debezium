# Change Data Capture

 This project has the purpose to explore how the source connector (debezium) works on practice. Below we list some of the topics we will discuss:
- What is Change Data Capture and how it works?
- What is Debezium?

Below we have the architecture of this small project.

![alt text](/images/architecture.png)

### What is Change Data Capture (CDC)  
Change Data Capture (CDC) refers to the process of identifying and 
capturing changes made to data in a database and then delivering those 
changes in real time to some process or system.

Capturing all transaction changes in a source database and moving them to 
the sink database in real-time keeps systems in sync and provides reliable 
data replication and zero-downtime in cloud migration. CDC is perfect for 
modern cloud architectures as it is a highly efficient way to move data. 
And since it's moving data in real-time, it also supports real-time 
analytics and data science.

### How it works? 
To understand how CDC works, think that users and applications make 
changes to the source database (i.e. insert, delete or update). 
All these changes made in the database are written in a transaction log, called
Write-ahead log or WAL, before integrating the changes in the data files.
Below is an image illustrating the process.

![alt text](/images/cdc-detail.png)

The example in the image above shows a CDC tool reading data 
from the transaction log of the source bank and sending them to a 
sink bank (in the image this is the target). As there is no persistent 
storage of the data stream in the CDC tool, we can use Apache Kafka for a 
log-centric approach to capture the long-term changes and push them to the 
target systems.