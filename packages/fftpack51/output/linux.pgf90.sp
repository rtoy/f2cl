mkdir -p ./lib
mkdir -p ./objs
( cd ./src; gmake clean; gmake )
gmake[1]: Entering directory `/glade/scratch/valent/d1/fftpack5.1/src'
rm -f ../lib/libfftpack.a ../objs/c1f2kb.o ../objs/c1f2kf.o ../objs/c1f3kb.o ../objs/c1f3kf.o ../objs/c1f4kb.o ../objs/c1f4kf.o ../objs/c1f5kb.o ../objs/c1f5kf.o ../objs/c1fgkb.o ../objs/c1fgkf.o ../objs/c1fm1b.o ../objs/c1fm1f.o ../objs/cfft1b.o ../objs/cfft1f.o ../objs/cfft1i.o ../objs/cfft2b.o ../objs/cfft2f.o ../objs/cfft2i.o ../objs/cfftmb.o ../objs/cfftmf.o ../objs/cfftmi.o ../objs/cmf2kb.o ../objs/cmf2kf.o ../objs/cmf3kb.o ../objs/cmf3kf.o ../objs/cmf4kb.o ../objs/cmf4kf.o ../objs/cmf5kb.o ../objs/cmf5kf.o ../objs/cmfgkb.o ../objs/cmfgkf.o ../objs/cmfm1b.o ../objs/cmfm1f.o ../objs/cosq1b.o ../objs/cosq1f.o ../objs/cosq1i.o ../objs/cosqb1.o ../objs/cosqf1.o ../objs/cosqmb.o ../objs/cosqmf.o ../objs/cosqmi.o ../objs/cost1b.o ../objs/cost1f.o ../objs/cost1i.o ../objs/costb1.o ../objs/costf1.o ../objs/costmb.o ../objs/costmf.o ../objs/costmi.o ../objs/factor.o ../objs/mcfti1.o ../objs/mcsqb1.o ../objs/mcsqf1.o ../objs/mcstb1.o ../objs/mcstf1.o ../objs/mradb2.o ../objs/mradb3.o ../objs/mradb4.o ../objs/mradb5.o ../objs/mradbg.o ../objs/mradf2.o ../objs/mradf3.o ../objs/mradf4.o ../objs/mradf5.o ../objs/mradfg.o ../objs/mrftb1.o ../objs/mrftf1.o ../objs/mrfti1.o ../objs/msntb1.o ../objs/msntf1.o ../objs/r1f2kb.o ../objs/r1f2kf.o ../objs/r1f3kb.o ../objs/r1f3kf.o ../objs/r1f4kb.o ../objs/r1f4kf.o ../objs/r1f5kb.o ../objs/r1f5kf.o ../objs/r1fgkb.o ../objs/r1fgkf.o ../objs/r2w.o ../objs/rfft1b.o ../objs/rfft1f.o ../objs/rfft1i.o ../objs/rfft2b.o ../objs/rfft2f.o ../objs/rfft2i.o ../objs/rfftb1.o ../objs/rfftf1.o ../objs/rffti1.o ../objs/rfftmb.o ../objs/rfftmf.o ../objs/rfftmi.o ../objs/sinq1b.o ../objs/sinq1f.o ../objs/sinq1i.o ../objs/sinqmb.o ../objs/sinqmf.o ../objs/sinqmi.o ../objs/sint1b.o ../objs/sint1f.o ../objs/sint1i.o ../objs/sintb1.o ../objs/sintf1.o ../objs/sintmb.o ../objs/sintmf.o ../objs/sintmi.o ../objs/tables.o ../objs/w2r.o ../objs/xercon.o ../objs/xerfft.o 
gmake[1]: Leaving directory `/glade/scratch/valent/d1/fftpack5.1/src'
gmake[1]: Entering directory `/glade/scratch/valent/d1/fftpack5.1/src'
pgf90 -module ../lib -I../lib -c c1f2kb.f -o ../objs/c1f2kb.o
pgf90 -module ../lib -I../lib -c c1f2kf.f -o ../objs/c1f2kf.o
pgf90 -module ../lib -I../lib -c c1f3kb.f -o ../objs/c1f3kb.o
pgf90 -module ../lib -I../lib -c c1f3kf.f -o ../objs/c1f3kf.o
pgf90 -module ../lib -I../lib -c c1f4kb.f -o ../objs/c1f4kb.o
pgf90 -module ../lib -I../lib -c c1f4kf.f -o ../objs/c1f4kf.o
pgf90 -module ../lib -I../lib -c c1f5kb.f -o ../objs/c1f5kb.o
pgf90 -module ../lib -I../lib -c c1f5kf.f -o ../objs/c1f5kf.o
pgf90 -module ../lib -I../lib -c c1fgkb.f -o ../objs/c1fgkb.o
pgf90 -module ../lib -I../lib -c c1fgkf.f -o ../objs/c1fgkf.o
pgf90 -module ../lib -I../lib -c c1fm1b.f -o ../objs/c1fm1b.o
pgf90 -module ../lib -I../lib -c c1fm1f.f -o ../objs/c1fm1f.o
pgf90 -module ../lib -I../lib -c cfft1b.f -o ../objs/cfft1b.o
pgf90 -module ../lib -I../lib -c cfft1f.f -o ../objs/cfft1f.o
pgf90 -module ../lib -I../lib -c cfft1i.f -o ../objs/cfft1i.o
pgf90 -module ../lib -I../lib -c cfft2b.f -o ../objs/cfft2b.o
pgf90 -module ../lib -I../lib -c cfft2f.f -o ../objs/cfft2f.o
pgf90 -module ../lib -I../lib -c cfft2i.f -o ../objs/cfft2i.o
pgf90 -module ../lib -I../lib -c cfftmb.f -o ../objs/cfftmb.o
pgf90 -module ../lib -I../lib -c cfftmf.f -o ../objs/cfftmf.o
pgf90 -module ../lib -I../lib -c cfftmi.f -o ../objs/cfftmi.o
pgf90 -module ../lib -I../lib -c cmf2kb.f -o ../objs/cmf2kb.o
pgf90 -module ../lib -I../lib -c cmf2kf.f -o ../objs/cmf2kf.o
pgf90 -module ../lib -I../lib -c cmf3kb.f -o ../objs/cmf3kb.o
pgf90 -module ../lib -I../lib -c cmf3kf.f -o ../objs/cmf3kf.o
pgf90 -module ../lib -I../lib -c cmf4kb.f -o ../objs/cmf4kb.o
pgf90 -module ../lib -I../lib -c cmf4kf.f -o ../objs/cmf4kf.o
pgf90 -module ../lib -I../lib -c cmf5kb.f -o ../objs/cmf5kb.o
pgf90 -module ../lib -I../lib -c cmf5kf.f -o ../objs/cmf5kf.o
pgf90 -module ../lib -I../lib -c cmfgkb.f -o ../objs/cmfgkb.o
pgf90 -module ../lib -I../lib -c cmfgkf.f -o ../objs/cmfgkf.o
pgf90 -module ../lib -I../lib -c cmfm1b.f -o ../objs/cmfm1b.o
pgf90 -module ../lib -I../lib -c cmfm1f.f -o ../objs/cmfm1f.o
pgf90 -module ../lib -I../lib -c cosq1b.f -o ../objs/cosq1b.o
pgf90 -module ../lib -I../lib -c cosq1f.f -o ../objs/cosq1f.o
pgf90 -module ../lib -I../lib -c cosq1i.f -o ../objs/cosq1i.o
pgf90 -module ../lib -I../lib -c cosqb1.f -o ../objs/cosqb1.o
pgf90 -module ../lib -I../lib -c cosqf1.f -o ../objs/cosqf1.o
pgf90 -module ../lib -I../lib -c cosqmb.f -o ../objs/cosqmb.o
pgf90 -module ../lib -I../lib -c cosqmf.f -o ../objs/cosqmf.o
pgf90 -module ../lib -I../lib -c cosqmi.f -o ../objs/cosqmi.o
pgf90 -module ../lib -I../lib -c cost1b.f -o ../objs/cost1b.o
pgf90 -module ../lib -I../lib -c cost1f.f -o ../objs/cost1f.o
pgf90 -module ../lib -I../lib -c cost1i.f -o ../objs/cost1i.o
pgf90 -module ../lib -I../lib -c costb1.f -o ../objs/costb1.o
pgf90 -module ../lib -I../lib -c costf1.f -o ../objs/costf1.o
pgf90 -module ../lib -I../lib -c costmb.f -o ../objs/costmb.o
pgf90 -module ../lib -I../lib -c costmf.f -o ../objs/costmf.o
pgf90 -module ../lib -I../lib -c costmi.f -o ../objs/costmi.o
pgf90 -module ../lib -I../lib -c factor.f -o ../objs/factor.o
pgf90 -module ../lib -I../lib -c mcfti1.f -o ../objs/mcfti1.o
pgf90 -module ../lib -I../lib -c mcsqb1.f -o ../objs/mcsqb1.o
pgf90 -module ../lib -I../lib -c mcsqf1.f -o ../objs/mcsqf1.o
pgf90 -module ../lib -I../lib -c mcstb1.f -o ../objs/mcstb1.o
pgf90 -module ../lib -I../lib -c mcstf1.f -o ../objs/mcstf1.o
pgf90 -module ../lib -I../lib -c mradb2.f -o ../objs/mradb2.o
pgf90 -module ../lib -I../lib -c mradb3.f -o ../objs/mradb3.o
pgf90 -module ../lib -I../lib -c mradb4.f -o ../objs/mradb4.o
pgf90 -module ../lib -I../lib -c mradb5.f -o ../objs/mradb5.o
pgf90 -module ../lib -I../lib -c mradbg.f -o ../objs/mradbg.o
pgf90 -module ../lib -I../lib -c mradf2.f -o ../objs/mradf2.o
pgf90 -module ../lib -I../lib -c mradf3.f -o ../objs/mradf3.o
pgf90 -module ../lib -I../lib -c mradf4.f -o ../objs/mradf4.o
pgf90 -module ../lib -I../lib -c mradf5.f -o ../objs/mradf5.o
pgf90 -module ../lib -I../lib -c mradfg.f -o ../objs/mradfg.o
pgf90 -module ../lib -I../lib -c mrftb1.f -o ../objs/mrftb1.o
pgf90 -module ../lib -I../lib -c mrftf1.f -o ../objs/mrftf1.o
pgf90 -module ../lib -I../lib -c mrfti1.f -o ../objs/mrfti1.o
pgf90 -module ../lib -I../lib -c msntb1.f -o ../objs/msntb1.o
pgf90 -module ../lib -I../lib -c msntf1.f -o ../objs/msntf1.o
pgf90 -module ../lib -I../lib -c r1f2kb.f -o ../objs/r1f2kb.o
pgf90 -module ../lib -I../lib -c r1f2kf.f -o ../objs/r1f2kf.o
pgf90 -module ../lib -I../lib -c r1f3kb.f -o ../objs/r1f3kb.o
pgf90 -module ../lib -I../lib -c r1f3kf.f -o ../objs/r1f3kf.o
pgf90 -module ../lib -I../lib -c r1f4kb.f -o ../objs/r1f4kb.o
pgf90 -module ../lib -I../lib -c r1f4kf.f -o ../objs/r1f4kf.o
pgf90 -module ../lib -I../lib -c r1f5kb.f -o ../objs/r1f5kb.o
pgf90 -module ../lib -I../lib -c r1f5kf.f -o ../objs/r1f5kf.o
pgf90 -module ../lib -I../lib -c r1fgkb.f -o ../objs/r1fgkb.o
pgf90 -module ../lib -I../lib -c r1fgkf.f -o ../objs/r1fgkf.o
pgf90 -module ../lib -I../lib -c r2w.f -o ../objs/r2w.o
pgf90 -module ../lib -I../lib -c rfft1b.f -o ../objs/rfft1b.o
pgf90 -module ../lib -I../lib -c rfft1f.f -o ../objs/rfft1f.o
pgf90 -module ../lib -I../lib -c rfft1i.f -o ../objs/rfft1i.o
pgf90 -module ../lib -I../lib -c rfft2b.f -o ../objs/rfft2b.o
pgf90 -module ../lib -I../lib -c rfft2f.f -o ../objs/rfft2f.o
pgf90 -module ../lib -I../lib -c rfft2i.f -o ../objs/rfft2i.o
pgf90 -module ../lib -I../lib -c rfftb1.f -o ../objs/rfftb1.o
pgf90 -module ../lib -I../lib -c rfftf1.f -o ../objs/rfftf1.o
pgf90 -module ../lib -I../lib -c rffti1.f -o ../objs/rffti1.o
pgf90 -module ../lib -I../lib -c rfftmb.f -o ../objs/rfftmb.o
pgf90 -module ../lib -I../lib -c rfftmf.f -o ../objs/rfftmf.o
pgf90 -module ../lib -I../lib -c rfftmi.f -o ../objs/rfftmi.o
pgf90 -module ../lib -I../lib -c sinq1b.f -o ../objs/sinq1b.o
pgf90 -module ../lib -I../lib -c sinq1f.f -o ../objs/sinq1f.o
pgf90 -module ../lib -I../lib -c sinq1i.f -o ../objs/sinq1i.o
pgf90 -module ../lib -I../lib -c sinqmb.f -o ../objs/sinqmb.o
pgf90 -module ../lib -I../lib -c sinqmf.f -o ../objs/sinqmf.o
pgf90 -module ../lib -I../lib -c sinqmi.f -o ../objs/sinqmi.o
pgf90 -module ../lib -I../lib -c sint1b.f -o ../objs/sint1b.o
pgf90 -module ../lib -I../lib -c sint1f.f -o ../objs/sint1f.o
pgf90 -module ../lib -I../lib -c sint1i.f -o ../objs/sint1i.o
pgf90 -module ../lib -I../lib -c sintb1.f -o ../objs/sintb1.o
pgf90 -module ../lib -I../lib -c sintf1.f -o ../objs/sintf1.o
pgf90 -module ../lib -I../lib -c sintmb.f -o ../objs/sintmb.o
pgf90 -module ../lib -I../lib -c sintmf.f -o ../objs/sintmf.o
pgf90 -module ../lib -I../lib -c sintmi.f -o ../objs/sintmi.o
pgf90 -module ../lib -I../lib -c tables.f -o ../objs/tables.o
pgf90 -module ../lib -I../lib -c w2r.f -o ../objs/w2r.o
pgf90 -module ../lib -I../lib -c xercon.f -o ../objs/xercon.o
pgf90 -module ../lib -I../lib -c xerfft.f -o ../objs/xerfft.o
/usr/bin/ar -rv ../lib/libfftpack.a ../objs/c1f2kb.o ../objs/c1f2kf.o ../objs/c1f3kb.o ../objs/c1f3kf.o ../objs/c1f4kb.o ../objs/c1f4kf.o ../objs/c1f5kb.o ../objs/c1f5kf.o ../objs/c1fgkb.o ../objs/c1fgkf.o ../objs/c1fm1b.o ../objs/c1fm1f.o ../objs/cfft1b.o ../objs/cfft1f.o ../objs/cfft1i.o ../objs/cfft2b.o ../objs/cfft2f.o ../objs/cfft2i.o ../objs/cfftmb.o ../objs/cfftmf.o ../objs/cfftmi.o ../objs/cmf2kb.o ../objs/cmf2kf.o ../objs/cmf3kb.o ../objs/cmf3kf.o ../objs/cmf4kb.o ../objs/cmf4kf.o ../objs/cmf5kb.o ../objs/cmf5kf.o ../objs/cmfgkb.o ../objs/cmfgkf.o ../objs/cmfm1b.o ../objs/cmfm1f.o ../objs/cosq1b.o ../objs/cosq1f.o ../objs/cosq1i.o ../objs/cosqb1.o ../objs/cosqf1.o ../objs/cosqmb.o ../objs/cosqmf.o ../objs/cosqmi.o ../objs/cost1b.o ../objs/cost1f.o ../objs/cost1i.o ../objs/costb1.o ../objs/costf1.o ../objs/costmb.o ../objs/costmf.o ../objs/costmi.o ../objs/factor.o ../objs/mcfti1.o ../objs/mcsqb1.o ../objs/mcsqf1.o ../objs/mcstb1.o ../objs/mcstf1.o ../objs/mradb2.o ../objs/mradb3.o ../objs/mradb4.o ../objs/mradb5.o ../objs/mradbg.o ../objs/mradf2.o ../objs/mradf3.o ../objs/mradf4.o ../objs/mradf5.o ../objs/mradfg.o ../objs/mrftb1.o ../objs/mrftf1.o ../objs/mrfti1.o ../objs/msntb1.o ../objs/msntf1.o ../objs/r1f2kb.o ../objs/r1f2kf.o ../objs/r1f3kb.o ../objs/r1f3kf.o ../objs/r1f4kb.o ../objs/r1f4kf.o ../objs/r1f5kb.o ../objs/r1f5kf.o ../objs/r1fgkb.o ../objs/r1fgkf.o ../objs/r2w.o ../objs/rfft1b.o ../objs/rfft1f.o ../objs/rfft1i.o ../objs/rfft2b.o ../objs/rfft2f.o ../objs/rfft2i.o ../objs/rfftb1.o ../objs/rfftf1.o ../objs/rffti1.o ../objs/rfftmb.o ../objs/rfftmf.o ../objs/rfftmi.o ../objs/sinq1b.o ../objs/sinq1f.o ../objs/sinq1i.o ../objs/sinqmb.o ../objs/sinqmf.o ../objs/sinqmi.o ../objs/sint1b.o ../objs/sint1f.o ../objs/sint1i.o ../objs/sintb1.o ../objs/sintf1.o ../objs/sintmb.o ../objs/sintmf.o ../objs/sintmi.o ../objs/tables.o ../objs/w2r.o ../objs/xercon.o ../objs/xerfft.o 
/usr/bin/ar: creating ../lib/libfftpack.a
a - ../objs/c1f2kb.o
a - ../objs/c1f2kf.o
a - ../objs/c1f3kb.o
a - ../objs/c1f3kf.o
a - ../objs/c1f4kb.o
a - ../objs/c1f4kf.o
a - ../objs/c1f5kb.o
a - ../objs/c1f5kf.o
a - ../objs/c1fgkb.o
a - ../objs/c1fgkf.o
a - ../objs/c1fm1b.o
a - ../objs/c1fm1f.o
a - ../objs/cfft1b.o
a - ../objs/cfft1f.o
a - ../objs/cfft1i.o
a - ../objs/cfft2b.o
a - ../objs/cfft2f.o
a - ../objs/cfft2i.o
a - ../objs/cfftmb.o
a - ../objs/cfftmf.o
a - ../objs/cfftmi.o
a - ../objs/cmf2kb.o
a - ../objs/cmf2kf.o
a - ../objs/cmf3kb.o
a - ../objs/cmf3kf.o
a - ../objs/cmf4kb.o
a - ../objs/cmf4kf.o
a - ../objs/cmf5kb.o
a - ../objs/cmf5kf.o
a - ../objs/cmfgkb.o
a - ../objs/cmfgkf.o
a - ../objs/cmfm1b.o
a - ../objs/cmfm1f.o
a - ../objs/cosq1b.o
a - ../objs/cosq1f.o
a - ../objs/cosq1i.o
a - ../objs/cosqb1.o
a - ../objs/cosqf1.o
a - ../objs/cosqmb.o
a - ../objs/cosqmf.o
a - ../objs/cosqmi.o
a - ../objs/cost1b.o
a - ../objs/cost1f.o
a - ../objs/cost1i.o
a - ../objs/costb1.o
a - ../objs/costf1.o
a - ../objs/costmb.o
a - ../objs/costmf.o
a - ../objs/costmi.o
a - ../objs/factor.o
a - ../objs/mcfti1.o
a - ../objs/mcsqb1.o
a - ../objs/mcsqf1.o
a - ../objs/mcstb1.o
a - ../objs/mcstf1.o
a - ../objs/mradb2.o
a - ../objs/mradb3.o
a - ../objs/mradb4.o
a - ../objs/mradb5.o
a - ../objs/mradbg.o
a - ../objs/mradf2.o
a - ../objs/mradf3.o
a - ../objs/mradf4.o
a - ../objs/mradf5.o
a - ../objs/mradfg.o
a - ../objs/mrftb1.o
a - ../objs/mrftf1.o
a - ../objs/mrfti1.o
a - ../objs/msntb1.o
a - ../objs/msntf1.o
a - ../objs/r1f2kb.o
a - ../objs/r1f2kf.o
a - ../objs/r1f3kb.o
a - ../objs/r1f3kf.o
a - ../objs/r1f4kb.o
a - ../objs/r1f4kf.o
a - ../objs/r1f5kb.o
a - ../objs/r1f5kf.o
a - ../objs/r1fgkb.o
a - ../objs/r1fgkf.o
a - ../objs/r2w.o
a - ../objs/rfft1b.o
a - ../objs/rfft1f.o
a - ../objs/rfft1i.o
a - ../objs/rfft2b.o
a - ../objs/rfft2f.o
a - ../objs/rfft2i.o
a - ../objs/rfftb1.o
a - ../objs/rfftf1.o
a - ../objs/rffti1.o
a - ../objs/rfftmb.o
a - ../objs/rfftmf.o
a - ../objs/rfftmi.o
a - ../objs/sinq1b.o
a - ../objs/sinq1f.o
a - ../objs/sinq1i.o
a - ../objs/sinqmb.o
a - ../objs/sinqmf.o
a - ../objs/sinqmi.o
a - ../objs/sint1b.o
a - ../objs/sint1f.o
a - ../objs/sint1i.o
a - ../objs/sintb1.o
a - ../objs/sintf1.o
a - ../objs/sintmb.o
a - ../objs/sintmf.o
a - ../objs/sintmi.o
a - ../objs/tables.o
a - ../objs/w2r.o
a - ../objs/xercon.o
a - ../objs/xerfft.o
gmake[1]: Leaving directory `/glade/scratch/valent/d1/fftpack5.1/src'
( cd ./test; gmake clean; gmake )
gmake[1]: Entering directory `/glade/scratch/valent/d1/fftpack5.1/test'
rm -f  tcfft1.exe trfft1.exe tcosq1.exe tcost1.exe tsinq1.exe tsint1.exe tcfft2.exe trfft2.exe
gmake[1]: Leaving directory `/glade/scratch/valent/d1/fftpack5.1/test'
gmake[1]: Entering directory `/glade/scratch/valent/d1/fftpack5.1/test'
rm -f tcfft1.exe
pgf90 -module ../lib -I../lib tcfft1.f -o tcfft1.exe -L../lib -l fftpack
./tcfft1.exe
FORTRAN STOP
 PROGRAM TCFFT1 AND RELATED MESSAGES:
 CFFT1 BACKWARD-FORWARD MAX ERROR =   3.7252903E-07
 PROGRAM TCFFT1 AND RELATED MESSAGES:
 CFFT1 FORWARD-BACKWARD MAX ERROR =   3.4755180E-07
 END PROGRAM TCFFT1 AND RELATED MESSAGES

rm -f trfft1.exe
pgf90 -module ../lib -I../lib trfft1.f -o trfft1.exe -L../lib -l fftpack
./trfft1.exe
FORTRAN STOP
 PROGRAM TRFFT1 AND RELATED MESSAGES:
 RFFT1 FORWARD-BACKWARD MAX ERROR =   3.2782555E-07
 RFFT1 BACKWARD-FORWARD MAX ERROR =   4.9918890E-07
 END PROGRAM TRFFT1 AND RELATED MESSAGES

rm -f tcosq1.exe
pgf90 -module ../lib -I../lib tcosq1.f -o tcosq1.exe -L../lib -l fftpack
./tcosq1.exe
FORTRAN STOP
 PROGRAM TCOSQ1 AND RELATED MESSAGES:
 COSQ1 FORWARD-BACKWARD MAX ERROR =   4.1723251E-07
 COSQ1 BACKWARD-FORWARD MAX ERROR =   3.5762787E-07
 END PROGRAM TCOSQ1 AND RELATED MESSAGES

rm -f tcost1.exe
pgf90 -module ../lib -I../lib tcost1.f -o tcost1.exe -L../lib -l fftpack
./tcost1.exe
FORTRAN STOP
 PROGRAM TCOST1 AND RELATED MESSAGES:
 COST1 FORWARD-BACKWARD MAX ERROR =   1.4972687E-04
 COST1 BACKWARD-FORWARD MAX ERROR =   7.5340271E-05
 END PROGRAM TCOST1 AND RELATED MESSAGES

rm -f tsinq1.exe
pgf90 -module ../lib -I../lib tsinq1.f -o tsinq1.exe -L../lib -l fftpack
./tsinq1.exe
FORTRAN STOP
 PROGRAM TSINQ1 AND RELATED MESSAGES:
 SINQ1 FORWARD-BACKWARD MAX ERROR =   4.1723251E-07
 SINQ1 BACKWARD-FORWARD MAX ERROR =   5.3644180E-07
 END PROGRAM TSINQ1 AND RELATED MESSAGES

rm -f tsint1.exe
pgf90 -module ../lib -I../lib tsint1.f -o tsint1.exe -L../lib -l fftpack
./tsint1.exe
FORTRAN STOP
 PROGRAM TSINT1 AND RELATED MESSAGES:
 SINT1 FORWARD-BACKWARD MAX ERROR =   4.8816204E-05
 SINT1 BACKWARD-FORWARD MAX ERROR =   4.3094158E-05
 END PROGRAM TSINT1 AND RELATED MESSAGES

rm -f tcfft2.exe
pgf90 -module ../lib -I../lib tcfft2.f -o tcfft2.exe -L../lib -l fftpack
./tcfft2.exe
FORTRAN STOP
 PROGRAM TCFFT2 AND RELATED MESSAGES:
 CFFT2 FORWARD-BACKWARD MAX ERROR =   7.1773496E-07
 CFFT2 BACKWARD-FORWARD MAX ERROR =   5.7961495E-07
 END PROGRAM TCFFT2 AND RELATED MESSAGES

rm -f trfft2.exe
pgf90 -module ../lib -I../lib trfft2.f -o trfft2.exe -L../lib -l fftpack
./trfft2.exe
FORTRAN STOP
 PROGRAM TRFFT2 AND RELATED MESSAGES:
 RFFT2 FORWARD-BACKWARD MAX ERROR =   6.5565109E-07
 RFFT2 BACKWARD-FORWARD MAX ERROR =   6.5565109E-07
 END PROGRAM TRFFT2 AND RELATED MESSAGES

gmake[1]: Leaving directory `/glade/scratch/valent/d1/fftpack5.1/test'
