#!/bin/bash

#-----------------------------------------------------------------------------------------------------------------
#CREATE PACKAGES
#-----------------------------------------------------------------------------------------------------------------
helm package ibm-transadv-dev
helm package jenkins
helm package kubernetes-dashboard
helm package mariadb
helm package microclimate
helm package mongodb
helm package nginx
helm package nodered
helm package tomcat
helm package urbancode
helm package velocity



#-----------------------------------------------------------------------------------------------------------------
#REMOVE PACKAGES in helm-repos
#-----------------------------------------------------------------------------------------------------------------
rm ../2_LOAD/helm-repos/*.tgz



#-----------------------------------------------------------------------------------------------------------------
#MOVE PACKAGES
#-----------------------------------------------------------------------------------------------------------------
mv  ./*.tgz ../2_LOAD/helm-repos/
