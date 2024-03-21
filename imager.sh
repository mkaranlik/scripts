#!/bin/sh

option="${1}"
case ${option} in


   -i)
	   image="${2}"

	   if [ -z "$2" ] ; then
		   echo "Please type an image name that exists"
	   else
		   image1=`echo \`echo $image | awk -F"[/]" '{print $NF}'\``
		   docker pull $image
		   docker tag $image $repository/$image1
		   docker push $repository/$image1
	   fi

	   ;;

   -f) FILE="${2}"

	   if [ -z "$2" ] ; then
		   echo "Please type a filename that exists"
	   else
		   if ! [ -f  $FILE ] ; then
			   echo "File does not exist check filename"
		   else
			   echo "Pulling Check!"
			   while read i;
			   do
				   image1=`echo \`echo $i | awk -F"[/]" '{print $NF}'\``
				   docker pull $i
				   docker tag $i $repository/$image1
				   docker push $repository/$image1
			   done < $FILE
		   fi
	   fi

	   ;;
   *)
	   echo " "
	   echo "################## imager USAGE ###################"
	   echo " "
     	   echo "`basename ${0}`"
	   echo "		-i type image name to be pulled"
	   echo " 		-f type file name that contains images"
	   echo " "
	   exit 1
	   ;;
esac
