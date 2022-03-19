#!/bin/bash
vpc="vpc-XXXXXXXXXXXXXXXX" 
aws --profile fixpdq ec2 describe-internet-gateways --filters 'Name=attachment.vpc-id,Values='$vpc | grep InternetGatewayId
aws --profile fixpdq ec2 describe-subnets --filters 'Name=vpc-id,Values='$vpc | grep SubnetId
aws --profile fixpdq ec2 describe-route-tables --filters 'Name=vpc-id,Values='$vpc | grep RouteTableId
aws --profile fixpdq ec2 describe-network-acls --filters 'Name=vpc-id,Values='$vpc | grep NetworkAclId
aws --profile fixpdq ec2 describe-vpc-peering-connections --filters 'Name=requester-vpc-info.vpc-id,Values='$vpc | grep VpcPeeringConnectionId
aws --profile fixpdq ec2 describe-vpc-endpoints --filters 'Name=vpc-id,Values='$vpc | grep VpcEndpointId
aws --profile fixpdq ec2 describe-nat-gateways --filter 'Name=vpc-id,Values='$vpc | grep NatGatewayId
aws --profile fixpdq ec2 describe-security-groups --filters 'Name=vpc-id,Values='$vpc | grep GroupId
aws --profile fixpdq ec2 describe-instances --filters 'Name=vpc-id,Values='$vpc | grep InstanceId
aws --profile fixpdq ec2 describe-vpn-connections --filters 'Name=vpc-id,Values='$vpc | grep VpnConnectionId
aws --profile fixpdq ec2 describe-vpn-gateways --filters 'Name=attachment.vpc-id,Values='$vpc | grep VpnGatewayId
aws --profile fixpdq ec2 describe-network-interfaces --filters 'Name=vpc-id,Values='$vpc | grep NetworkInterfaceId
