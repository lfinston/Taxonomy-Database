sudo mysqladmin create Taxonomy

laurence@laurence-B365M-D3H:~$ sudo mysql

mysql> use Taxonomy;
Database changed

mysql> GRANT ALL ON Taxonomy TO 'laurence'@'localhost';
mysql> create user 'taxonomy'@'localhost';
mysql> GRANT ALL ON Taxonomy.* TO 'taxonomy'@'localhost';

https://en.wikipedia.org/wiki/Taxonomic_rank

Phylum, phyla 
https://en.wikipedia.org/wiki/Phylum




drop table Kingdoms;

create table Kingdoms
(
   id int unique not null,
   name varchar(64) not null
);

alter table Kingdoms add column name varchar(64) not null after id;

show columns from Kingdoms;

insert into Kingdoms (id, name) values
(1, "Animalia"),
(2, "Plantae"),
(3, "Fungi");

select * from Kingdoms order by id;

create table Phyla
(
   id int unique not null
);


create table Classes
(
   id int unique not null
);



create table Orders
(
   id int unique not null
);

create table Families
(
   id int unique not null
);

Genus

create table Genera
(
   id int unique not null
);


create table Species
(
   id int unique not null
);


https://en.wikipedia.org/wiki/Species

create table Mammalia
(
   id int unique not null default -1
);



show tables;

show columns from Mammalia;




/* * (1) Plants   */

/* ** (2) Leaves  */

https://en.wikipedia.org/wiki/Glossary_of_leaf_morphology#spatulate

/* * (1) Mammals  */


https://en.wikipedia.org/wiki/Mammal
https://en.wikipedia.org/wiki/Clade
https://en.wikipedia.org/wiki/Taxonomy_(biology)


Kingdom: 	Animalia
Phylum: 	Chordata
Superclass: 	Tetrapoda
Clade: 	Reptiliomorpha
Clade: 	Amniota
Clade: 	Synapsida
Clade: 	Mammaliaformes
Class: 	Mammalia
Linnaeus, 1758
Living subgroups
List

        Subclass Yinotheria
            Infraclass Australosphenida
                Order Monotremata
        Subclass Theriiformes
            Infraclass Holotheria
                Superlegion Trechnotheria
                    Legion Cladotheria
                        Supercohort Theria
                            Cohort Marsupialia
                                Superorder Ameridelphia
                                    Order Didelphimorphia
                                    Order Paucituberculata
                                Superorder Australidelphia
                                    Order Microbiotheria
                                    Order Dasyuromorphia
                                    Order Notoryctemorphia
                                    Order Peramelemorphia
                                    Order Diprotodontia
                            Cohort Placentalia
                                Superorder Xenarthra
                                    Order Cingulata
                                    Order Pilosa
                                Superorder Afroinsectiphilia
                                    Order Afrosoricida
                                    Order Macroscelidea
                                    Order Tubulidentata
                                Superorder Paenungulata
                                    Order Hyracoidea
                                    Order Sirenia
                                    Order Proboscidea
                                Superorder Euarchontoglires
                                    Order Scandentia
                                    Order Lagomorpha
                                    Order Rodentia
                                    Order Dermoptera
                                    Order Primates
                                Superorder Laurasiatheria
                                    Order Eulipotyphla
                                    Order Chiroptera
                                    Order Cetartiodactyla
                                    Order Perissodactyla
                                    Order Pholidota
                                    Order Carnivora


Insects

Animalia
Phylum: 	Arthropoda
Clade: 	Pancrustacea
Subphylum: 	Hexapoda
Class: 	Insecta



Class: 	Insecta
Monocondylia
Dicondylia 	
Apterygota
Pterygota 	
Paleoptera
Neoptera

Monocondylia
-Archaeognatha - 470
Dicondylia 	
Apterygota
-Zygentoma<200
-Monura
Pterygota 	
Paleoptera
-Ephemeroptera- 2,500–<3,000
-Odonata- 6,500
Neoptera
-Blattodea – 3,684–4,000
-Coleoptera – 360,000–400,000
-Dermaptera – 1,816
-Diptera – 152,956
-Embioptera – 200–300
-Hemiptera – 50,000–80,000
-Hymenoptera – 115,000
-Lepidoptera – 174,250
-Mantodea – 2,200
-Mecoptera – 481
-Megaloptera – 250–300
-Neuroptera – 5,000
-Notoptera – 30
-Orthoptera – 24,380
-Phasmatodea – 2,500–3,300
-Phthiraptera – 3,000–3,200
-Plecoptera – 2,274
-Psocoptera – 5,500
-Raphidioptera – 210
-Siphonaptera – 2,525
-Strepsiptera – 596
-Thysanoptera – 5,000
-Trichoptera – 12,627
-Zoraptera – 28


Arthropods
  	  	
Hexapoda (Insecta, Collembola, Diplura, Protura)
Crustacea (crabs, shrimp, isopods, etc.)
Myriapoda 	
Pauropoda
Diplopoda (millipedes)
Chilopoda (centipedes)
Symphyla
Chelicerata 	
Arachnida (spiders, scorpions, mites, ticks, etc.)
Eurypterida (sea scorpions: extinct)
Xiphosura (horseshoe crabs)
Pycnogonida (sea spiders)
†Trilobites (extinct)

Class: 	Arachnida
Lamarck, 1801
Orders

    Acari
    Amblypygi
    Araneae
    †Haptopoda
    Opiliones
    Palpigradi
    †Phalangiotarbi
    Pseudoscorpiones
    Ricinulei
    Schizomida
    Scorpiones
    Solifugae
    Thelyphonida
    †Trigonotarbida
    †Uraraneida
    Xiphosura ? 

Spiders

Kingdom: 	Animalia
Phylum: 	Arthropoda
Subphylum: 	Chelicerata
Class: 	Arachnida
Order: 	Araneae
Clerck, 1757
Suborders

Mesothelae
Opisthothelae

https://en.wikipedia.org/wiki/Spider_taxonomy

Spider families[note 2] Family 	Genera 	Species 	Common name 	Example
Mesothelae
Liphistiidae 	8 	138 	segmented spiders 	Kimura spider
Opisthothelae: Mygalomorphae
Actinopodidae 	3 	115 		Missulena (mouse spiders)
Anamidae 	9 	99 		Aname diversicolor (black wishbone spider)
Antrodiaetidae 	4 	37 	folding trapdoor spiders 	Atypoides riversi
Atracidae 	3 	35 	Australian funnel-web spiders 	Illawarra wisharti
Atypidae 	3 	54 	purseweb spiders 	Sphodros rufipes (red-legged purseweb spider)
Barychelidae 	42 	294 	trapdoor baboon spiders 	Sason sundaicum
Bemmeridae 	4 	47 		Spiroctenus personatus
Ctenizidae 	2 	5 	cork-lid trapdoor spiders 	Cteniza sauvagesi
Cyrtaucheniidae 	8 	107 	wafer trapdoor spiders 	Amblyocarenum nuragicus
Dipluridae 	8 	93 	funnel-web tarantulas 	Spruce-fir moss spider (Microhexura montivaga)
Entypesidae 	3 	37 		Entypesa andohahela
Euagridae 	13 	86 		Euagrus formosanus
Euctenizidae 	8 	77 		Aptostichus simus
Halonoproctidae 	6 	93 		Ummidia algarve
Hexathelidae 	7 	45 	venomous funnel-web tarantulas 	Hexathele hochstetteri
Hexurellidae 	1 	4 		
Idiopidae 	22 	412 		Idiosoma nigrum (black rugose trapdoor spider)
Ischnothelidae 	5 	26 		
Macrothelidae 	1 	38 		
Mecicobothriidae 	1 	2 	dwarf tarantulas 	
Megahexuridae 	1 	1 		
Microhexuridae 	1 	2 		
Microstigmatidae 	12 	41 		Envia garciai
Migidae 	11 	102 	tree trapdoor spiders 	Moggridgea rainbowi
Nemesiidae 	22 	184 	funnel-web trapdoor spiders 	Aname atra (black wishbone spider)
Paratropididae 	5 	17 	baldlegged spiders 	Paratropis tuxtlensis
Porrhothelidae 	1 	5 		
Pycnothelidae 	6 	81 		
Stasimopidae 	1 	47 		
Theraphosidae 	147 	987 	tarantulas 	Goliath birdeater (Theraphosa blondi)
Opisthothelae: Araneomorphae
Agelenidae 	87 	1341 	araneomorph funnel-web spiders 	Hobo spider (Eratigena agrestis)
Amaurobiidae 	49 	274 	tangled nest spiders 	Callobius claustrarius
Ammoxenidae 	4 	18 		
Anapidae 	58 	233 		
Anyphaenidae 	56 	574 	anyphaenid sac spiders 	Hibana velox (yellow ghost spider)
Araneidae 	178 	3058 	orb-weaver spiders 	Zygiella x-notata
Archaeidae 	5 	90 	pelican spiders 	Madagascarchaea gracilicollis
Arkyidae 	2 	38 		
Austrochilidae 	3 	10 		Hickmania troglodytes
Caponiidae 	19 	124 		Diploglena capensis
Cheiracanthiidae 	14 	362 		
Cithaeronidae 	2 	8 		
Clubionidae 	15 	638 	sac spiders 	Clubiona trivialis
Corinnidae 	70 	793 	dark sac spiders 	Castianeira sp.
Ctenidae 	48 	515 	wandering spiders 	Phoneutria fera
Cyatholipidae 	23 	58 		
Cybaeidae 	20 	268 		Diving bell spider (Argyroneta aquatica)
Cycloctenidae 	8 	80 		
Deinopidae 	3 	68 	net-casting spiders 	Deinopis subrufa (rufous net-casting spider)
Desidae 	60 	296 	intertidal spiders 	Phryganoporus candidus
Dictynidae 	52 	470 		Nigma walckenaeri
Diguetidae 	2 	15 	coneweb spiders 	
Drymusidae 	2 	17 	false violin spiders 	
Dysderidae 	25 	578 	woodlouse hunter spiders 	Woodlouse spider (Dysdera crocata)
Eresidae 	9 	100 	velvet spiders 	Eresus sandaliatus
Filistatidae 	19 	182 	crevice weavers 	Southern house spider (Kukulcania hibernalis)
Gallieniellidae 	10 	68 		
Gnaphosidae 	161 	2546 	flat-bellied ground spiders 	Drassodes cupreus
Gradungulidae 	7 	16 	large-clawed spiders 	Progradungula carraiensis (Carrai cave spider)
Hahniidae 	23 	351 	dwarf sheet spiders 	
Hersiliidae 	16 	182 	tree trunk spiders 	Hersilia savignyi
Homalonychidae 	1 	3 		
Huttoniidae 	1 	1 		Huttonia palpimanoides
Hypochilidae 	2 	14 	lampshade spiders 	Hypochilus thorelli
Lamponidae 	23 	192 		White-tailed spider (Lampona spp.)
Leptonetidae 	21 	355 		Tooth Cave spider (Tayshaneta myopica)
Linyphiidae 	619 	4670 	dwarf / money spiders 	Linyphia triangularis
Liocranidae 	32 	290 	liocranid sac spiders 	
Lycosidae 	124 	2430 	wolf spiders 	Lycosa tarantula
Malkaridae 	13 	57 	shield spiders 	
Mecysmaucheniidae 	7 	25 		
Megadictynidae 	2 	2 		
Mimetidae 	8 	154 	pirate spiders 	Oarces reticulatus
Miturgidae 	29 	136 	long-legged sac spiders 	
Myrmecicultoridae 	1 	1 		
Mysmenidae 	14 	158 	spurred orb-weavers 	
Nesticidae 	16 	279 	scaffold web spiders 	Nesticella marapu
Nicodamidae 	7 	27 		
Ochyroceratidae 	10 	166 	midget ground weavers 	Theotima minutissima
Oecobiidae 	6 	119 	disc web spiders 	Oecobius navus
Oonopidae 	114 	1864 	dwarf hunting spiders 	Oonops domesticus
Orsolobidae 	30 	188 		
Oxyopidae 	9 	438 	lynx spiders 	Peucetia viridans (green lynx spider)
Pacullidae 	4 	38 		
Palpimanidae 	19 	155 	palp-footed spiders 	
Penestomidae 	1 	9 		
Periegopidae 	1 	3 		
Philodromidae 	31 	536 	philodromid crab spiders 	Philodromus dispar
Pholcidae 	94 	1812 	daddy long-legs spiders 	Pholcus phalangioides
Phrurolithidae 	15 	247 		
Physoglenidae 	13 	72 		
Phyxelididae 	14 	66 		
Pimoidae 	4 	53 		Pimoa cthulhu
Pisauridae 	51 	353 	nursery web spiders 	Pisaura mirabilis
Plectreuridae 	2 	31 		
Psechridae 	2 	61 		
Psilodercidae 	11 	224 		
Salticidae 	647 	6230 	jumping spiders 	Zebra spider (Salticus scenicus)
Scytodidae 	5 	245 	spitting spiders 	Scytodes thoracica
Segestriidae 	4 	136 	tubeweb spiders 	Segestria florentina
Selenopidae 	9 	260 	wall spiders 	Selenops radiatus
Senoculidae 	1 	31 		
Sicariidae 	3 	169 	recluse spiders 	Brown recluse (Loxosceles reclusa)
Sparassidae 	89 	1253 	huntsman spiders 	Delena cancerides
Stenochilidae 	2 	13 		
Stiphidiidae 	20 	125 		Tartarus mullamullangensis
Symphytognathidae 	8 	74 	dwarf orb-weavers 	Patu digua
Synaphridae 	3 	13 		
Synotaxidae 	1 	11 		
Telemidae 	14 	97 	long-legged cave spiders 	
Tetrablemmidae 	27 	145 	armored spiders 	
Tetragnathidae 	50 	986 	long jawed orb-weavers 	Leucauge venusta (orchard spider)
Theridiidae 	124 	2511 	cobweb spiders 	Redback spider (Latrodectus hasselti)
Theridiosomatidae 	19 	129 	ray spiders 	Theridiosoma gemmosum
Thomisidae 	169 	2150 	crab spiders 	Misumena vatia (goldenrod crab spider)
Titanoecidae 	5 	54 		Goeldia obscura
Toxopidae 	14 	82 		
Trachelidae 	19 	246 		
Trechaleidae 	17 	131 		
Trochanteriidae 	21 	171 		
Trogloraptoridae 	1 	1 		Trogloraptor marchingtoni
Udubidae 	4 	15 		
Uloboridae 	19 	287 	hackled orb-weavers 	Uloborus walckenaerius
Viridasiidae 	2 	7 		
Xenoctenidae 	4 	33 		
Zodariidae 	87 	1165 	ant spiders 	Zodarion germanicum
Zoropsidae 	27 	183 		Zoropsis spinimana
