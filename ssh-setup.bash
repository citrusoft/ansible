#!/bin/bash
ssh-key-gen
# www
ssh-copy-id vagrant@192.168.61.12
# db
ssh-copy-id vagrant@192.168.61.11
# dbel
ssh-copy-id vagrant@192.168.61.14
# lb
ssh-copy-id vagrant@192.168.61.13

