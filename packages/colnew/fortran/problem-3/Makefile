FFLAGS = -g

SRC = \
	dfsub.f  \
	dgsub.f \
	fsub.f \
	gsub.f \
	prob3.f \
	solutn.f

prob3 : $(SRC:f=o)
	$(FC) -o prob3 $^ ../libcolnew.a

clean : 
	$(RM) *.o
