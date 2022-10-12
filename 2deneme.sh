#!/bin/bash
touch testfile
echo `pwd` > testfile
echo `ls -la` >> testfile
echo `date` >> testfile
cd /home/ab255640
echo `ls -la` >> testfile
cd \~/haberci
echo `ls -la` >> testfile
