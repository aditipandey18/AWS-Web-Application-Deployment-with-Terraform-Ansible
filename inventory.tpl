[web]
${web_public_ip} ansible_user=${ssh_user}

[web:vars]
project_name=${project_name}
app_port=${app_port}
rds_endpoint=${rds_endpoint}
db_name=${db_name}
db_username=${db_username}
s3_bucket_name=${s3_bucket_name}
aws_region=${aws_region}
