#!/bin/bash
yum update -y && \
yum install stress -y && \
INSTANCE_ID="`wget -q -O - http://instance-data/latest/meta-data/instance-id`" && \
aws autoscaling complete-lifecycle-action --lifecycle-action-result CONTINUE --instance-id $INSTANCE_ID --lifecycle-hook-name devops-pro-hook --auto-scaling-group-name devopsASG --region us-east-1 || \
aws autoscaling complete-lifecycle-action --lifecycle-action-result ABANDON --instance-id $INSTANCE_ID --lifecycle-hook-name devops-pro-hook --auto-scaling-group-name devopsASG --region us-east-1
