test_R_function_pileibnitz <- function(len){

#https://www.wikihow.com/Calculate-Pi
#returns pi by infinite Gregory-Leibnitz series of len elements

	p=0
	nenner=1
	for (i in 1:len){
		if (i%%2==1){ #ungerade
			p = p+4/nenner
		} else {
			p = p-4/nenner
		}
		nenner=nenner+2
	}
	return(p)
}