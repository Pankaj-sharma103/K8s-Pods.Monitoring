# Create the S3 bucket to store cluster info
aws s3api create-bucket --bucket reyaz-kops-testbkt29300.k8s.local --region ap-south-1 --create-bucket-configuration LocationConstraint=ap-south-1

# Enable versioning on the bucket
aws s3api put-bucket-versioning --bucket reyaz-kops-testbkt29300.k8s.local --region ap-south-1 --versioning-configuration Status=Enabled

# Tell kops where the state is stored
export KOPS_STATE_STORE=s3://reyaz-kops-testbkt29300.k8s.local

# Create the cluster definition
kops create cluster --name reyaz.k8s.local --zones ap-south-1a --master-count=1 --master-size t3.small --node-count=2 --node-size t3.micro

# Build the cluster and save admin credentials to kubeconfig
kops update cluster --name reyaz.k8s.local --yes --admin
