mkdir -p ./lib
mkdir -p ./objs
( cd ./src; /usr/bin/gmake clean; /usr/bin/gmake )
rm -f ../lib/libfftpack.a ../objs/c1f2kb.o ../objs/c1f2kf.o ../objs/c1f3kb.o ../objs/c1f3kf.o ../objs/c1f4kb.o ../objs/c1f4kf.o ../objs/c1f5kb.o ../objs/c1f5kf.o ../objs/c1fgkb.o ../objs/c1fgkf.o ../objs/c1fm1b.o ../objs/c1fm1f.o ../objs/cfft1b.o ../objs/cfft1f.o ../objs/cfft1i.o ../objs/cfft2b.o ../objs/cfft2f.o ../objs/cfft2i.o ../objs/cfftmb.o ../objs/cfftmf.o ../objs/cfftmi.o ../objs/cmf2kb.o ../objs/cmf2kf.o ../objs/cmf3kb.o ../objs/cmf3kf.o ../objs/cmf4kb.o ../objs/cmf4kf.o ../objs/cmf5kb.o ../objs/cmf5kf.o ../objs/cmfgkb.o ../objs/cmfgkf.o ../objs/cmfm1b.o ../objs/cmfm1f.o ../objs/cosq1b.o ../objs/cosq1f.o ../objs/cosq1i.o ../objs/cosqb1.o ../objs/cosqf1.o ../objs/cosqmb.o ../objs/cosqmf.o ../objs/cosqmi.o ../objs/cost1b.o ../objs/cost1f.o ../objs/cost1i.o ../objs/costb1.o ../objs/costf1.o ../objs/costmb.o ../objs/costmf.o ../objs/costmi.o ../objs/factor.o ../objs/mcfti1.o ../objs/mcsqb1.o ../objs/mcsqf1.o ../objs/mcstb1.o ../objs/mcstf1.o ../objs/mradb2.o ../objs/mradb3.o ../objs/mradb4.o ../objs/mradb5.o ../objs/mradbg.o ../objs/mradf2.o ../objs/mradf3.o ../objs/mradf4.o ../objs/mradf5.o ../objs/mradfg.o ../objs/mrftb1.o ../objs/mrftf1.o ../objs/mrfti1.o ../objs/msntb1.o ../objs/msntf1.o ../objs/r1f2kb.o ../objs/r1f2kf.o ../objs/r1f3kb.o ../objs/r1f3kf.o ../objs/r1f4kb.o ../objs/r1f4kf.o ../objs/r1f5kb.o ../objs/r1f5kf.o ../objs/r1fgkb.o ../objs/r1fgkf.o ../objs/r2w.o ../objs/rfft1b.o ../objs/rfft1f.o ../objs/rfft1i.o ../objs/rfft2b.o ../objs/rfft2f.o ../objs/rfft2i.o ../objs/rfftb1.o ../objs/rfftf1.o ../objs/rffti1.o ../objs/rfftmb.o ../objs/rfftmf.o ../objs/rfftmi.o ../objs/sinq1b.o ../objs/sinq1f.o ../objs/sinq1i.o ../objs/sinqmb.o ../objs/sinqmf.o ../objs/sinqmi.o ../objs/sint1b.o ../objs/sint1f.o ../objs/sint1i.o ../objs/sintb1.o ../objs/sintf1.o ../objs/sintmb.o ../objs/sintmf.o ../objs/sintmi.o ../objs/tables.o ../objs/w2r.o ../objs/xercon.o ../objs/xerfft.o 
gfortran -c c1f2kb.f -o ../objs/c1f2kb.o
gfortran -c c1f2kf.f -o ../objs/c1f2kf.o
gfortran -c c1f3kb.f -o ../objs/c1f3kb.o
gfortran -c c1f3kf.f -o ../objs/c1f3kf.o
gfortran -c c1f4kb.f -o ../objs/c1f4kb.o
gfortran -c c1f4kf.f -o ../objs/c1f4kf.o
gfortran -c c1f5kb.f -o ../objs/c1f5kb.o
gfortran -c c1f5kf.f -o ../objs/c1f5kf.o
gfortran -c c1fgkb.f -o ../objs/c1fgkb.o
gfortran -c c1fgkf.f -o ../objs/c1fgkf.o
gfortran -c c1fm1b.f -o ../objs/c1fm1b.o
gfortran -c c1fm1f.f -o ../objs/c1fm1f.o
gfortran -c cfft1b.f -o ../objs/cfft1b.o
gfortran -c cfft1f.f -o ../objs/cfft1f.o
gfortran -c cfft1i.f -o ../objs/cfft1i.o
gfortran -c cfft2b.f -o ../objs/cfft2b.o
gfortran -c cfft2f.f -o ../objs/cfft2f.o
gfortran -c cfft2i.f -o ../objs/cfft2i.o
gfortran -c cfftmb.f -o ../objs/cfftmb.o
gfortran -c cfftmf.f -o ../objs/cfftmf.o
gfortran -c cfftmi.f -o ../objs/cfftmi.o
gfortran -c cmf2kb.f -o ../objs/cmf2kb.o
gfortran -c cmf2kf.f -o ../objs/cmf2kf.o
gfortran -c cmf3kb.f -o ../objs/cmf3kb.o
gfortran -c cmf3kf.f -o ../objs/cmf3kf.o
gfortran -c cmf4kb.f -o ../objs/cmf4kb.o
gfortran -c cmf4kf.f -o ../objs/cmf4kf.o
gfortran -c cmf5kb.f -o ../objs/cmf5kb.o
gfortran -c cmf5kf.f -o ../objs/cmf5kf.o
gfortran -c cmfgkb.f -o ../objs/cmfgkb.o
gfortran -c cmfgkf.f -o ../objs/cmfgkf.o
gfortran -c cmfm1b.f -o ../objs/cmfm1b.o
gfortran -c cmfm1f.f -o ../objs/cmfm1f.o
gfortran -c cosq1b.f -o ../objs/cosq1b.o
gfortran -c cosq1f.f -o ../objs/cosq1f.o
gfortran -c cosq1i.f -o ../objs/cosq1i.o
gfortran -c cosqb1.f -o ../objs/cosqb1.o
gfortran -c cosqf1.f -o ../objs/cosqf1.o
gfortran -c cosqmb.f -o ../objs/cosqmb.o
gfortran -c cosqmf.f -o ../objs/cosqmf.o
gfortran -c cosqmi.f -o ../objs/cosqmi.o
gfortran -c cost1b.f -o ../objs/cost1b.o
gfortran -c cost1f.f -o ../objs/cost1f.o
gfortran -c cost1i.f -o ../objs/cost1i.o
gfortran -c costb1.f -o ../objs/costb1.o
gfortran -c costf1.f -o ../objs/costf1.o
gfortran -c costmb.f -o ../objs/costmb.o
gfortran -c costmf.f -o ../objs/costmf.o
gfortran -c costmi.f -o ../objs/costmi.o
gfortran -c factor.f -o ../objs/factor.o
gfortran -c mcfti1.f -o ../objs/mcfti1.o
gfortran -c mcsqb1.f -o ../objs/mcsqb1.o
gfortran -c mcsqf1.f -o ../objs/mcsqf1.o
gfortran -c mcstb1.f -o ../objs/mcstb1.o
gfortran -c mcstf1.f -o ../objs/mcstf1.o
gfortran -c mradb2.f -o ../objs/mradb2.o
gfortran -c mradb3.f -o ../objs/mradb3.o
gfortran -c mradb4.f -o ../objs/mradb4.o
gfortran -c mradb5.f -o ../objs/mradb5.o
gfortran -c mradbg.f -o ../objs/mradbg.o
gfortran -c mradf2.f -o ../objs/mradf2.o
gfortran -c mradf3.f -o ../objs/mradf3.o
gfortran -c mradf4.f -o ../objs/mradf4.o
gfortran -c mradf5.f -o ../objs/mradf5.o
gfortran -c mradfg.f -o ../objs/mradfg.o
gfortran -c mrftb1.f -o ../objs/mrftb1.o
gfortran -c mrftf1.f -o ../objs/mrftf1.o
gfortran -c mrfti1.f -o ../objs/mrfti1.o
gfortran -c msntb1.f -o ../objs/msntb1.o
gfortran -c msntf1.f -o ../objs/msntf1.o
gfortran -c r1f2kb.f -o ../objs/r1f2kb.o
gfortran -c r1f2kf.f -o ../objs/r1f2kf.o
gfortran -c r1f3kb.f -o ../objs/r1f3kb.o
gfortran -c r1f3kf.f -o ../objs/r1f3kf.o
gfortran -c r1f4kb.f -o ../objs/r1f4kb.o
gfortran -c r1f4kf.f -o ../objs/r1f4kf.o
gfortran -c r1f5kb.f -o ../objs/r1f5kb.o
gfortran -c r1f5kf.f -o ../objs/r1f5kf.o
gfortran -c r1fgkb.f -o ../objs/r1fgkb.o
gfortran -c r1fgkf.f -o ../objs/r1fgkf.o
gfortran -c r2w.f -o ../objs/r2w.o
gfortran -c rfft1b.f -o ../objs/rfft1b.o
gfortran -c rfft1f.f -o ../objs/rfft1f.o
gfortran -c rfft1i.f -o ../objs/rfft1i.o
gfortran -c rfft2b.f -o ../objs/rfft2b.o
gfortran -c rfft2f.f -o ../objs/rfft2f.o
gfortran -c rfft2i.f -o ../objs/rfft2i.o
gfortran -c rfftb1.f -o ../objs/rfftb1.o
gfortran -c rfftf1.f -o ../objs/rfftf1.o
gfortran -c rffti1.f -o ../objs/rffti1.o
gfortran -c rfftmb.f -o ../objs/rfftmb.o
gfortran -c rfftmf.f -o ../objs/rfftmf.o
gfortran -c rfftmi.f -o ../objs/rfftmi.o
gfortran -c sinq1b.f -o ../objs/sinq1b.o
gfortran -c sinq1f.f -o ../objs/sinq1f.o
gfortran -c sinq1i.f -o ../objs/sinq1i.o
gfortran -c sinqmb.f -o ../objs/sinqmb.o
gfortran -c sinqmf.f -o ../objs/sinqmf.o
gfortran -c sinqmi.f -o ../objs/sinqmi.o
gfortran -c sint1b.f -o ../objs/sint1b.o
gfortran -c sint1f.f -o ../objs/sint1f.o
gfortran -c sint1i.f -o ../objs/sint1i.o
gfortran -c sintb1.f -o ../objs/sintb1.o
gfortran -c sintf1.f -o ../objs/sintf1.o
gfortran -c sintmb.f -o ../objs/sintmb.o
gfortran -c sintmf.f -o ../objs/sintmf.o
gfortran -c sintmi.f -o ../objs/sintmi.o
gfortran -c tables.f -o ../objs/tables.o
gfortran -c w2r.f -o ../objs/w2r.o
gfortran -c xercon.f -o ../objs/xercon.o
gfortran -c xerfft.f -o ../objs/xerfft.o
/usr/bin/ar -rv ../lib/libfftpack.a ../objs/c1f2kb.o ../objs/c1f2kf.o ../objs/c1f3kb.o ../objs/c1f3kf.o ../objs/c1f4kb.o ../objs/c1f4kf.o ../objs/c1f5kb.o ../objs/c1f5kf.o ../objs/c1fgkb.o ../objs/c1fgkf.o ../objs/c1fm1b.o ../objs/c1fm1f.o ../objs/cfft1b.o ../objs/cfft1f.o ../objs/cfft1i.o ../objs/cfft2b.o ../objs/cfft2f.o ../objs/cfft2i.o ../objs/cfftmb.o ../objs/cfftmf.o ../objs/cfftmi.o ../objs/cmf2kb.o ../objs/cmf2kf.o ../objs/cmf3kb.o ../objs/cmf3kf.o ../objs/cmf4kb.o ../objs/cmf4kf.o ../objs/cmf5kb.o ../objs/cmf5kf.o ../objs/cmfgkb.o ../objs/cmfgkf.o ../objs/cmfm1b.o ../objs/cmfm1f.o ../objs/cosq1b.o ../objs/cosq1f.o ../objs/cosq1i.o ../objs/cosqb1.o ../objs/cosqf1.o ../objs/cosqmb.o ../objs/cosqmf.o ../objs/cosqmi.o ../objs/cost1b.o ../objs/cost1f.o ../objs/cost1i.o ../objs/costb1.o ../objs/costf1.o ../objs/costmb.o ../objs/costmf.o ../objs/costmi.o ../objs/factor.o ../objs/mcfti1.o ../objs/mcsqb1.o ../objs/mcsqf1.o ../objs/mcstb1.o ../objs/mcstf1.o ../objs/mradb2.o ../objs/mradb3.o ../objs/mradb4.o ../objs/mradb5.o ../objs/mradbg.o ../objs/mradf2.o ../objs/mradf3.o ../objs/mradf4.o ../objs/mradf5.o ../objs/mradfg.o ../objs/mrftb1.o ../objs/mrftf1.o ../objs/mrfti1.o ../objs/msntb1.o ../objs/msntf1.o ../objs/r1f2kb.o ../objs/r1f2kf.o ../objs/r1f3kb.o ../objs/r1f3kf.o ../objs/r1f4kb.o ../objs/r1f4kf.o ../objs/r1f5kb.o ../objs/r1f5kf.o ../objs/r1fgkb.o ../objs/r1fgkf.o ../objs/r2w.o ../objs/rfft1b.o ../objs/rfft1f.o ../objs/rfft1i.o ../objs/rfft2b.o ../objs/rfft2f.o ../objs/rfft2i.o ../objs/rfftb1.o ../objs/rfftf1.o ../objs/rffti1.o ../objs/rfftmb.o ../objs/rfftmf.o ../objs/rfftmi.o ../objs/sinq1b.o ../objs/sinq1f.o ../objs/sinq1i.o ../objs/sinqmb.o ../objs/sinqmf.o ../objs/sinqmi.o ../objs/sint1b.o ../objs/sint1f.o ../objs/sint1i.o ../objs/sintb1.o ../objs/sintf1.o ../objs/sintmb.o ../objs/sintmf.o ../objs/sintmi.o ../objs/tables.o ../objs/w2r.o ../objs/xercon.o ../objs/xerfft.o 
ar: creating archive ../lib/libfftpack.a
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
( cd ./test; /usr/bin/gmake clean; /usr/bin/gmake )
rm -f  tcfft1.exe trfft1.exe tcosq1.exe tcost1.exe tsinq1.exe tsint1.exe tcfft2.exe trfft2.exe
rm -f tcfft1.exe
gfortran tcfft1.f -o tcfft1.exe -L../lib -l fftpack
./tcfft1.exe
 PROGRAM TCFFT1 AND RELATED MESSAGES:
 CFFT1 BACKWARD-FORWARD MAX ERROR =  4.23832603E-07
 PROGRAM TCFFT1 AND RELATED MESSAGES:
 CFFT1 FORWARD-BACKWARD MAX ERROR =  4.21468485E-07
 END PROGRAM TCFFT1 AND RELATED MESSAGES

rm -f trfft1.exe
gfortran trfft1.f -o trfft1.exe -L../lib -l fftpack
./trfft1.exe
 PROGRAM TRFFT1 AND RELATED MESSAGES:
 RFFT1 FORWARD-BACKWARD MAX ERROR =  2.98023224E-07
 RFFT1 BACKWARD-FORWARD MAX ERROR =  3.10596079E-07
 END PROGRAM TRFFT1 AND RELATED MESSAGES

rm -f tcosq1.exe
gfortran tcosq1.f -o tcosq1.exe -L../lib -l fftpack
./tcosq1.exe
 PROGRAM TCOSQ1 AND RELATED MESSAGES:
 COSQ1 FORWARD-BACKWARD MAX ERROR =  3.57627869E-07
 COSQ1 BACKWARD-FORWARD MAX ERROR =  2.98023224E-07
 END PROGRAM TCOSQ1 AND RELATED MESSAGES

rm -f tcost1.exe
gfortran tcost1.f -o tcost1.exe -L../lib -l fftpack
./tcost1.exe
 PROGRAM TCOST1 AND RELATED MESSAGES:
 COST1 FORWARD-BACKWARD MAX ERROR =  8.46385956E-05
 COST1 BACKWARD-FORWARD MAX ERROR =  4.41372395E-05
 END PROGRAM TCOST1 AND RELATED MESSAGES

rm -f tsinq1.exe
gfortran tsinq1.f -o tsinq1.exe -L../lib -l fftpack
./tsinq1.exe
 PROGRAM TSINQ1 AND RELATED MESSAGES:
 SINQ1 FORWARD-BACKWARD MAX ERROR =  4.17232513E-07
 SINQ1 BACKWARD-FORWARD MAX ERROR =  4.76837158E-07
 END PROGRAM TSINQ1 AND RELATED MESSAGES

rm -f tsint1.exe
gfortran tsint1.f -o tsint1.exe -L../lib -l fftpack
./tsint1.exe
 PROGRAM TSINT1 AND RELATED MESSAGES:
 SINT1 FORWARD-BACKWARD MAX ERROR =  1.51991844E-05
 SINT1 BACKWARD-FORWARD MAX ERROR =  1.26957893E-05
 END PROGRAM TSINT1 AND RELATED MESSAGES

rm -f tcfft2.exe
gfortran tcfft2.f -o tcfft2.exe -L../lib -l fftpack
./tcfft2.exe
 PROGRAM TCFFT2 AND RELATED MESSAGES:
 CFFT2 FORWARD-BACKWARD MAX ERROR =  6.88040018E-07
 CFFT2 BACKWARD-FORWARD MAX ERROR =  6.22290770E-07
 END PROGRAM TCFFT2 AND RELATED MESSAGES

rm -f trfft2.exe
gfortran trfft2.f -o trfft2.exe -L../lib -l fftpack
./trfft2.exe
 PROGRAM TRFFT2 AND RELATED MESSAGES:
 RFFT2 FORWARD-BACKWARD MAX ERROR =  4.76837158E-07
 RFFT2 BACKWARD-FORWARD MAX ERROR =  5.36441803E-07
 END PROGRAM TRFFT2 AND RELATED MESSAGES

