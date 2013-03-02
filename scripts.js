function getData(citylocation, startpage, endpage) {
	var url = 'http://www.foody.vn/' + citylocation +'/dia-diem?vt=row&st=1&append=true&provinceId=null&categoryId=null&page=' + startpage;
	var filename = citylocation + '-' + startpage +'.txt';
	$.get(url, function(data) {
		if (startpage == endpage + 1) exit();
		if (startpage > data.totalResult/12 + 2) exit();

		$.post("http://crawl.ganday.com/index.php", { data: JSON.stringify(data.restaurants), filename: filename, city: citylocation});

		getData(citylocation, startpage+1, endpage);
	});
}

//getData("ho-chi-minh", 1, 1);

$(".con-area li a").each(function(){
	var city = $(this).attr('href');
	city = city.replace("/","");
	getData(city, 1, 10000);
});
