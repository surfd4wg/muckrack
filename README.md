muckrack django sample app
terraform installs it into AWS ECS behind a load balancer
after terraform runs, you can do the following:
export DATABASE_URL=$(terraform output -raw instance_endpoint) && echo $DATABASE_URL
