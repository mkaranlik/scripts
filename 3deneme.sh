#!/bin/bash
touch testfile
echo `pwd` > testfile
echo `ls -la` >> testfile
echo `date` >> testfile
echo `ls -la /home/ab255640` >> testfile
