/*
Syntax für Datenimport in Stata

WICHTIG (!)
Der Import wird nur funktionieren, wenn Stata die Daten (CSV-Datei) findet. Dafür gibt es zwei Möglichkeiten:
 (1) Speichern Sie die CSV-Datei im Stata-Arbeitsverzeichnis.
 (2) Geben Sie in der DO-Datei den vollständigne Pfad zur CSV-Datei an.*/

import delimited using "sdata_Verschwoerungserzaehlungen_2021-03-31_18-28.csv", delimiters(tab) bindquotes(strict) stripquotes(yes) varnames(1) case(preserve) encoding(utf8)

label data "Verschwoerungserzaehlungen"



/*   Variable und Value Labels */


label variable CASE "Interview-Nummer (fortlaufend)"
label variable SERIAL "Seriennummer (sofern verwendet)"
label variable REF "Referenz (sofern im Link angegeben)"
label variable QUESTNNR "Fragebogen, der im Interview verwendet wurde"
label variable MODE "Interview-Modus"
label variable STARTED "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
label variable AA03 "Schulart"
label variable AA04 "Klassenstufe"
label variable AA07_01 "Name der Schule: [01]"
label variable CC01_01 "Persönlicher Code: Bitte geben Sie die ersten zwei Buchstaben des Vornamens Ihrer Mutter ein"
label variable CC01_02 "Persönlicher Code: Bitte geben Sie zwei Ziffern für den Monat des Geburtstages Ihrer Mutter ein"
label variable CC01_03 "Persönlicher Code: Bitte geben Sie die ersten zwei Ziffern (Tag) Ihres eigenen Geburtstages ein"
label variable CC03_01 "Speicherung Code: IV01_01"
label variable DD01 "Teilnahme an Befragung"
label variable DD08_01 "Offene Frage Auflistung: [01]"
label variable DD09_01 "Offene Frage Merkmale: [01]"
label variable DD10_01 "Resilienz: „Ich fühle mich sicher im Umgang mit Verschwörungstheoretiker:innenn.&quot; Beispiel: Stellen Sie sich vor..."
label variable DD10_02 "Resilienz: „Ich kann Verschwörungstheorien anhand konkreter Merkmale erkennen“"
label variable DD10_03 "Resilienz: „Ich kann Verschwörungstheorien in Ihren Kontext einordnen“"
label variable DD10_04 "Resilienz: „Ich bekomme Angst, wenn ich mich mit Verschwörungstheorien auseinandersetze.“"
label variable DD10_05 "Resilienz: „Ich bin hoffnungslos bezüglich der Eindämmung von Verschwörungstheorien“"
label variable DD11_01 "Abfrage Divers Likker: Wurden bei Ihnen im Schulunterricht Verschwörungstheorien behandelt?"
label variable DD11_02 "Abfrage Divers Likker: Inwieweit haben Sie sich mit dem Thema Verschwörungstheorien in Ihrer Freizeit beschäftigt und..."
label variable DD11_03 "Abfrage Divers Likker: Diskutieren Sie mit Ihren Verwandten über Verschwörungstheorien?"
label variable DD02_01 "Abfrage Unterricht / Verantwortung: „Verschwörungstheorien sollten im Unterricht verstärkt thematisiert werden“"
label variable DD02_02 "Abfrage Unterricht / Verantwortung: &quot;Der Staat hat die Verantwortung, Verschwörungstheorien stärker einzudämmen...."
label variable DD02_03 "Abfrage Unterricht / Verantwortung: &quot;Nicht staatliche Akteure (wie z.B. Verbände, Vereine, Stiftungen) haben die..."
label variable DD12_01 "Gefahr Likker: Für wie gefährlich halten Sie Verschwörungstheorien in einer Gesellschaft?"
label variable DD12_02 "Gefahr Likker: Für wie gefährlich halten Sie die Verbreitung von Verschwörungstheorien über Soziale Netzwerke (Instag..."
label variable DD13_02 "Verbreitung Eindämmung: &quot;Die Verbreitung von Verschwörungstheorien nimmt zu&quot;"
label variable DD13_03 "Verbreitung Eindämmung: &quot;Verschwörungstheorien sollten stärker eingedämmt werden&quot;"
label variable DD13_05 "Verbreitung Eindämmung: &quot;Der aktuelle staatliche Umgang mit Verschwörungstheorien ist genau richtig&quot;"
label variable AB05 "Geschlecht (zum kombinieren)"
label variable AB06_01 "Alter (zum kombinieren): Wie alt sind Sie? ... Jahre"
label variable ZZ01_CP "Zufallsgenerator: Vollständige Leerungen der Urne bisher"
label variable ZZ01 "Zufallsgenerator: Gezogener Code"
label variable LL02_01 "Klassischer Unterricht: &quot;Die Unterrichtsstunde zum Thema Verschwörungstheorien entsprach einer nach meinen Vorst..."
label variable LL02_02 "Klassischer Unterricht: &quot;Eine Unterrichtsstunde zum Thema Verschwörungstheorien würde ich ähnlich halten.&quot;"
label variable LL02_03 "Klassischer Unterricht: &quot;Das Niveau der Unterrichtsstunde für die Jahrgangsstufe war angemessen.&quot;"
label variable LL02_04 "Klassischer Unterricht: &quot;Das Arbeitsblatt mit den Merkmalen und Gefahren war für die Klasse angemessen.&quot;"
label variable LL02_05 "Klassischer Unterricht: &quot;Die Leistung meiner Klasse während der heutigen Unterrichtsstunde entsprach dem übliche..."
label variable LL04_01 "Kritik positv: Was hat Ihnen an der Unterrichtsstunde gefallen?"
label variable LL04_02 "Kritik positv: Was hat Ihnen an der Unterrichtsstunde nicht so gut gefallen?"
label variable LL04_03 "Kritik positv: Sonstige Hinweise"
label variable TIME001 "Verweildauer Seite 1"
label variable TIME002 "Verweildauer Seite 2"
label variable TIME003 "Verweildauer Seite 3"
label variable TIME004 "Verweildauer Seite 4"
label variable TIME005 "Verweildauer Seite 5"
label variable TIME006 "Verweildauer Seite 6"
label variable TIME007 "Verweildauer Seite 7"
label variable TIME008 "Verweildauer Seite 8"
label variable TIME_SUM "Verweildauer gesamt (ohne Ausreißer)"
label variable MAILSENT "Versandzeitpunkt der Einladungsmail (nur für nicht-anonyme Adressaten)"
label variable LASTDATA "Zeitpunkt als der Datensatz das letzte mal geändert wurde"
label variable FINISHED "Wurde die Befragung abgeschlossen (letzte Seite erreicht)?"
label variable Q_VIEWER "Hat der Teilnehmer den Fragebogen nur angesehen, ohne die Pflichtfragen zu beantworten?"
label variable LASTPAGE "Seite, die der Teilnehmer zuletzt bearbeitet hat"
label variable MAXPAGE "Letzte Seite, die im Fragebogen bearbeitet wurde"
label variable MISSING "Anteil fehlender Antworten in Prozent"
label variable MISSREL "Anteil fehlender Antworten (gewichtet nach Relevanz)"
label variable TIME_RSI "Maluspunkte für schnelles Ausfüllen"
label variable DEG_TIME "Maluspunkte für schnelles Ausfüllen"


label define valueLabelsAA03 1 "Gemeinschaftsschule" 2 "Gymnasium" 3 "Abendschule" 4 "Berufliches Gymnasium" -9 "nicht beantwortet"
label values AA03 valueLabelsAA03
label define valueLabelsAA04 1 "9. Jahrgang" 2 "10. Jahrgang" 3 "11. Jahrgang" 4 "12. Jahrgang" -9 "nicht beantwortet"
label values AA04 valueLabelsAA04
label define valueLabelsDD01 1 "Ja" 2 "Nein" -9 "nicht beantwortet"
label values DD01 valueLabelsDD01
label define valueLabelsDD10_01 1 "stimme gar nicht zu" 2 "stimme eher nicht zu" 3 "stimme weder zu noch nicht zu" 4 "stimme eher zu" 5 "stimme voll zu" -1 "kann ich nicht beurteilen" -9 "nicht beantwortet"
label values DD10_01 DD10_02 DD10_03 DD10_04 DD10_05 DD13_02 DD13_03 DD13_05 valueLabelsDD10_01
label define valueLabelsDD11_01 1 "Gar nicht" 2 "Selten" 3 "Oft" 4 "Häufig" 5 "Sehr häufig" -1 "kann ich nicht beurteilen" -9 "nicht beantwortet"
label values DD11_01 DD11_02 DD11_03 valueLabelsDD11_01
label define valueLabelsDD02_01 1 "stimme gar nicht zu" 2 "stimme eher nicht zu" 3 "unentschieden" 4 "stimme eher zu" 5 "stimme voll zu" -1 "kann ich nicht beurteilen" -9 "nicht beantwortet"
label values DD02_01 DD02_02 DD02_03 LL02_01 LL02_02 LL02_03 LL02_04 LL02_05 valueLabelsDD02_01
label define valueLabelsDD12_01 1 "Überhaupt nicht gefährlich" 2 "Nur bedingt gefährlich" 3 "Etwas gefährlich" 4 "sehr gefährlich" 5 "äußerst gefährlich" -1 "kann ich nicht beurteilen" -9 "nicht beantwortet"
label values DD12_01 DD12_02 valueLabelsDD12_01
label define valueLabelsAB05 1 "weiblich" 2 "männlich" 3 "divers*" -9 "nicht beantwortet"
label values AB05 valueLabelsAB05
label define valueLabelsZZ01 1 "Kontrollgruppe" 2 "Informationsgruppe" 3 "Gefahrgruppe"
label values ZZ01 valueLabelsZZ01
label define valueLabelsFINISHED 0 "abgebrochen" 1 "ausgefüllt"
label values FINISHED valueLabelsFINISHED
label define valueLabelsQ_VIEWER 0 "Teilnehmer" 1 "Durchklicker"
label values Q_VIEWER valueLabelsQ_VIEWER


