---
theme : "black"
transition: "slide"
highlightTheme: "monokai"
logoImg: "logo.png"
slideNumber: true
title: "Building a Google Cloud Pipeline with Dart and FaaS"
controls: true
enableChalkboard: true
enableMenu: true
---

### <span style="color:green"> Building a Google Cloud Pipeline with Dart Lang and F.a.a.S</span>

July Flutter Meetup

<img src="./slide_qrcode.png" style="width: 40%; height: 40%"/>

---

####  <span style="color:green">  About me </span> 

- <a href="https://g.dev/bwnyasse" target="_blank"> https://g.dev/bwnyasse </a>

- Senior Director, Software Development @Datavalet

- Dart & Flutter GDE

- Former Google Cloud Premier Partner

---

### <span style="color:green">  Overview of Google Cloud Platform (GCP) </span> 

![gcp](./gcp.jpeg)

---

### <span style="color:green">  Overview of Google Cloud Platform (GCP) </span> 

- Scalable and flexible cloud platform 

- <a href="https://googlecloudcheatsheet.withgoogle.com/" target="_blank"> https://googlecloudcheatsheet.withgoogle.com/</a>

---


####  <span style="color:green">  Introduction to FaaS (Function as a Service) </span> 

- <span style="color:orange"> FaaS:</span> Serverless computing paradigm

- <span style="color:orange"> Benefits:</span> 
  - Automatic scaling
  - Reduced operational complexity
  - Cost optimization

- <span style="color:orange"> Key FaaS platforms:</span> 
  - Cloud Functions (GCP)
  - AWS Lambda (Amazon Web Services)
  - Azure Functions (Microsoft Azure)

---

####  <span style="color:green">  How to write a Native Cloud Function as Dart Developer ... </span> 

- <a href="https://cloud.google.com/functions/docs/writing#directory-structure-nodejs" target="_blank"> on GCP ...</a>

![confuse](./confuse.gif)  

---

####  <span style="color:green">  CaaS vs. FaaS </span> 

## CaaS (Container as a Service)

- CaaS provides a platform for running containers without managing the underlying infrastructure.

- Key features of CaaS:
  - Container orchestration 
  - Scalable infrastructure 

---

####  <span style="color:green">  Cloud Run vs Cloud Function</span> 

![gcp-where-should-i-run](./gcp-where-should-i-run.jpg)  

---

####  <span style="color:green">  Cloud Run </span> 

![cloud-run](./cloud-run.jpeg)  

---

####  <span style="color:green">  Demo Architecture Overview </span> 

![architecture-overview](./architecture-overview.png)  

---

####  <span style="color:green">  Demo Application Walkthrough </span> 


Step-by-step demonstration of the application:

  1. Fetching data from <span style="color:orange"> the external API</span> 
  2. Processing and manipulating the data using <span style="color:orange">CaaS ( Cloud Run)</span> 
  3. Storing the data in <span style="color:orange">Cloud Storage</span>
  4. Scheduling application execution with <span style="color:orange">Cloud Scheduler</span>
  5. Showing real-time execution and results

---

#### <span style="color:green"> Key Development Tools </span> 

- <a href="https://pub.dev/packages/functions_framework" target="_blank">functions_framework</a>:
  - An open-source FaaS (Function as a Service) framework for writing portable Dart functions.

- <a href="https://pub.dev/packages/gcloud" target="_blank">gcloud</a>:
  - A Google Cloud Platform support package for Dart, providing APIs and utilities for GCP services.

- <a href="https://cloud.google.com/code/docs/vscode#docs" target="_blank">Cloud Code for VS Code</a>:
  - IDE support for the full development cycle of Kubernetes and Cloud Run applications.

---

#### <span style="color:green">  Hands-on Coding </span> 

It's time to dive into some code!

---

#### <span style="color:green">  Key Takeaways </span> 

- Building a Google Cloud Pipeline with Dart and FaaS:

  - Leverages Dart's modern features for web and mobile app development

  - Takes advantage of FaaS for serverless computing benefits

  - Utilizes GCP services like Cloud Run, Cloud Storage, and Cloud Scheduler

---

#### <span style="color:green">  Q&A  </span> 

<a href="https://g.dev/bwnyasse" target="_blank">Contact Me</a>
