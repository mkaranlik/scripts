#!/bin/bash
touch testfile
echo `pwd` > testfile
echo `ls -la` >> testfile
echo `date` >> testfile
cd ~
echo `ls -la` >> testfile
