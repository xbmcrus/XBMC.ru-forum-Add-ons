﻿# -*- coding: utf-8 -*-
import urllib
import urllib2
import re
import httplib
import base64
from time import gmtime, strftime
from HTMLParser import HTMLParser

id_array = {
"#нашканал":'1079',
"1+1":'3',
"1+1(наукр.)":'346',
"1+1международный":'282',
"1+1международный(наукр.)":'473',
"11каналднепропетровск(t2)":'1091',
"112украина":'921',
"112":'921',
"112украина(наукр.)":'922',
"112украинаhd":'953',
"112hd":'953',
"112украинаhd(наукр.)":'954',
"1hd":'1014',
"2+2":'23',
"2+2(наукр.)":'371',
"24(телеканалновостей24)":'298',
"24украина":'298',
"24(телеканалновостей24)(наукр.)":'387',
"24док":'263',
"24doc":'263',
"2х2":'341',
"2x2":'341',
"дваждыдваканал(2х2)":'341',
"2х2(+2)":'809',
"2х2(+5)":'734',
"34канал(днепропетровск)":'903',
"360tunebox":'999',
"360подмосковье":'653',
"365днейтв":'279',
"365дней":'279',
"49канал(новосибирск)":'923',
"49каналновосибирск":'923',
"5канал":'106',
"5каналua":'106',
"5каналукраина":'106',
"5каналукраїна":'106',
"5канал(наукр.)":'363',
"5канал(россия)":'308',
"5каналроссия":'308',
"пятыйканал":'308',
"пятыйканалроссия":'308',
"5канал(россия)(+2)":'640',
"5каналроссия+2":'640',
"5канал(россия)(+4)":'641',
"пятыйканалроссия+4":'641',
"5канал(россия)(+7)":'642',
"6тв":'1012',
"7канал(одесса)":'933',
"8канал(беларусь)":'698',
"8каналбеларусь":'698',
"8канал(европа)":'1068',
"8канал(триколор)":'681',
"8канал":'681',
"восьмойканал":'681',
"8канал(экспрессат)":'1069',
"8канал(экспрессат)(+7)":'1070',
"8канал(ямал)":'755',
"9волна":'909',
"9канал(израиль)":'1021',
"a-one":'316',
"a-onerus(hiphop)":'316',
"a-oneукраина":'772',
"a-oneua":'772',
"a-oneукраина(наукр.)":'927',
"abmoteurs":'127',
"adultchannel":'114',
"aljazeerainternational":'240',
"amazinglife":'347',
"amc":'214',
"amedia1":'895',
"amedia2":'727',
"amediahit":'1016',
"amediahithd":'1016',
"amediapremiumhd":'896',
"ani":'1059',
"animalfamilyhd":'969',
"animalplaneteurope":'39',
"animalplanethd":'715',
"animalplanetроссия":'484',
"animalplanet":'484',
"animalplanetроссияhd":'939',
"arirang":'697',
"atr":'763',
"atr(наукр.)":'849',
"babytv":'528',
"bbcentertainment":'147',
"bbcworldnews":'46',
"bloomberg":'90',
"bluehustler":'140',
"bollywoodhd":'1030',
"boomerang":'404',
"boutiquetv(наукр.)":'1078',
"brazzerstveurope":'143',
"brazzerstveurope(дляроссии)":'1071',
"bridgetv":'409',
"бриджтв":'409',
"business":'386',
"business(наукр.)":'429',
"cmusictv":'582',
"candy":'1065',
"candyman":'1066',
"cartoonnetwork":'54',
"картуннетворк":'54',
"cbsdrama":'35',
"cbsreality":'91',
"cctvрусский":'598',
"cctv4":'904',
"chasseetpeche":'1004',
"cine+":'971',
"cine+(наукр.)":'972',
"cine+hd":'973',
"cine+hd(наукр.)":'974',
"cine+hithd":'975',
"cine+hithd(наукр.)":'976',
"cine+legend":'979',
"cine+legend(наукр.)":'980',
"cine+mix":'977',
"cine+mix(наукр.)":'978',
"cinema(космоств)":'112',
"cnbceurope":'70',
"cnlамерика":'802',
"cnlевропа":'125',
"cnlсибирь":'527',
"cnlукраина":'392',
"cnn":'47',
"davincilearningeurope":'644',
"davincilearningeurope(наукр.)":'659',
"davincilearningроссия":'651',
"davincilearning":'651',
"dangetv":'862',
"deutschewelle(deutsch)":'1063',
"deutschewelle(europe)":'84',
"discoveryhdshowcase":'599',
"discoveryscience":'41',
"discoverysciencehd":'1099',
"discoveryworld":'424',
"discoveryвосточнаяевропа":'397',
"discoveryроссия":'38',
"discovery":'38',
"discoverychannel":'38',
"discoveryроссияhd":'938',
"discoverychannelhd":'938',
"discoveryhd":'938',
"discoveryукраина":'678',
"docuboxhd":'993',
"dtx":'1061',
"dtxhd":'1100',
"ducktv":'656',
"ducktvhd":'657',
"englishclubtv":'485',
"englishclubtvhd":'929',
"enter-фильм":'92',
"ентерфильм":'92',
"enter-фильм(наукр.)":'372',
"eu.music":'388',
"eu.music(наукр.)":'469',
"eu.musichd":'1034',
"eu.musichd(наукр.)":'1035',
"eurekahd":'970',
"euronews":'37',
"europaplustv":'682',
"eurosport1":'36',
"eurosport":'36',
"евроспорт":'36',
"eurosport1hd":'535',
"eurosporthd":'535',
"eurosport2":'229',
"евроспорт2":'229',
"eurosport2hd":'1082',
"eurosport2north-east":'800',
"eurosport2north-easthd":'825',
"ewtnукраина(наукр.)":'844',
"extremesports":'99',
"fashionone":'679',
"fashiononehd":'680',
"fashiontveurope":'342',
"fashiontvроссия":'86',
"fashiontv":'86',
"fashionboxhd":'996',
"fast&funboxhd":'994',
"fightboxhd":'995',
"film.uadrama":'1073',
"film.uadrama(наукр.)":'1074',
"filmboxarthouse":'997',
"filmboxrussia":'998',
"fineliving":'406',
"foodnetworkроссия":'1005',
"foodnetworkроссияhd":'1095',
"foxlifehd":'750',
"foxlifeроссия":'432',
"foxlife":'432',
"foxроссия":'413',
"fox":'413',
"foxроссияhd":'775',
"foxhd":'775',
"france24english":'486',
"france24":'486',
"france24francais":'811',
"ftvhd":'510',
"galaxy-tv":'583',
"galaxytv":'583',
"gingerhd":'1055',
"gulliроссия":'596',
"gulli":'596',
"hdкино":'590',
"hdкино2":'776',
"hdспорт":'591',
"hd-life":'459',
"hdlife":'459',
"hdfashion":'914',
"historyроссия":'902',
"history":'902',
"historychannel":'902',
"historyроссияhd":'905',
"historyhd":'905',
"hustlerhd":'894',
"hustlertveurope":'120',
"iconcerts":'797',
"ictv":'5',
"ictv(наукр.)":'358',
"idfashion":'1086',
"idxtra(европа)":'1000',
"idxtra(россия)":'943',
"idxtra":'943',
"investigationdiscovery":'635',
"discoveryinvestigation":'635',
"iqhd":'944',
"itontv":'1064',
"jimjam":'454',
"jucetv":'915',
"kzn(казань)":'1023',
"lale":'911',
"lale(наукр.)":'912',
"luxe.tv":'475',
"luxe.tvhd":'536',
"luxuryworld":'946',
"mtelevision":'992',
"maxxi-tv":'356',
"maxxi-tv(наукр.)":'425',
"mcmtop":'116',
"mezzo":'85',
"mezzolivehd":'672',
"mgm":'780',
"mgmhd":'780',
"motors":'117',
"motorstv":'117',
"motorshd":'117',
"mtvdanceinternational":'224',
"mtvdance":'224',
"mtveuropean":'218',
"mtvhitsinternational":'221',
"mtvhits":'221',
"mtvlivehd":'488',
"mtvrocksinternational":'222',
"mtvrocks":'222',
"mtvроссия":'908',
"mtv":'908',
"museumhd":'1101',
"musicbox":'411',
"musicboxru":'411',
"musicboxrussian":'411',
"musicboxua":'417',
"musicboxua(наукр.)":'470',
"musicboxuahd":'1096',
"musicboxuahd(наукр.)":'1097',
"myzen.tv":'534',
"myzen.tvhd":'580',
"myzenhd":'580',
"nanotv":'741',
"natgeowildeurope":'344',
"natgeowildhd":'671',
"natgeowildроссия":'766',
"natgeowild":'766',
"nationalgeographichd":'594',
"nationalgeographicроссия":'295',
"nationalgeographic":'295',
"nationalgeographicchannel":'295',
"newsone":'416',
"newsoneua":'416',
"newsonehd":'416',
"newsone(наукр.)":'471',
"next-tv":'1083',
"nhkworld":'789',
"nickjr":'728',
"nickjr.":'728',
"nickelodeonhd":'739',
"nickelodeonроссия":'45',
"nickelodeon":'45',
"nickelodion":'45',
"никелодеон":'45',
"nickelodeonснг":'643',
"oceantv":'414',
"odessaint":'1067',
"oe":'982',
"olala":'1013',
"otv":'64',
"otv(наукр.)":'374',
"outdoorchannel":'732',
"outdoor":'732',
"outdoorchannelhd":'801',
"outdoorhd":'801',
"paramountchannelроссия":'935',
"paramountchannel":'935',
"paramountchannelhd":'935',
"paramountcomedyроссия":'770',
"paramountcomedy":'770',
"paramountcomedyhd":'770',
"peopleair.tv/biztv":'515',
"peopleair.tv/biztv(наукр.)":'516',
"playboytvuk":'172',
"privatetv":'696',
"probusiness":'492',
"proвсе":'402',
"proвсе(наукр.)":'431',
"qtv":'460',
"qtv(наукр.)":'461',
"r1":'405',
"rtд(english)":'788',
"rtд(русский)":'961',
"rtg":'605',
"rtghd":'900',
"rti":'1036',
"rti(наукр.)":'1037',
"rtvi":'22',
"ru.tv":'334',
"rutv":'334',
"ru-tv":'334',
"rusongtv":'668',
"russiatoday":'301',
"rt":'301',
"russiatodayhd":'851',
"rthd":'851',
"russiatodayроссия":'864',
"russianmusicbox":'412',
"setроссия":'525',
"set":'525',
"sethd":'525',
"set(sonytv)":'525',
"setроссияhd":'783',
"setantasports":'771',
"setantasports+":'984',
"shanttv":'1033',
"shop24":'863',
"shoppinglive":'752',
"shoppingtv":'810',
"sonysci-fiроссия":'403',
"sonysci-fi":'403',
"sonysky-fi":'403',
"sonyturbo":'805',
"spice":'307',
"stv":'384',
"teletravelhd":'619',
"tiji":'597',
"tijiроссия":'597',
"tlcpanregional":'777',
"tlcроссия":'691',
"tlc":'691',
"tlcроссияhd":'901',
"tlchd":'901',
"tlcукраина":'898',
"tmtv":'897',
"topsongtv":'1003',
"tracesportstars":'1076',
"tracesportstarshd":'798',
"traceurban":'230',
"traceurbanhd":'1075',
"travelchannel":'88',
"travelchannelhd":'690',
"travel+adventure":'832',
"travelandadventure":'832',
"travel+adventurehd":'833',
"tv1000actioneast":'458',
"tv1000action":'458',
"tv1000comedy":'817',
"tv1000comedyhd":'818',
"tv1000east":'107',
"tv1000megahit":'815',
"tv1000megahithd":'816',
"tv1000premium":'813',
"tv1000premiumhd":'814',
"tv1000русскоекино":'255',
"tv1000русскоекино(международный)":'1020',
"tv5mondeeurope":'74',
"tv5латвия":'434',
"tvmchannel":'1028',
"tvrus":'799',
"ua:перший":'1',
"перший":'1',
"першийнаціональний":'1',
"першийukraine":'1',
"ua:перший(наукр.)":'345',
"ua:перший/трк\"эра\"":'540',
"ua:перший/трк\"эра\"(наукр.)":'592',
"ua:першийdigital":'890',
"першийukrainedigital":'890',
"ua:першийdigital(наукр.)":'891',
"ua:першийukraine":'827',
"першийua":'827',
"ua:першийukraine(наукр.)":'828',
"uatv":'689',
"uatv(наукр.)":'165',
"ukrainetoday":'1015',
"utv":'958',
"utv(салават)":'1043',
"utv(стерлитамак)":'1042',
"utvhd":'1032',
"vh1classiceurope":'227',
"vh1classic":'227',
"vh1europe":'50',
"vh1-european":'50',
"vh1":'50',
"viasatexplorecee":'778',
"viasatexplorecee/spice":'579',
"viasatexploreроссия":'152',
"viasatexplorer":'152',
"viasatgolf":'906',
"viasatgolfhd":'916',
"viasathistory":'175',
"viasatnaturecee":'652',
"viasatnature/historyhd":'716',
"viasatnature-historyhd":'716',
"viasatnaturehd":'716',
"viasatnature":'652',
"viasatsportbaltics":'504',
"viasatsportроссия":'332',
"viasatsport":'332',
"viasatsportроссияhd":'907',
"vintagetvроссия":'1029',
"wbc":'1040',
"worldfashionchannel":'326',
"worldfashionchannelроссия":'313',
"worldfashionchannelроссияhd":'313',
"xxl":'133',
"zeetvроссия":'442',
"zeetv":'442',
"zee-tv":'442',
"zik(наукр.)":'684',
"zoom":'353',
"zoom(наукр.)":'428',
"zooпарк":'331',
"автоплюс":'311',
"авто24":'924',
"агро-тв":'721',
"астрахань24":'940',
"астрахань24hd":'940',
"бабайтб":'611',
"бабайтб(наукр.)":'612',
"беларусь1":'118',
"беларусь2":'148',
"беларусь24":'231',
"беларусь3":'883',
"беларусь5":'932',
"белмузтв":'706',
"биплюс":'870',
"бигуди":'481',
"бигуди(наукр.)":'840',
"бобер":'1058',
"боец":'310',
"бойцовскийклуб":'744',
"телеканалбойцовскийклуб":'744',
"бокств":'1062',
"бокс":'1062',
"бст":'272',
"винтаж":'1056',
"винтаж(наукр.)":'1057',
"винтера(наукр.)":'1008',
"вита(наукр.)":'1009',
"вместе-рф":'967',
"вместерф":'967',
"волга":'1089',
"вопросыиответы":'603',
"время":'303',
"всяуфа":'957',
"втв":'139',
"гамма":'479',
"гамма(наукр.)":'480',
"глас":'294',
"глас(наукр.)":'465',
"глас(одесса)(наукр.)":'457',
"громадське":'1049',
"громадскетв":'1049',
"громадске-тв":'1049',
"hromadsketv":'1049',
"громадське(наукр.)":'1048',
"гумортб":'505',
"гумор":'505',
"гумортб(наукр.)":'506',
"гумортб/бабайтб":'613',
"гумортб/бабайтб(наукр.)":'614',
"дача":'1080',
"детский":'246',
"детскиймир":'31',
"детскиймир/телеклуб":'578',
"детскиймир+телеклуб":'578',
"дивантв":'868',
"дивантвhd":'925',
"днепропетровскийдержавный":'380',
"доверие":'733',
"дождь.optimisticchannel":'675',
"дождь":'675',
"дождь.optimisticchannelhd":'856',
"домкино":'302',
"домкиноinternational":'1038',
"домкинопремиум":'1045',
"домашниеживотные":'601',
"домашний":'124',
"домашний(+2)":'561',
"домашний(+4)":'562',
"домашний(+7)":'563',
"домашниймагазин":'695',
"дон24":'867',
"донбасс":'617',
"драйв":'241',
"драйвтв":'241',
"еврокино":'487',
"егэ":'1017',
"еда":'794',
"едаhd":'795',
"еспресоtv":'936',
"еспресоtvhd":'936',
"espressotv":'936',
"espressotvhd":'936',
"еспрессоtvhd":'936',
"еспресоtv(наукр.)":'937',
"жест(космоств)":'743',
"живаяпланета":'1026',
"живи":'511',
"живиhd":'1007',
"загороднаяжизнь":'647',
"загородный":'662',
"звезда":'232',
"звезда(+2)":'566',
"звезда(+3)":'567',
"звезда(+7)":'568',
"здоровоетв":'242',
"зоотв":'451',
"иллюзион+":'327',
"инвамедиатв":'865',
"индиго":'1002',
"индиго(наукр.)":'1006',
"индиятв":'293',
"индияtv":'293',
"интер":'4',
"inter":'4',
"интер(наукр.)":'357',
"интер+":'69',
"интер+(наукр.)":'430',
"информационныйканалсевастополя":'893',
"искушение":'754',
"искушение(+3)":'1053',
"искушениеhd":'855',
"история":'879',
"кмуз":'1001',
"к1":'19',
"k1":'19',
"к1(наукр.)":'369',
"к2":'20',
"к2(наукр.)":'370',
"disney":'89',
"disneychannel":'89',
"каналdisney":'89',
"каналдисней":'89',
"каналdisney(+2)":'645',
"каналdisney(+7)":'646',
"карусель":'687',
"карусель(+3)":'730',
"карусель(+7)":'731',
"карусельinternational":'688',
"киев":'75',
"киев(наукр.)":'375',
"киноплюс":'608',
"нтв+киноплюс":'608',
"кинопоказ":'447',
"кинопоказ(+3)":'574',
"кинопоказhd1":'620',
"кинопоказhd2":'621',
"кинопремиумhd":'947',
"киносоюз":'261',
"нтвкиносоюз":'261',
"нтв+киносоюз":'261',
"кинотв":'852',
"комедия(вгтрк)":'1081',
"комедиятв":'292',
"комедия":'292',
"конныймир":'1044',
"краснаялиния":'1054',
"крт":'149',
"крт(наукр.)":'368',
"ктоестькто":'399',
"кубань24орбита":'782',
"культура":'15',
"россияк":'15',
"россиякультура":'15',
"россияk":'15',
"культура(+2)":'552',
"россияк+2":'552',
"культура(+4)":'553',
"россияк+4":'553',
"культура(+7)":'555',
"культура(украина)":'285',
"культура(украина)(наукр.)":'494',
"кухнятв":'383',
"кхлhd":'806',
"кхлтв":'604',
"кхл":'604',
"лдпртв":'1039',
"лунапарк":'1041',
"львів-тб(наукр.)":'920',
"любимоекино":'526',
"ля-минор":'297',
"м1":'94',
"м1украина":'94',
"м1(наукр.)":'366',
"м2":'445',
"м2(наукр.)":'474',
"мінсктв":'1025',
"майдан":'882',
"маляткоtv":'606',
"маляткоtv(наукр.)":'629',
"мама":'394',
"марств":'928',
"матчтв":'1077',
"матч!":'1077',
"матчтв(россия2)":'1077',
"матчтвhd":'1090',
"мега":'234',
"мега(наукр.)":'362',
"мир":'176',
"мир(+2)":'985',
"мир(+3)":'529',
"мир+3":'529',
"мир(+7)":'986',
"мир24":'838',
"мирhd":'965',
"мирсериала":'637',
"мирувлечений":'1022',
"многосерийноетв":'278',
"морской":'934',
"москва-24":'123',
"москва24":'123',
"мояпланета":'639',
"мтв":'710',
"мужскоекино":'1060',
"мужской":'648',
"муз-тв":'808',
"музтв":'808',
"музыкапервого":'439',
"мульт":'962',
"мультимания":'286',
"надежда":'1072',
"надия":'871',
"наука2.0":'712',
"наука2":'712',
"нашеhd":'948',
"нашекино":'29',
"нашекино(нтв+)":'312',
"нтвнашекино":'312',
"нтв+нашекино":'312',
"нашеновоекино":'260',
"нтв+нашеновоекино":'260',
"нлоtv":'843',
"нлотв":'843',
"нло":'843',
"нлоtv(наукр.)":'846',
"новыйканал":'7',
"новыйканал(наукр.)":'360',
"ностальгия":'216',
"ночнойклуб":'455',
"ночнойклуб(+3)":'576',
"нст":'329',
"нта":'736',
"нта(наукр.)":'669',
"нтв":'10',
"нтв(+2)":'545',
"нтв(+3)":'509',
"нтв(+4)":'546',
"нтв+4":'546',
"нтв(+7)":'547',
"нтв+3dbypanasonic":'702',
"нтв+баскетбол":'277',
"баскетбол":'277',
"нтв+киноклуб":'30',
"киноклуб":'30',
"нтв+кинохит":'213',
"кинохит":'213',
"нтв+нашфутбол":'284',
"нтв+нашфутболhd":'889',
"нтв+премьера":'34',
"нтв+спорт":'32',
"нтвспортплюс":'32',
"нтв+спортплюс":'32',
"нтв+теннис":'276',
"нтв+футбол1":'33',
"нтв+футбол":'33',
"нтвплюсфутбол":'33',
"нтв+футбол1hd":'747',
"нтв+футбол2":'707',
"нтв+футбол2hd":'753',
"нтв+футбол3":'910',
"нтв+футбол3hd":'917',
"нтв-беларусь":'699',
"нтв-мир":'82',
"нтн":'212',
"нтн(наукр.)":'367',
"нтс(севастополь)":'884',
"о2тв":'257',
"онт":'111',
"оренбуржье":'989',
"орт-планета(оренбург)":'983',
"оружие":'708',
"остросюжетноеhd":'951',
"отв(екатеринбург)":'655',
"отв(одинцово)":'913',
"отвприморье":'848',
"отвчелябинск":'866',
"отр":'880',
"отс":'899',
"охотаирыбалка":'243',
"охотникирыболов":'628',
"охотникирыболовhd":'842',
"паркразвлечений":'351',
"первыйавтомобильный":'435',
"первыйавтомобильный(наукр.)":'436',
"первыйгородской(казань)":'966',
"первыйгородской(нижнийновгород)":'1092',
"первыйделовой":'299',
"первыйделовой(наукр.)":'378',
"первыйинтернетканал(#пиктв)":'1024',
"пиктв":'1024',
"первыйканал(+2)":'541',
"первыйканал(+4)":'542',
"первыйканал+4":'542',
"первый+4":'542',
"первыйканал(+6)":'543',
"первыйканал(+8)":'544',
"первыйканал(россия)":'8',
"первыйканал":'8',
"первый":'8',
"первыйканал(россия)европа":'21',
"первыйканал(россия)снг":'314',
"первыйканалhd":'839',
"первыйканалhd(+4)":'926',
"первыйкрымский":'886',
"первыйобразовательный":'215',
"первыйсевастопольский":'876',
"перецinternational":'941',
"пиксель":'27',
"пиксель(наукр.)":'373',
"плюсплюс":'24',
"плюсплюс(наукр.)":'376',
"правдатут":'1087',
"правдатут(наукр.)":'1088',
"правоtv":'861',
"правоtv(наукр.)":'860',
"просвещение":'774',
"психология21":'602',
"пятница":'48',
"пятница(+2)":'625',
"пятница(+4)":'569',
"пятница(+7)":'626',
"рада":'823',
"рада(наукр.)":'824',
"радостьмоя":'693',
"разтв":'581',
"рбктв":'146',
"ргвкдагестан":'858',
"рентв":'13',
"рен":'13',
"рентв(+2)":'570',
"рентв(+4)":'571',
"рентв(+7)":'572',
"ретро":'244',
"ретротв":'244',
"рждтв":'713',
"рждтвhd":'713',
"россия1":'9',
"россия1(+2)":'548',
"россия1(+4)":'549',
"россия1+4":'549',
"россия1(+6)":'550',
"россия1новосибирск+6":'550',
"россия1(+8)":'551',
"россия24":'328',
"россияhd":'841',
"ртр-беларусь":'700',
"ртр-планетаазия":'885',
"ртр-планетаамерика":'831',
"ртр-планетаевропа":'98',
"ртрпланета":'98',
"ртр-планетаукраина":'355',
"ртр-планетаснг":'355',
"русскаяночь":'296',
"русскийбестселлер":'812',
"русскийбестселлер(международный)":'1051',
"русскийдетектив":'942',
"русскийиллюзион":'177',
"русскийроман":'757',
"русскийсевер":'859',
"русскийэкстрим":'288',
"рыжий":'1047',
"сарафан":'433',
"семейноеhd":'949',
"сигма":'709',
"совершенносекретно":'350',
"сонце":'874',
"сонце(наукр.)":'875',
"соціальнакраїна(наукр.)":'1018',
"союз(екатеринбург)":'235',
"союз":'235',
"телеканалспас":'238',
"спас":'238',
"спорт":'711',
"спорт1":'270',
"спорт1(украина)":'270',
"спорт1украина":'270',
"спорт1україна":'270',
"спорт1(наукр.)":'426',
"россияспорт1":'667',
"спорт1(россия)":'667',
"спорт1hd":'724',
"спорт2":'309',
"спорт2украина":'309',
"спорт2україна":'309',
"спорт2(наукр.)":'427',
"спортплюс":'595',
"стб":'6',
"стб(наукр.)":'359',
"ств":'115',
"ствбашкортостан":'956',
"страна":'627',
"странасоветов":'275',
"страшноеhd":'1031',
"стс":'17',
"стс(+2)":'538',
"стс(+4)":'539',
"стс(+7)":'508',
"стсinternational":'758',
"стсмир":'758',
"стсinternationalбалтия":'768',
"стсlove":'952',
"стсlove(+7)":'1019',
"стс-орск":'1093',
"тамыр":'959',
"тбнроссия":'694',
"твxxi":'68',
"xxi":'68',
"tvxxi":'68',
"твклуб":'607',
"твцентр":'11',
"твц":'11',
"твцентр(+2)":'559',
"твцентр(+4)":'560',
"твцентр(+7)":'624',
"твцентрмеждународный(tvci)":'237',
"тв-3россия":'63',
"тв3":'63',
"тв-3россия(+2)":'564',
"тв-3россия(+3)":'845',
"тв-3россия(+7)":'565',
"тв-7(мариуполь)":'714',
"тв3беларусь":'847',
"твfm":'892',
"твой":'1027',
"тдк":'142',
"театр":'829',
"теледом":'853',
"телеканал100":'887',
"телеканал100(наукр.)":'888',
"телеканалдедамороза":'1085',
"телекафе":'415',
"телеклуб":'141',
"телепутешествия":'450',
"тет":'18',
"tet":'18',
"тет(наукр.)":'364',
"техно24":'381',
"24техно":'381',
"тиса-1":'315',
"тиса-1(наукр.)":'467',
"тнв-планета":'781',
"тнв-татарстан":'145',
"тнт":'14',
"тнт(+2)":'556',
"тнт(+3)":'767',
"тнт(+4)":'557',
"тнт+4":'557',
"тнт(+7)":'558',
"тнтbravo":'737',
"тнт-international(беларусь)":'1052',
"тнт-international(европа)":'991',
"тнт-international(снг)":'981',
"тнт4":'476',
"тонис":'25',
"тонис(наукр.)":'365',
"тонисhd":'803',
"tonishd":'803',
"тонисhd(наукр.)":'822',
"тонуств":'495',
"точкатв":'1011',
"трк\"буковина\"(наукр.)":'633',
"трк\"регион\"":'919',
"трк\"эра\"":'78',
"трк\"эра\"(наукр.)":'349',
"тро":'491',
"трофей":'945',
"трофейhd":'1098',
"ттс":'717',
"тугантел":'987',
"убр":'609',
"убр(наукр.)":'610',
"украина":'108',
"тркукраина":'108',
"украина(наукр.)":'361',
"улыбкаребенка":'531',
"униантв":'740',
"униантв(наукр.)":'786',
"усадьба":'305',
"успех":'649',
"феникс+кино":'390',
"феникскино":'390',
"футбол(россия)":'440',
"футбол1":'507',
"футбол1украина":'507',
"футбол1україна":'507',
"футбол1ua":'507',
"футбол1(наукр.)":'638',
"футбол1hd":'963',
"футбол1hd(наукр.)":'964',
"футбол2":'703',
"футбол2украина":'703',
"футбол2україна":'703',
"футбол2(наукр.)":'704',
"футбол2hd":'804',
"футбол2hd(наукр.)":'821',
"центральныйканал":'317',
"центральныйканал(наукр.)":'466',
"че":'56',
"че(+2)":'396',
"че(+4)":'857',
"че+4":'857',
"че(+7)":'537',
"черноморскаятрк":'751',
"чп.info":'446',
"чп-info":'446',
"чп.info(наукр.)":'472',
"шансонтв(hotbird)":'1084',
"шансонтв":'1084',
"шансон":'1084',
"шансонтв(ямал)":'719',
"эверест(наукр.)":'1010',
"эко-тв":'685',
"эко-тв(наукр.)":'686',
"ю":'49',
"ю(+2)":'722',
"ю(+7)":'723',
"югра":'128',
"юморbox":'410',
"humorbox":'410'}

class MLStripper(HTMLParser):
    def __init__(self):
        self.reset()
        self.fed = []
    def handle_data(self, d):
        self.fed.append(d)
    def get_data(self):
        return ''.join(self.fed)

def strip_tags(html):
    s = MLStripper()
    s.feed(html)
    return s.get_data()

def mod_request(url, param = None):
    html = ''
    try:
        req = urllib2.Request(url, param, {'User-agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'})
        html = urllib2.urlopen(req).read()
    except Exception as ex:
        print ex
        print 'REQUEST Exception'

    return html
	
def get_ch_id(title):
	id = None
	title = title.replace(' ', '')
	title = unicode(title, 'utf-8').lower().encode('utf-8')
	title = title.replace('(резерв)', '').replace('(360p)', '').replace('(480p)', '').replace('(720p)', '').replace('(720)', '').replace('(premium)','').replace('(drm)', '').replace('(badsignal)', '').replace('[premium]', '')
	title = title.replace('(18+)','').replace('(2зв.дорожки)', '').replace('(3зв.дорожки)', '').replace('(4зв.дорожки)', '').replace('(5зв.дорожки)', '').replace('(6зв.дорожки)', '').replace('(7зв.дорожки)', '').replace('(тест)', '')
	try:
		id = id_array[title]
	except:
		pass
	return id
		
def get_ch_epg(id):
	result = ''
	result_now = ''
	result_next = ''
	date = strftime("%Y-%m-%d")
	url = "http://www.vsetv.com/schedule_channel_" + id + "_day_" + date + "_ft_now.html"
	html = mod_request(url).decode('cp1251').encode('utf8')	
	html = html.replace('<div class="desc">', '|')
	html = html.replace('<div class="onair">', '\n')
	html = html.replace('<div class="pasttime">', '\n')
	html = html.replace('<div class="time">', '\n')
	html = html.replace('<br><br>', '. ')
	html = html.replace('<br>', '. ')
	html = html.replace('&nbsp;', '')
	html = strip_tags(html)
	epg = re.findall('([0-2][0-9]:[0-5][0-9])([^\n]+)\n', html)
	if len(epg) > 1:
		time_now = epg[0][0]
		name_now = epg[0][1].split('|')
		result_now = time_now + ' ' + name_now[0] 
		if len(epg[1][0]) > 1:
			time_next = epg[1][0]
			name_next = epg[1][1].split('|')
			result_next = time_next + ' ' + name_next[0]
	if len(result_now) > 1:
		result = result_now + ' Далее: ' + result_next
	else:
		result = None
	return result