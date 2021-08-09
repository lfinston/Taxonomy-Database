sudo mysqladmin create Taxonomy
laurence@laurence-B365M-D3H:~$ sudo mysql
mysql> use Taxonomy;
Database changed
mysql> GRANT ALL ON Taxonomy TO 'laurence'@'localhost';
mysql> create user 'taxonomy'@'localhost';
mysql> GRANT ALL ON Taxonomy TO 'taxonomy'@'localhost';

create table Mammalia
(
   id int unique not null default -1
);

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
