#!/bin/bash
echo "unzip start"

end=`echo $1 | tail -c 8`
if [ "$end" == "tar.tgz" ]; then 
	tar zxvf $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi


end=`echo $1 | tail -c 7`
if [ "$end" == "tar.gz" ]; then 
	tar zxvf $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi


end=`echo $1 | tail -c 7`
if [ "$end" == "tar.bz2" ]; then 
	tar -I lbzip2 -cvf $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi


end=`echo $1 | tail -c 6`
if [ "$end" == "tar.xz" ]; then 
	tar Jxvf $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi


end=`echo $1 | tail -c 6`
if [ "$end" == "tar.bz" ]; then 
	tar jxvf $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi

end=`echo $1 | tail -c 6`
if [ "$end" == "tar.Z" ]; then 
	tar Zxvf $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi


end=`echo $1 | tail -c 4`
echo "$end"
if [ "$end" == "tar" ]
then 
	echo "tar"
	tar xvf $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi

end=`echo $1 | tail -c 3`
if [ "$end" == "gz" ]; then 
	gzip -d $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi



end=`echo $1 | tail -c 3`
if [ "$end" == "bz" ]; then 
	bunzip2 $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi


end=`echo $1 | tail -c 4`
if [ "$end" == "bz2" ]; then 
	bzip2 -d $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi

end=`echo $1 | tail -c 3`
if [ "$end" == "xz" ]; then 
	xz -d $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi

end=`echo $1 | tail -c 2`
if [ "$end" == "Z" ]; then 
	uncompress $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi



end=`echo $1 | tail -c 4`
if [ "$end" == "tgz" ]; then 
	tar zxvf $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi

end=`echo $1 | tail -c 3`
if [ "$end" == "7z" ]; then 
	7z x $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi

end=`echo $1 | tail -c 4`
echo $1
if [ "$end" == "zip" ]; then 
	unzip $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi

end=`echo $1 | tail -c 4`
if [ "$end" == "rar" ]; then 
	unrar e $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi

end=`echo $1 | tail -c 4`
if [ "$end" == "lha" ]; then 
	lha -e $1 && echo "Cheers! unzip down" || echo "unzip fail"
    exit 0;
fi

echo "Sorry, unzip FAIL! Please check your input file!"
exit 1;
