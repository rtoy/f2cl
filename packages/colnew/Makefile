FFLAGS = -g

SRC = approx.f \
	appsln.f \
	colnew.f \
	consts.f \
	contrl.f \
	daxpy.f \
	ddot.f \
	dgefa.f \
	dgesl.f \
	dmzsol.f \
	dscal.f \
	errchk.f \
	factrb.f \
	fcblok.f \
	gblock.f \
	gderiv.f \
	horder.f \
	idamax.f \
	lsyslv.f \
	newmsh.f \
	rkbas.f \
	sbblok.f \
	shiftb.f \
	skale.f \
	subbak.f \
	subfor.f \
	vmonde.f \
	vwblok.f

libcolnew.a : $(SRC:f=o)
	$(AR) $(ARFLAGS) -cr $@ $^

prob1 : libcolnew.a
	cd problem-1; $(MAKE)

prob2 : libcolnew.a
	cd problem-2; $(MAKE)

prob3 : libcolnew.a
	cd problem-3; $(MAKE)

tests : prob1 prob2 prob3
