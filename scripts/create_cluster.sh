# Creating EKS Roles Manually with awscli 
# cat >eks-cluster-role-trust-policy.json <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "eks.amazonaws.com"
#       },
#       "Action": "sts:AssumeRole"
#     }
#   ]
# }
# EOF
# aws iam create-role --role-name myAmazonEKSClusterRole --assume-role-policy-document file://"eks-cluster-role-trust-policy.json"
# aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AmazonEKSClusterPolicy --role-name myAmazonEKSClusterRole


# USING aws cloudformation CLI: 
./scripts/cfn_create.sh infraStack cloudformations/infrastructure-stack.yml cloudformations/infrastructure-params.json
sleep 600 
./scripts/cfn_create.sh eksClusterStack cloudformations/eks-cluster-stack.yml cloudformations/eks-cluster-params.json 
sleep 600
./scripts/cfn_create.sh eksNodeGroupStack cloudformations/eks-nodegroup-stack.yml cloudformations/eks-nodegroup-params.json 


# USING eksctl 
# eksctl create cluster \
    # --name <cluster-name> \
    # --version 1.23 \
    # --nodegroup-name standard-workers \
    # --node-type t2.medium \
    # --nodes 3 --nodes-min 1 --nodes-max 3 \
    # --node-ami auto \
    # --region us-east-1
