for f in *.json
do
	sed -i 's/\\\\r//g' $f
	sed -i 's/\\\\n//g' $f
	sed -i 's/\\\\t//g' $f
	sed -i 's/\\\"/"/g' $f
	sed -i 's/\\\\\"/\\"/g' $f
	sed -i 's/,,/,/g' $f
	sed -i 's/,{}]/]/g' $f
done

ls *.json|xargs -n200|awk ' {i++;system("mkdir dir"i);system("mv "$0" -t dir"i)}'q
