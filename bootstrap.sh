datadir=data
ls *.txt|xargs -n100|awk ' {i++;system("mkdir dir"i);system("mv "$0" -t dir"i)}'q
mkdir $datadir
mv dir* $datadir/

files=`ls $datadir`
for file in $files; do
	cp rewrite.sh $datadir/$file/
	cd $datadir/$file/
	echo "start rewriting $file"
	chmod 777 rewrite.sh
	./rewrite.sh
	echo "writing $file done"
	rm rewrite.sh
	mv output.txt $file.json
	cd ../../
done
