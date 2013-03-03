cat *.txt > output.txt
echo "[" > start.txt
echo "{}]" > end.txt
cat start.txt output.txt end.txt > output
rm *.txt

# sed -i 's/\\\"/"/g' output
# sed -i 's/style=\"/style=\\"/g' output
# sed -i 's/color=\"/color=\\"/g' output
# sed -i 's/\" face=\"/\\" face=\\"/g' output
# sed -i 's/\" size=\"/\\" size=\\"/g' output
# sed -i 's/\">/\\">/g' output
# sed -i 's/\\\\\"/\\"/g' output

sed -i 's/{\\\"Id\\\":/{"Id":/g' output
sed -i 's/,\\\"Name\\\":\\\"/,"Name":"/g' output
sed -i 's/\\\",\\\"UrlRewriteName\\\":/","UrlRewriteName":/g' output
sed -i 's/,\\\"Address\\\":\\\"/,"Address":"/g' output
sed -i 's/\\\",\\\"District\\\":\\\"/","District":"/g' output
sed -i 's/\\\",\\\"City\\\":\\\"/","City":"/g' output
sed -i 's/\\\",\\\"Phone\\\":\\\"/","Phone":"/g' output
sed -i 's/\\\",\\\"PicturePath\\\":\\\"/","PicturePath":"/g' output
sed -i 's/\\\",\\\"Promotions\\\":/","Promotions":/g' output
sed -i 's/,\\\"SpecialDesc\\\":\\\"/,"SpecialDesc":"/g' output
sed -i 's/,\\\"SpecialDesc\\\":/,"SpecialDesc":/g' output
sed -i 's/\\\",\\\"TotalReview\\\":/","TotalReview":/g' output
sed -i 's/\\\"TotalReview\\\":/"TotalReview":/g' output
sed -i 's/,\\\"TotalView\\\":/,"TotalView":/g' output
sed -i 's/,\\\"TotalFavourite\\\":/,"TotalFavourite":/g' output
sed -i 's/,\\\"AvgRating\\\":\\\"/,"AvgRating":"/g' output
sed -i 's/\\\",\\\"DetailUrl\\\":\\\"/","DetailUrl":"/g' output
sed -i 's/\\\",\\\"ReviewUrl\\\":\\\"/","ReviewUrl":"/g' output
sed -i 's/\\\",\\\"Latitude\\\":/","Latitude":/g' output
sed -i 's/,\\\"Longitude\\\":/,"Longitude":/g' output
sed -i 's/,\\\"MainCategoryId\\\":/,"MainCategoryId":/g' output
sed -i 's/,\\\"PictureCount\\\":/,"PictureCount":/g' output
sed -i 's/,\\\"Status\\\":/,"Status":/g' output
sed -i 's/,\\\"IsAd\\\":/,"IsAd":/g' output
sed -i 's/,\\\"IconUrl\\\":/,"IconUrl":/g' output
sed -i 's/\\\",\\\"ASCIIName\\\":/","ASCIIName":/g' output
sed -i 's/,\\\"DetailUrl\\\":\\\"/,"DetailUrl":"/g' output


# sed -i 's/\\\\r//g' output
# sed -i 's/\\\\n//g' output
# sed -i 's/\\\\t//g' output


sed -i 's/,,/,/g' output
sed -i 's/,{}]/]/g' output
sed -i 's/,,/,/g' output
sed -i 's/,,/,/g' output

#


mv output output.txt

# {\"Id\":
# ,\"Name\":\"
# \",\"UrlRewriteName\":
# ,\"Address\":\"
# \",\"District\":\"
# \",\"City\":\"
# \",\"Phone\":\"
# \",\"PicturePath\":\"
# \",\"Promotions\":
# ,\"SpecialDesc\":\"
# \",\"TotalReview\":
# ,\"TotalView\":
# ,\"TotalFavourite\":
# ,\"AvgRating\":\"
# \",\"DetailUrl\":\"
# \",\"ReviewUrl\":\"
# \",\"Latitude\":
# ,\"Longitude\":
# ,\"MainCategoryId\":
# ,\"PictureCount\":
# ,\"Status\":
# ,\"IsAd\":
# ,\"IconUrl\":
# 
# {\\\"Id\\\":
# ,\\\"Name\\\":\\\"
# \\\",\\\"UrlRewriteName\\\":
# ,\\\"Address\\\":\\\"
# \\\",\\\"District\\\":\\\"
# \\\",\\\"City\\\":\\\"
# \\\",\\\"Phone\\\":\\\"
# \\\",\\\"PicturePath\\\":\\\"
# \\\",\\\"Promotions\\\":
# ,\\\"SpecialDesc\\\":\\\"
# \\\",\\\"TotalReview\\\":
# ,\\\"TotalView\\\":
# ,\\\"TotalFavourite\\\":
# ,\\\"AvgRating\\\":\\\"
# \\\",\\\"DetailUrl\\\":\\\"
# \\\",\\\"ReviewUrl\\\":\\\"
# \\\",\\\"Latitude\\\":
# ,\\\"Longitude\\\":
# ,\\\"MainCategoryId\\\":
# ,\\\"PictureCount\\\":
# ,\\\"Status\\\":
# ,\\\"IsAd\\\":
# ,\\\"IconUrl\\\":
