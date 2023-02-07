#!/bin/bash

mkdir ~/katalog |true
sudo docker run -v ~/katalog:/katalog -ti ubuntu:22.04 /bin/bash 
