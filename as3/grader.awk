
function avg(a, b, c){
	return (a + b + c) / 3
}


BEGIN {
	FS=","
}

NR>1 {
	names[$2] = $3 + $4 + $5
	avgg[$2] = avg($3, $4, $5)	

}

END {	
	minScore = 301
	maxScore = -1		
	
	print "Student total scores:"
	for(name in names){
		print name ": " names[name]

		if(names[name] > maxScore){
			maxScore = names[name]
			maxName = name
		}

		if(names[name] < minScore){
			minScore = names[name]
			minName = name		
		}
		
		print "avg: " avgg[name]

		if(avgg[name] >= 70){
			print "Passed"
		}else{
			print "Failed"
		}	
	}
	print "highest score "  maxName  ": "  maxScore
	print "lowest score " minName  ": " minScore
}

