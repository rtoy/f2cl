FFLAGS = -g

SRC = \
	dfsub.f  \
	dgsub.f \
	fsub.f \
	gsub.f \
	prob2.f \
	solutn.f

prob2 : $(SRC:f=o)
	$(FC) -o prob2 $^ ../libcolnew.a

clean : 
	$(RM) *.o
