# cloud-devops-capstone
## Project Overview
This Capstone project is a demonstration of the learned techniques and skills in Udacity Cloud DevOps Nanodegree program. 


## Repo Contents: 
    * .circleci 
    * cloudformations 
    * kubernetes
    * screenshots 
    * scripts 
    * src: html webpages ( representing our deployed application)

## Prerequisites & Setup:

You will need to create or use accounts for: 
    1. AWS 
    2. Dockerhub 
    3. CircleCI 

You will need to additionally include the credentials of these accounts in circleci as evnironment variables
    AWS_ 
    DOCKERHUB_ 

Finally you must manually deploy the infrastructure and eks kubernetes cluster in the cloudformations directory using "aws cloudformation" and "eksctl" 



## Running: 

1. local run: 
2. CircleCI (simple push the code after updating all environment variables and link the your forked github repo to circleci and watch it work)!