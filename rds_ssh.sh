# launch this to create localhost:9432 tunnel to codebarn rds instance
# via codebarn ec2 instance, using codebarn_ohio.pem keys
# which must already be added via ssh-add -K codebarn_ohio.pem
ssh -NL 9432:codebarnrdsfree.c5ag4t891wvw.us-east-2.rds.amazonaws.com:5432 ec2-user@ec2-18-188-132-11.us-east-2.compute.amazonaws.com -v
