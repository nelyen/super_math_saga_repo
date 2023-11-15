#standardSQL

with

control as (-- Control Group Sample: 385

SELECT
*,
'control_group' as group_type
FROM king-ds-recruit-candidate-914.abtest.activity

WHERE
playerid IN (34186,	72305,	88845,	70738,	81070,	20422,	40976,	22995,	35445,	8234,	15510,	44812,	47198,	38632,	52269,	27026,	26230,	70065,	90597,	64155,	91949,	23360,	10264,	36649,	61305,	32961,	51574,	30939,	90394,	79625,	28276,	61251,	89088,	12044,	10845,	51462,	6847,	32186,	27167,	26595,	47211,	47809,	74401,	83551,	48360,	23580,	40769,	79694,	47412,	66613,	67257,	89473,	17142,	28141,	82886,	6224,	69055,	21043,	34439,	60015,	70082,	54759,	70534,	39895,	88391,	75960,	30719,	98160,	41919,	28292,	12881,	40382,	74317,	56847,	41734,	35483,	22144,	97115,	31896,	56333,	68466,	21430,	8077,	74159,	988,	92515,	64615,	33125,	34867,	30988,	13706,	35378,	34342,	52702,	23683,	72169,	30827,	66856,	95634,	62385,	5256,	57139,	94065,	44854,	60357,	53506,	68309,	5429,	56109,	34300,	39184,	38204,	56312,	91432,	34603,	91726,	38970,	25051,	59993,	16716,	121586,	138061,	163397,	196126,	140248,	199939,	124466,	100709,	177802,	150480,	161559,	163055,	153011,	167077,	101062,	102796,	157323,	191822,	158493,	124757,	173717,	132105,	196345,	204982,	100558,	202774,	210849,	182119,	141802,	126349,	155728,	132079,	191053,	206276,	105061,	129403,	199636,	192407,	114319,	103795,	187035,	136933,	126819,	106354,	129392,	151391,	174989,	134753,	123155,	209522,	147391,	185188,	106554,	168239,	165071,	167228,	163182,	156439,	175357,	157195,	169355,	191898,	131801,	99813,	131016,	138242,	117735,	143800,	209874,	152391,	204221,	207907,	194428,	149868,	210375,	113878,	164215,	201235,	174441,	108736,	114503,	128190,	137533,	118350,	141064,	177677,	206273,	204773,	173254,	122696,	137282,	104441,	119569,	111762,	167763,	100186,	182109,	204976,	135062,	107936,	139781,	104948,	117893,	201443,	129054,	151729,	160468,	181092,	187561,	151381,	173005,	181983,	158428,	174680,	114383,	111146,	151797,	131373,	177776,	205097,	197271,	114925,	145676,	112997,	171410,	189700,	277690,	218153,	247699,	219261,	251340,	266484,	296796,	279978,	307623,	243975,	287650,	293999,	315758,	265629,	242002,	296415,	267224,	246490,	253181,	215827,	277858,	241158,	218936,	233093,	285286,	271816,	215606,	284214,	310720,	217090,	306897,	244281,	285257,	241737,	230682,	229354,	261834,	308241,	238173,	213218,	261096,	311386,	272118,	239242,	236573,	217880,	309323,	227398,	239922,	278101,	306133,	271729,	217204,	303226,	271526,	247055,	248360,	225389,	263841,	245490,	254928,	270402,	278006,	306750,	283267,	222731,	307938,	222660,	311853,	299543,	271515,	250128,	273270,	285777,	304931,	259772,	282338,	290015,	309452,	222942,	312226,	294994,	310041,	299415,	261933,	307473,	299555,	248003,	228977,	269391,	244882,	238280,	249615,	308517,	270200,	230418,	308337,	293489,	311108,	299276,	301979,	231303,	283761,	299329,	291706,	309545,	244327,	273299,	250568,	309255,	251535,	300940,	233329,	226208,	264704,	239607,	264068,	303705,	221422,	220230,	273405,	313151,	288234,	271077,	231845,	248433,	241854,	225166,	218609,	291919,	279473,	295801,	216129,	229425,	353943,	350570,	371961,	345343,	405900)
AND activity_date between '2017-05-04' and '2017-05-22'
)

, test as (-- Test Group Sample: 385

SELECT
*,
'test_group' as group_type
FROM king-ds-recruit-candidate-914.abtest.activity

WHERE
playerid IN (72816,	69703,	87208,	36226,	47691,	47586,	23238,	3628,	10834,	39375,	64083,	45949,	39077,	80213,	63240,	21436,	4152,	51834,	95190,	34713,	50627,	93267,	17875,	2470,	51072,	41391,	105111,	205170,	203116,	133562,	107254,	119496,	118550,	111077,	124028,	145758,	147709,	210585,	146256,	112753,	115524,	115149,	138779,	176762,	113573,	184545,	170967,	180300,	157823,	185143,	107088,	108692,	185295,	180104,	170619,	124372,	184858,	183546,	272760,	261500,	223931,	221034,	237390,	301606,	301057,	270514,	256542,	283871,	231831,	313911,	290487,	303503,	228621,	271049,	303270,	298386,	256158,	298772,	312160,	365820,	355419,	342893,	412969,	354881,	329234,	401417,	364302,	369545,	362864,	403391,	363474,	367258,	364915,	367144,	390129,	405872,	378351,	395447,	352442,	337778,	324422,	407341,	384141,	411118,	317352,	527818,	480773,	528092,	497343,	491085,	422851,	501360,	447972,	445123,	493690,	533708,	432027,	431824,	435561,	461032,	468252,	431029,	534414,	459891,	449867,	431897,	491008,	442141,	487918,	513884,	424090,	492941,	501974,	429965,	495954,	497102,	429677,	488725,	510792,	450009,	554392,	622712,	604638,	563541,	626508,	607702,	549015,	615454,	543033,	612645,	562397,	590528,	564820,	611575,	641517,	621164,	581201,	557901,	569155,	602058,	541011,	563646,	570589,	546789,	652828,	621392,	609976,	556702,	676197,	668533,	687228,	681943,	736847,	728821,	662572,	727105,	706705,	706399,	685986,	662890,	695119,	657436,	662146,	665792,	684750,	732972,	690654,	690560,	732006,	676192,	669885,	687823,	690217,	702180,	738661,	693937,	663258,	715840,	662555,	724367,	776734,	813147,	781940,	758529,	763341,	821600,	842219,	827063,	840069,	743200,	782775,	790849,	749962,	769585,	820118,	780548,	830908,	783019,	740944,	815760,	828782,	793810,	797381,	825454,	778933,	818901,	752017,	802305,	836580,	768854,	808232,	744551,	910691,	925466,	853742,	856358,	890006,	884370,	906233,	867660,	885350,	864006,	877428,	883091,	853626,	854224,	942820,	899105,	878423,	892119,	934661,	885813,	888475,	995842,	964986,	985312,	957059,	979992,	1006589,	1011152,	969070,	979062,	1011457,	997949,	980816,	995168,	991766,	973974,	1023947,	1034679,	1017046,	962228,	974877,	1031448,	970273,	994350,	1038876,	962352,	1005747,	1006138,	985895,	992056,	1015207,	1017462,	1066218,	1057900,	1061774,	1114738,	1047068,	1058527,	1044151,	1112004,	1098647,	1052611,	1048033,	1046519,	1095341,	1137096,	1042457,	1137161,	1061510,	1084871,	1099841,	1098351,	1061233,	1126917,	1194150,	1161295,	1184271,	1147417,	1154018,	1186991,	1169575,	1156124,	1163420,	1181996,	1192569,	1145599,	1192778,	1213829,	1153802,	1208686,	1210595,	1158742,	1188844,	1226300,	1211997,	1228219,	1207445,	1159018,	1214743,	1148565,	1221655,	1174509,	1307390,	1307669,	1244529,	1296026,	1257114,	1232993,	1261601,	1268926,	1313873,	1275038,	1279893,	1232998,	1239689,	1258178,	1269175,	1291746,	1278545,	1253336,	1296940,	1262747,	1230043,	1236429,	1286144,	1272179,	1276111,	1402355,	1318906,	1338524,	1363257,	1326527,	1336595,	1317560,	1413556,	1360528,	1350305,	1330999,	1402548,	1344513,	1412872,	1372650,	1409213,	1366074,	1366578,	1406907,	1385246,	1336199,	1409941,	1335893,	1362161,	1350529,	1364967)
AND activity_date between '2017-05-04' and '2017-05-22'
)

select * from control
union all
select * from test
