[![CircleCI](https://dl.circleci.com/status-badge/img/gh/aobri/cloud-devops-capstone/tree/master.svg?style=shield)](https://dl.circleci.com/status-badge/redirect/gh/aobri/cloud-devops-capstone/tree/master)
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/aobri/cloud-devops-capstone/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/aobri/cloud-devops-capstone/tree/master)

# Udacity Cloud Devops Capstone Project
## Project Overview
This Capstone project is a demonstration of the learned techniques and skills in Udacity Cloud DevOps Nanodegree program. 
* CI: utilizing circleci will build, lint and publish a docker image containing a webpage/
* CD: utilizing circleci, aws cloudformation and EKS will deploy the newly created image to an existing kubernetes cluster (EKS steps and source of how to create it manually are incuded in this repo). Deploment will follow a rolling update strategy making use of Deployments and Services in kubernetes.  


## Repo Contents: 
    * .circleci 
    * cloudformations 
    * kubernetes
    * screenshots 
    * scripts 
    * src: html webpages ( representing our deployed application)

## Prerequisites & Setup:

* You will need to create or use accounts for: 
  1. AWS 
  2. Dockerhub 
  3. CircleCI 

* You will need to additionally include the credentials of these accounts in circleci as evnironment variables
    AWS_ACCESS_KEY_ID, AWS_DEFAULT_REGION, AWS_SECRET_ACCESS_KEY, DOCKERHUB_ACCESS_TOKEN, DOCKERHUB_LOGIN 

* Finally you must manually deploy the infrastructure and eks kubernetes cluster in the cloudformations directory using:
  * Using "cfn_create.sh" for each stack individually or
  * Using "create_cluster.sh" in scripts directory. 
  * Using "eksctl" or 
  * Using "AWS Console"



## Running: 
1. local run: use the run_docker.sh , upload_docker.sh and run_kubernetes.sh to test the app and containerization locally.
2. CircleCI (simply push the code after updating all environment variables and link the your forked github repo to circleci and watch it work)!


## LICENSE: 
MIT License