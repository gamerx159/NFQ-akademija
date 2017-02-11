# NFQ-akademija
2017 metų pavasario priėmimo užduoties atlikimo failai.

"Mini Biblioteka"

Taigi šis mini projektas buvo kurtas pagal 2017 metų pavasario NFQ akademijos užduotis. Užduotis buvo sukurti pagrindinį puslapį su knygos sąrašais, o paspaudus ant knygos pavadinimo išmestų į detalesnę info.
Dėl savo ir kitų patogumui sukūriau atskirą nustatymų ir headerio failus, kad nereikėtų kiekvienam faile redaguoti skirtinai, o viskas būtų bendrai. Įdėtas knygų patalpinimo skyrelis, kad būtų įmanoma greičiau patalpinti visus įrašus. Padaryta funkcija kad jei norima įdėti pavadinimą su esamu pavadimu, išmestų klaidą.
Puslapiavimas ir rūšiavimas atliktas GET metodu. Puslapiavimui naudojamas page parametras, o rūšiavmui sort. Rūšiavimui teko šiek tiek pavargti, tačiau panaudojau redagavimo funkciją, kad po dar paspaudimo rikiuotų kitokia tvark bet tačiau nuorodą nepailgėtų. (..&sort=type). 

Visą kodą programuoti buvo naudojamas TIK PHP! (iškyrus js ant title iššokimo). Kodėl? Nauja patirtis kaip galima padaryti viską su php savais būdais, neimant iš interneto visokių JS rikiavimui, ir panašiai. :)

Šiuose failuose galite rasti

Knygų įkėlimą (dėl pačio patogumo įkeliant 50 pavyzdinių įrašų)
Pavadinimų rikiavimą paspaudus ant žodžio pavadinimas
Paiešką
Detalesnė informaciją su galimybe nusiūsti nuorodą draugui (naudotas get metodas).
Atskiras failas headeriui redaguoti.
Atskiras failas nustatymas redaguoti.
Galimybė nustatyti kiek pagrindinio puslapio rodys įrašų prieš perkeliant į puslapį.
Įdėta knygų skaičiuotuvas (parodo kiek yra esamų knygų).

Klaida tiek, kad naudojant ASC SQL rikiavimą pirmus pasirinkimus rodo su nosinėm raidėm, o paskui pagal abėcėlės tvarka.

Galima peržiūrėti į DEMO versiją nuoroda:
http://etravi.lt/php/valdas/NFQ-biblioteka/

