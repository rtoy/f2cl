FFLAGS = -g

SRC = dfsub.f \
	dgsub.f \
	exact.f \
	fsub.f \
	gsub.f \
	prob1.f

prob1 : $(SRC:f=o)
	$(F77) -o prob1 $^ ../libcolnew.a

clean : 
	$(RM) *.o
