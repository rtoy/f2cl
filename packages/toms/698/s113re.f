      SUBROUTINE S113RE(WTLENG,W,G,ERRCOF,RULPTS)
C***BEGIN PROLOGUE S113RE
C***AUTHOR   Jarle Berntsen, EDB-senteret,
C            University of Bergen, Thormohlens gt. 55,
C            N-5008 Bergen, NORWAY
C***PURPOSE S113RE computes abscissas and weights of a 3 dimensional
C            integration rule of degree 11.
C            Two null rules of degree 9, one null rule of degree 7
C            and one null rule of degree 5 to be used in error
C            estimation are also computed.
C***DESCRIPTION S113RE will select the correct values of the abscissas
C            and corresponding weights for different
C            integration rules and null rules and assign them to G
C            and W.
C            The heuristic error coefficients ERRCOF
C            will also be computed.
C
C
C   ON ENTRY
C
C     WTLENG Integer.
C            The number of weights in each of the rules.
C
C   ON RETURN
C
C     W      Real array of dimension (5,WTLENG).
C            The weights for the basic and null rules.
C            W(1,1),...,W(1,WTLENG) are weights for the basic rule.
C            W(I,1),...,W(I,WTLENG), for I > 1 are null rule weights.
C     G      Real array of dimension (NDIM,WTLENG).
C            The fully symmetric sum generators for the rules.
C            G(1,J),...,G(NDIM,J) are the generators for the points
C            associated with the the Jth weights.
C     ERRCOF Real array of dimension 6.
C            Heuristic error coefficients that are used in the
C            error estimation in BASRUL.
C     RULPTS Real array of dimension WTLENG.
C            The number of points used by each generator.
C
C***REFERENCES  J.Berntsen, Cautious adaptive numerical integration
C               over the 3-cube, Reports in Informatics 17, Dept. of
C               Inf.,Univ. of Bergen, Norway, 1985.
C               J.Berntsen and T.O.Espelid, On the construction of
C               higher degree three-dimensional embedded integration
C               rules, SIAM J. Numer. Anal.,Vol. 25,No. 1, pp.222-234,
C               1988.
C***ROUTINES CALLED-NONE
C***END PROLOGUE S113RE
C
C   Global variables.
C
      INTEGER WTLENG
      REAL W(5,WTLENG),G(3,WTLENG),ERRCOF(6)
      REAL RULPTS(WTLENG)
C
C   Local variables.
C
      INTEGER I,J
      REAL DIM3G(14)
      REAL DIM3W(13,5)
C
      DATA (DIM3G(I),I=1,14)/0.1900000000000000E+00,
     +     0.5000000000000000E+00,0.7500000000000000E+00,
     +     0.8000000000000000E+00,0.9949999999999999E+00,
     +     0.9987344998351400E+00,0.7793703685672423E+00,
     +     0.9999698993088767E+00,0.7902637224771788E+00,
     +     0.4403396687650737E+00,0.4378478459006862E+00,
     +     0.9549373822794593E+00,0.9661093133630748E+00,
     +     0.4577105877763134E+00/
C
      DATA (DIM3W(I,1),I=1,13)/0.7923078151105734E-02,
     +     0.6797177392788080E-01,0.1086986538805825E-02,
     +     0.1838633662212829E+00,0.3362119777829031E-01,
     +     0.1013751123334062E-01,0.1687648683985235E-02,
     +     0.1346468564512807E+00,0.1750145884600386E-02,
     +     0.7752336383837454E-01,0.2461864902770251E+00,
     +     0.6797944868483039E-01,0.1419962823300713E-01/
C
      DATA (DIM3W(I,2),I=1,13)/0.1715006248224684E+01,
     +     - .3755893815889209E+00,0.1488632145140549E+00,
     +     - .2497046640620823E+00,0.1792501419135204E+00,
     +     0.3446126758973890E-02, - .5140483185555825E-02,
     +     0.6536017839876425E-02, - .6513454939229700E-03,
     +     - .6304672433547204E-02,0.1266959399788263E-01,
     +     - .5454241018647931E-02,0.4826995274768427E-02/
C
      DATA (DIM3W(I,3),I=1,13)/0.1936014978949526E+01,
     +     - .3673449403754268E+00,0.2929778657898176E-01,
     +     - .1151883520260315E+00,0.5086658220872218E-01,
     +     0.4453911087786469E-01, - .2287828257125900E-01,
     +     0.2908926216345833E-01, - .2898884350669207E-02,
     +     - .2805963413307495E-01,0.5638741361145884E-01,
     +     - .2427469611942451E-01,0.2148307034182882E-01/
C
      DATA (DIM3W(I,4),I=1,13)/0.5170828195605760E+00,
     +     0.1445269144914044E-01, - .3601489663995932E+00,
     +     0.3628307003418485E+00,0.7148802650872729E-02,
     +     - .9222852896022966E-01,0.1719339732471725E-01,
     +     - .1021416537460350E+00, - .7504397861080493E-02,
     +     0.1648362537726711E-01,0.5234610158469334E-01,
     +     0.1445432331613066E-01,0.3019236275367777E-02/
C
      DATA (DIM3W(I,5),I=1,13)/0.2054404503818520E+01,
     +     0.1377759988490120E-01, - .5768062917904410E+00,
     +     0.3726835047700328E-01,0.6814878939777219E-02,
     +     0.5723169733851849E-01, - .4493018743811285E-01,
     +     0.2729236573866348E-01,0.3547473950556990E-03,
     +     0.1571366799739551E-01,0.4990099219278567E-01,
     +     0.1377915552666770E-01,0.2878206423099872E-02/
C
C***FIRST EXECUTABLE STATEMENT S113RE
C
C   Assign values to W.
C
      DO 10 I = 1,13
          DO 10 J = 1,5
              W(J,I) = DIM3W(I,J)
10    CONTINUE
C
C   Assign values to G.
C
      DO 20 I = 1,3
          DO 20 J = 1,13
              G(I,J) = 0
20    CONTINUE
      G(1,2) = DIM3G(1)
      G(1,3) = DIM3G(2)
      G(1,4) = DIM3G(3)
      G(1,5) = DIM3G(4)
      G(1,6) = DIM3G(5)
      G(1,7) = DIM3G(6)
      G(2,7) = G(1,7)
      G(1,8) = DIM3G(7)
      G(2,8) = G(1,8)
      G(1,9) = DIM3G(8)
      G(2,9) = G(1,9)
      G(3,9) = G(1,9)
      G(1,10) = DIM3G(9)
      G(2,10) = G(1,10)
      G(3,10) = G(1,10)
      G(1,11) = DIM3G(10)
      G(2,11) = G(1,11)
      G(3,11) = G(1,11)
      G(1,12) = DIM3G(12)
      G(2,12) = DIM3G(11)
      G(3,12) = G(2,12)
      G(1,13) = DIM3G(13)
      G(2,13) = G(1,13)
      G(3,13) = DIM3G(14)
C
C   Assign values to RULPTS.
C
      RULPTS(1) = 1
      RULPTS(2) = 6
      RULPTS(3) = 6
      RULPTS(4) = 6
      RULPTS(5) = 6
      RULPTS(6) = 6
      RULPTS(7) = 12
      RULPTS(8) = 12
      RULPTS(9) = 8
      RULPTS(10) = 8
      RULPTS(11) = 8
      RULPTS(12) = 24
      RULPTS(13) = 24
C
C   Assign values to ERRCOF.
C
      ERRCOF(1) = 4
      ERRCOF(2) = 4.
      ERRCOF(3) = 0.5
      ERRCOF(4) = 3.
      ERRCOF(5) = 0.5
      ERRCOF(6) = 0.25
C
C***END S113RE
C
      RETURN
      END
