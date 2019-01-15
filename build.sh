#!/bin/sh

docker pull ubuntu:16.04
docker build -t nexelldocker/fileserver-base .

cd deploy_releases
docker build -t nexelldocker/fileserver-releases .

cd deploy_snapshot
docker build -t nexelldocker/fileserver-snapshot .
