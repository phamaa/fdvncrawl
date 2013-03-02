cat *.txt > output.txt
echo "[" > start.txt
echo "{}]" > end.txt
cat start.txt output.txt end.txt > output
rm *.txt

sed -i 's/\\\\r//g' output
sed -i 's/\\\\n//g' output
sed -i 's/\\\\t//g' output
sed -i 's/\\\"/"/g' output
sed -i 's/\\\\\"/\\"/g' output
sed -i 's/,,/,/g' output
sed -i 's/,{}]/]/g' output
sed -i 's/<span style=\"/<span style=\\"/g' output
sed -i 's/;\">/;\\">/g' output

mv output output.txt