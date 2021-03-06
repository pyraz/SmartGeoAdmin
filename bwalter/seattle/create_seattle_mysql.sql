CREATE TABLE nb_seattle_records(date DATETIME, 
  time TIME, 
  ringnum FLOAT, 
  chainage DOUBLE, 
  hzoffsethead DOUBLE,
  vtoffsethead DOUBLE,
  hzoffsetartic FLOAT,
  vtoffsetartic FLOAT,
  hzoffsettail FLOAT,
  vtoffsettail FLOAT,
  tbmbearingfront FLOAT,
  tbmbearingrear FLOAT,
  no1shieldjackstroke FLOAT,
  no5shieldjackstroke FLOAT,
  no9shieldjackstroke FLOAT,
  no13shieldjackstroke FLOAT,
  avgshieldjackstroke FLOAT,
  no1shieldjackspeed FLOAT,
  no5shieldjackspeed FLOAT,
  no9shieldjackspeed FLOAT,
  no13shieldjackspeed FLOAT,
  avgshieldjackspeed FLOAT,
  pitchfront FLOAT,
  rollfront FLOAT,
  pitchrear FLOAT,
  rollrear FLOAT,
  no1articjackstroke FLOAT,
  no2articjackstroke FLOAT,
  no3articjackstroke FLOAT,
  no4articjackstroke FLOAT,
  no1bulkheadsoilpress FLOAT,
  no2bulkheadsoilpress FLOAT,
  no3bulkheadsoilpress FLOAT,
  no4bulkheadsoilpress FLOAT,
  no5bulkheadsoilpress FLOAT,
  no6bulkheadsoilpress FLOAT,
  no1screwsoilpress FLOAT,
  no2screwsoilpress FLOAT,
  cutterrevolution FLOAT,
  no1screwrevolution FLOAT,
  no2screwrevolution FLOAT,
  no1copycutterstroke FLOAT,
  no2copycutterstroke FLOAT,
  no1copycutterposition FLOAT,
  no2copycutterposition FLOAT,
  no1cuttersealtemp FLOAT,
  no2cuttersealtemp FLOAT,
  no3cuttersealtemp FLOAT,
  no4cuttersealtemp FLOAT,
  no1bearinggreasetemp FLOAT,
  no2bearinggreasetemp FLOAT,
  oiltanktemp FLOAT,
  cuttertotalrevCW FLOAT,
  cuttertotalrev2CW FLOAT,
  cuttertotalrevCCW FLOAT,
  cuttertotalrev2CCW FLOAT,
  no1gatestroke FLOAT,
  no2gatestroke FLOAT,
  totalthrustforceHIGH FLOAT,
  totalthrustforceLOW FLOAT,
  shieldhydraulicpress FLOAT,
  no1shieldjackblockpress FLOAT,
  no2shieldjackblockpress FLOAT,
  no3shieldjackblockpress FLOAT,
  no4shieldjackblockpress FLOAT,
  no1screwhydraulicpress FLOAT,
  no2screwhydraulicpress FLOAT,
  copycuthydraulicpress FLOAT,
  accumhydraulicpress FLOAT,
  tailsealgreaseinjecpress FLOAT,
  no1weardetectpress FLOAT,
  no2weardetectpress FLOAT,
  no3weardetectpress FLOAT,
  no4weardetectpress FLOAT,
  tractionleftpress FLOAT,
  tractionrightpress FLOAT,
  beltcoveyorcurrent FLOAT,
  frontsidebeltscale FLOAT,
  rearsidebeltscale FLOAT,
  frontsidebeltcounter FLOAT,
  rearsidebeltcounter FLOAT,
  no1cuttermotoramp FLOAT,
  no2cuttermotoramp FLOAT,
  no3cuttermotoramp FLOAT,
  no4cuttermotoramp FLOAT,
  no5cuttermotoramp FLOAT,
  no6cuttermotoramp FLOAT,
  no7cuttermotoramp FLOAT,
  no8cuttermotoramp FLOAT,
  no1cuttermotortorq FLOAT,
  no2cuttermotortorq FLOAT,
  no3cuttermotortorq FLOAT,
  no4cuttermotortorq FLOAT,
  no5cuttermotortorq FLOAT,
  no6cuttermotortorq FLOAT,
  no7cuttermotortorq FLOAT,
  no8cuttermotortorq FLOAT,
  no1cuttermotorfreq FLOAT,
  no2cuttermotorfreq FLOAT,
  no3cuttermotorfreq FLOAT,
  no4cuttermotorfreq FLOAT,
  no5cuttermotorfreq FLOAT,
  no6cuttermotorfreq FLOAT,
  no7cuttermotorfreq FLOAT,
  no8cuttermotorfreq FLOAT,
  leftarticangle FLOAT,
  updownarticangle FLOAT,
  pressfrontbodyupper FLOAT,
  pressfrontbodylower FLOAT,
  pressrearbodyupper FLOAT,
  pressrearbodylower FLOAT,
  no1aliquidflow FLOAT,
  no1bliquidflow FLOAT,
  no1aliquidpress FLOAT,
  no1bliquidpress FLOAT,
  no1flushingpress FLOAT,
  no1aliquidcounter FLOAT,
  no1bliquidcounter FLOAT,
  no2aliquidflow FLOAT,
  no2bliquidlfow FLOAT,
  no2aliquidpress FLOAT,
  no2bliquidpress FLOAT,
  no2flushingpress FLOAT,
  no2aliquidcounter FLOAT,
  no2bliquidcounter FLOAT,
  no3aliquidflow FLOAT,
  no3bliquidflow FLOAT,
  no3aliquidpress FLOAT,
  no3bliquidpress FLOAT,
  no3flushingpress FLOAT,
  no3aliquidcounter FLOAT,
  no3bliquidcounter FLOAT,
  no1lineselection FLOAT,
  no2lineselection FLOAT,
  no3lineselection FLOAT,
  no1solutionflow FLOAT,
  no1airflow FLOAT,
  no1foamflow FLOAT,
  no1solutionpress FLOAT,
  no1airpress FLOAT,
  no1foampress FLOAT,
  no1solutioncount FLOAT,
  no1foamcount FLOAT,
  no2solutionflow FLOAT,
  no2airflow FLOAT,
  no2foamflow FLOAT,
  no2solutionpress FLOAT,
  no2airpress FLOAT,
  no2foampress FLOAT,
  no2solutioncount FLOAT,
  no2foamcount FLOAT,
  no3solutionflow FLOAT,
  no3airflow FLOAT,
  no3foamflow FLOAT,
  no3solutionpress FLOAT,
  no3airpress FLOAT,
  no3foampress FLOAT,
  no3solutioncount FLOAT,
  no3foamcount FLOAT,
  no4solutionflow FLOAT,
  no4airflow FLOAT,
  no4foamflow FLOAT,
  no4solutionpress FLOAT,
  no4airpress FLOAT,
  no4foampress FLOAT,
  no4solutioncount FLOAT,
  no4foamcount FLOAT,
  no5soulutionflow FLOAT,
  no5airflow FLOAT,
  no5foamflow FLOAT,
  no5solutionpress FLOAT,
  no5airpress FLOAT,
  no5foampress FLOAT,
  no5solutioncount FLOAT,
  no5foamcount FLOAT,
  no1additiveflow FLOAT,
  no1additivepress FLOAT,
  no1additivecount FLOAT,
  no2addittiveflow FLOAT,
  no2additivepress FLOAT,
  no2additivecount FLOAT,
  no3additiveflow FLOAT,
  no3additivepress FLOAT,
  no3additivecount FLOAT,
  waterinjectflow FLOAT,
  waterinjectpress FLOAT,
  watercounter FLOAT,
  methanegas1 FLOAT,
  methanegas2 FLOAT,
  methanegas3 FLOAT,
  methanegas4 FLOAT,
  hydrogensulfide FLOAT,
  carbonmonoxide FLOAT,
  nitrogendioxide FLOAT,
  oxygen FLOAT,
  pressuretransduceseg1 FLOAT,
  pressuretransduceseg2 FLOAT,
  excavationmode FLOAT,
  segmentmode FLOAT,
  shieldjackextend FLOAT,
  shieldjackretract FLOAT,
  miningstart FLOAT,
  mining FLOAT,
  emergencystop FLOAT,
  gaswarning FLOAT,
  gasalarm FLOAT,
  ID MEDIUMTEXT,
  miningmode MEDIUMTEXT,
  PH FLOAT,
  vfdtemp1 FLOAT,
  vfdtemp2 FLOAT,
  vfdtemp3 FLOAT,
  vfdtemp4 FLOAT,
  vfdtemp5 FLOAT,
  vfdtemp6 FLOAT,
  vfdtemp7 FLOAT,
  vfdtemp8 FLOAT);

CREATE TABLE sb_seattle_records(date DATETIME, 
  time TIME, 
  ringnum FLOAT, 
  chainage DOUBLE, 
  hzoffsethead DOUBLE,
  vtoffsethead DOUBLE,
  hzoffsetartic FLOAT,
  vtoffsetartic FLOAT,
  hzoffsettail FLOAT,
  vtoffsettail FLOAT,
  tbmbearingfront FLOAT,
  tbmbearingrear FLOAT,
  no1shieldjackstroke FLOAT,
  no5shieldjackstroke FLOAT,
  no9shieldjackstroke FLOAT,
  no13shieldjackstroke FLOAT,
  avgshieldjackstroke FLOAT,
  no1shieldjackspeed FLOAT,
  no5shieldjackspeed FLOAT,
  no9shieldjackspeed FLOAT,
  no13shieldjackspeed FLOAT,
  avgshieldjackspeed FLOAT,
  pitchfront FLOAT,
  rollfront FLOAT,
  pitchrear FLOAT,
  rollrear FLOAT,
  no1articjackstroke FLOAT,
  no2articjackstroke FLOAT,
  no3articjackstroke FLOAT,
  no4articjackstroke FLOAT,
  no1bulkheadsoilpress FLOAT,
  no2bulkheadsoilpress FLOAT,
  no3bulkheadsoilpress FLOAT,
  no4bulkheadsoilpress FLOAT,
  no5bulkheadsoilpress FLOAT,
  no6bulkheadsoilpress FLOAT,
  no1screwsoilpress FLOAT,
  no2screwsoilpress FLOAT,
  cutterrevolution FLOAT,
  no1screwrevolution FLOAT,
  no2screwrevolution FLOAT,
  no1copycutterstroke FLOAT,
  no2copycutterstroke FLOAT,
  no1copycutterposition FLOAT,
  no2copycutterposition FLOAT,
  no1cuttersealtemp FLOAT,
  no2cuttersealtemp FLOAT,
  no3cuttersealtemp FLOAT,
  no4cuttersealtemp FLOAT,
  no1bearinggreasetemp FLOAT,
  no2bearinggreasetemp FLOAT,
  oiltanktemp FLOAT,
  cuttertotalrevCW FLOAT,
  cuttertotalrev2CW FLOAT,
  cuttertotalrevCCW FLOAT,
  cuttertotalrev2CCW FLOAT,
  no1gatestroke FLOAT,
  no2gatestroke FLOAT,
  totalthrustforceHIGH FLOAT,
  totalthrustforceLOW FLOAT,
  shieldhydraulicpress FLOAT,
  no1shieldjackblockpress FLOAT,
  no2shieldjackblockpress FLOAT,
  no3shieldjackblockpress FLOAT,
  no4shieldjackblockpress FLOAT,
  no1screwhydraulicpress FLOAT,
  no2screwhydraulicpress FLOAT,
  copycuthydraulicpress FLOAT,
  accumhydraulicpress FLOAT,
  tailsealgreaseinjecpress FLOAT,
  no1weardetectpress FLOAT,
  no2weardetectpress FLOAT,
  no3weardetectpress FLOAT,
  no4weardetectpress FLOAT,
  tractionleftpress FLOAT,
  tractionrightpress FLOAT,
  beltcoveyorcurrent FLOAT,
  frontsidebeltscale FLOAT,
  rearsidebeltscale FLOAT,
  frontsidebeltcounter FLOAT,
  rearsidebeltcounter FLOAT,
  no1cuttermotoramp FLOAT,
  no2cuttermotoramp FLOAT,
  no3cuttermotoramp FLOAT,
  no4cuttermotoramp FLOAT,
  no5cuttermotoramp FLOAT,
  no6cuttermotoramp FLOAT,
  no7cuttermotoramp FLOAT,
  no8cuttermotoramp FLOAT,
  no1cuttermotortorq FLOAT,
  no2cuttermotortorq FLOAT,
  no3cuttermotortorq FLOAT,
  no4cuttermotortorq FLOAT,
  no5cuttermotortorq FLOAT,
  no6cuttermotortorq FLOAT,
  no7cuttermotortorq FLOAT,
  no8cuttermotortorq FLOAT,
  no1cuttermotorfreq FLOAT,
  no2cuttermotorfreq FLOAT,
  no3cuttermotorfreq FLOAT,
  no4cuttermotorfreq FLOAT,
  no5cuttermotorfreq FLOAT,
  no6cuttermotorfreq FLOAT,
  no7cuttermotorfreq FLOAT,
  no8cuttermotorfreq FLOAT,
  leftarticangle FLOAT,
  updownarticangle FLOAT,
  pressfrontbodyupper FLOAT,
  pressfrontbodylower FLOAT,
  pressrearbodyupper FLOAT,
  pressrearbodylower FLOAT,
  no1aliquidflow FLOAT,
  no1bliquidflow FLOAT,
  no1aliquidpress FLOAT,
  no1bliquidpress FLOAT,
  no1flushingpress FLOAT,
  no1aliquidcounter FLOAT,
  no1bliquidcounter FLOAT,
  no2aliquidflow FLOAT,
  no2bliquidlfow FLOAT,
  no2aliquidpress FLOAT,
  no2bliquidpress FLOAT,
  no2flushingpress FLOAT,
  no2aliquidcounter FLOAT,
  no2bliquidcounter FLOAT,
  no3aliquidflow FLOAT,
  no3bliquidflow FLOAT,
  no3aliquidpress FLOAT,
  no3bliquidpress FLOAT,
  no3flushingpress FLOAT,
  no3aliquidcounter FLOAT,
  no3bliquidcounter FLOAT,
  no1lineselection FLOAT,
  no2lineselection FLOAT,
  no3lineselection FLOAT,
  no1solutionflow FLOAT,
  no1airflow FLOAT,
  no1foamflow FLOAT,
  no1solutionpress FLOAT,
  no1airpress FLOAT,
  no1foampress FLOAT,
  no1solutioncount FLOAT,
  no1foamcount FLOAT,
  no2solutionflow FLOAT,
  no2airflow FLOAT,
  no2foamflow FLOAT,
  no2solutionpress FLOAT,
  no2airpress FLOAT,
  no2foampress FLOAT,
  no2solutioncount FLOAT,
  no2foamcount FLOAT,
  no3solutionflow FLOAT,
  no3airflow FLOAT,
  no3foamflow FLOAT,
  no3solutionpress FLOAT,
  no3airpress FLOAT,
  no3foampress FLOAT,
  no3solutioncount FLOAT,
  no3foamcount FLOAT,
  no4solutionflow FLOAT,
  no4airflow FLOAT,
  no4foamflow FLOAT,
  no4solutionpress FLOAT,
  no4airpress FLOAT,
  no4foampress FLOAT,
  no4solutioncount FLOAT,
  no4foamcount FLOAT,
  no5soulutionflow FLOAT,
  no5airflow FLOAT,
  no5foamflow FLOAT,
  no5solutionpress FLOAT,
  no5airpress FLOAT,
  no5foampress FLOAT,
  no5solutioncount FLOAT,
  no5foamcount FLOAT,
  no1additiveflow FLOAT,
  no1additivepress FLOAT,
  no1additivecount FLOAT,
  no2addittiveflow FLOAT,
  no2additivepress FLOAT,
  no2additivecount FLOAT,
  no3additiveflow FLOAT,
  no3additivepress FLOAT,
  no3additivecount FLOAT,
  waterinjectflow FLOAT,
  waterinjectpress FLOAT,
  watercounter FLOAT,
  methanegas1 FLOAT,
  methanegas2 FLOAT,
  methanegas3 FLOAT,
  methanegas4 FLOAT,
  hydrogensulfide FLOAT,
  carbonmonoxide FLOAT,
  nitrogendioxide FLOAT,
  oxygen FLOAT,
  pressuretransduceseg1 FLOAT,
  pressuretransduceseg2 FLOAT,
  excavationmode FLOAT,
  segmentmode FLOAT,
  shieldjackextend FLOAT,
  shieldjackretract FLOAT,
  miningstart FLOAT,
  mining FLOAT,
  emergencystop FLOAT,
  gaswarning FLOAT,
  gasalarm FLOAT,
  ID MEDIUMTEXT,
  miningmode MEDIUMTEXT,
  PH FLOAT,
  vfdtemp1 FLOAT,
  vfdtemp2 FLOAT,
  vfdtemp3 FLOAT,
  vfdtemp4 FLOAT,
  vfdtemp5 FLOAT,
  vfdtemp6 FLOAT,
  vfdtemp7 FLOAT,
  vfdtemp8 FLOAT);