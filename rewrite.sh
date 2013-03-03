cat *.txt > output.txt
echo "[" > start.txt
echo "{}]" > end.txt
cat start.txt output.txt end.txt > output
rm *.txt

sed -i 's/\\\"/"/g' output
#sed -i 's/\"#585858\"/\\"#585858\\"/g' output
sed -i 's/style=\"/style=\\"/g' output
sed -i 's/color=\"/color=\\"/g' output
sed -i 's/\" face=\"/\\" face=\\"/g' output
sed -i 's/\" size=\"/\\" size=\\"/g' output




#sed -i 's/face=\"/face=\\"/g' output
sed -i 's/\">/\\">/g' output




sed -i 's/\\\\r//g' output
sed -i 's/\\\\n//g' output
sed -i 's/\\\\t//g' output

sed -i 's/\\\\\"/\\"/g' output
sed -i 's/,,/,/g' output
sed -i 's/,{}]/]/g' output


mv output output.txt

# {"Id":
# ,"Name":"
# ","UrlRewriteName":
# ,"Address":"
# ","District":"
# ","City":"
# ","Phone":"
# ","PicturePath":"
# ","Promotions":
# ,"SpecialDesc":"
# ","TotalReview":
# ,"TotalView":
# ,"TotalFavourite":
# ,"AvgRating":"
# ","DetailUrl":"
# ","ReviewUrl":"
# ","Latitude":
# ,"Longitude":
# ,"MainCategoryId":
# ,"PictureCount":
# ,"Status":
# ,"IsAd":
# ,"IconUrl":