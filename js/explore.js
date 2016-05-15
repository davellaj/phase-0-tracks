function reverse(str){
	var wordReverse = "";
	for (var i = str.length - 1; i >=0; i-=1){
		wordReverse += str[i];
	}
	return wordReverse;
}

reverse("hello");