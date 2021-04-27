# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = file.choose()
# setwd("./")
# ds_file = "rdata_Verschwoerungserzaehlungen_2021-03-31_18-29.csv"

ds = read.table(
  file=ds_file, encoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","AA03","AA04","AA07_01",
    "CC01_01","CC01_02","CC01_03","CC03_01","DD01","DD08_01","DD09_01","DD10_01",
    "DD10_02","DD10_03","DD10_04","DD10_05","DD11_01","DD11_02","DD11_03","DD02_01",
    "DD02_02","DD02_03","DD12_01","DD12_02","DD13_02","DD13_03","DD13_05","AB05",
    "AB06_01","ZZ01_CP","ZZ01","LL02_01","LL02_02","LL02_03","LL02_04","LL02_05",
    "LL04_01","LL04_02","LL04_03","TIME001","TIME002","TIME003","TIME004","TIME005",
    "TIME006","TIME007","TIME008","TIME_SUM","MAILSENT","LASTDATA","FINISHED",
    "Q_VIEWER","LASTPAGE","MAXPAGE","MISSING","MISSREL","TIME_RSI","DEG_TIME"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="character", STARTED="POSIXct", AA03="numeric", AA04="numeric",
    AA07_01="character", CC01_01="character", CC01_02="character",
    CC01_03="character", CC03_01="character", DD01="numeric",
    DD08_01="character", DD09_01="character", DD10_01="numeric",
    DD10_02="numeric", DD10_03="numeric", DD10_04="numeric", DD10_05="numeric",
    DD11_01="numeric", DD11_02="numeric", DD11_03="numeric", DD02_01="numeric",
    DD02_02="numeric", DD02_03="numeric", DD12_01="numeric", DD12_02="numeric",
    DD13_02="numeric", DD13_03="numeric", DD13_05="numeric", AB05="numeric",
    AB06_01="numeric", ZZ01_CP="numeric", ZZ01="numeric", LL02_01="numeric",
    LL02_02="numeric", LL02_03="numeric", LL02_04="numeric", LL02_05="numeric",
    LL04_01="character", LL04_02="character", LL04_03="character",
    TIME001="integer", TIME002="integer", TIME003="integer", TIME004="integer",
    TIME005="integer", TIME006="integer", TIME007="integer", TIME008="integer",
    TIME_SUM="integer", MAILSENT="POSIXct", LASTDATA="POSIXct",
    FINISHED="logical", Q_VIEWER="logical", LASTPAGE="numeric",
    MAXPAGE="numeric", MISSING="numeric", MISSREL="numeric", TIME_RSI="numeric",
    DEG_TIME="numeric"
  ),
  skip = 1,
  check.names = TRUE, fill = TRUE,
  strip.white = FALSE, blank.lines.skip = TRUE,
  comment.char = "",
  na.strings = ""
)

rm(ds_file)

attr(ds, "project") = "Verschwoerungserzaehlungen"
attr(ds, "description") = "Verschwörungstheorien"
attr(ds, "date") = "2021-03-31 18:29:09"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
ds$AA03 = factor(ds$AA03, levels=c("1","2","3","4","-9"), labels=c("Gemeinschaftsschule","Gymnasium","Abendschule","Berufliches Gymnasium","[NA] nicht beantwortet"), ordered=FALSE)
ds$AA04 = factor(ds$AA04, levels=c("1","2","3","4","-9"), labels=c("9. Jahrgang","10. Jahrgang","11. Jahrgang","12. Jahrgang","[NA] nicht beantwortet"), ordered=FALSE)
ds$DD01 = factor(ds$DD01, levels=c("1","2","-9"), labels=c("Ja","Nein","[NA] nicht beantwortet"), ordered=FALSE)
ds$AB05 = factor(ds$AB05, levels=c("1","2","3","-9"), labels=c("weiblich","männlich","divers*","[NA] nicht beantwortet"), ordered=FALSE)
attr(ds$DD10_01,"1") = "stimme gar nicht zu"
attr(ds$DD10_01,"2") = "stimme eher nicht zu"
attr(ds$DD10_01,"3") = "stimme weder zu noch nicht zu"
attr(ds$DD10_01,"4") = "stimme eher zu"
attr(ds$DD10_01,"5") = "stimme voll zu"
attr(ds$DD10_01,"-1") = "kann ich nicht beurteilen"
attr(ds$DD10_02,"1") = "stimme gar nicht zu"
attr(ds$DD10_02,"2") = "stimme eher nicht zu"
attr(ds$DD10_02,"3") = "stimme weder zu noch nicht zu"
attr(ds$DD10_02,"4") = "stimme eher zu"
attr(ds$DD10_02,"5") = "stimme voll zu"
attr(ds$DD10_02,"-1") = "kann ich nicht beurteilen"
attr(ds$DD10_03,"1") = "stimme gar nicht zu"
attr(ds$DD10_03,"2") = "stimme eher nicht zu"
attr(ds$DD10_03,"3") = "stimme weder zu noch nicht zu"
attr(ds$DD10_03,"4") = "stimme eher zu"
attr(ds$DD10_03,"5") = "stimme voll zu"
attr(ds$DD10_03,"-1") = "kann ich nicht beurteilen"
attr(ds$DD10_04,"1") = "stimme gar nicht zu"
attr(ds$DD10_04,"2") = "stimme eher nicht zu"
attr(ds$DD10_04,"3") = "stimme weder zu noch nicht zu"
attr(ds$DD10_04,"4") = "stimme eher zu"
attr(ds$DD10_04,"5") = "stimme voll zu"
attr(ds$DD10_04,"-1") = "kann ich nicht beurteilen"
attr(ds$DD10_05,"1") = "stimme gar nicht zu"
attr(ds$DD10_05,"2") = "stimme eher nicht zu"
attr(ds$DD10_05,"3") = "stimme weder zu noch nicht zu"
attr(ds$DD10_05,"4") = "stimme eher zu"
attr(ds$DD10_05,"5") = "stimme voll zu"
attr(ds$DD10_05,"-1") = "kann ich nicht beurteilen"
attr(ds$DD11_01,"1") = "Gar nicht"
attr(ds$DD11_01,"2") = "Selten"
attr(ds$DD11_01,"3") = "Oft"
attr(ds$DD11_01,"4") = "Häufig"
attr(ds$DD11_01,"5") = "Sehr häufig"
attr(ds$DD11_01,"-1") = "kann ich nicht beurteilen"
attr(ds$DD11_02,"1") = "Gar nicht"
attr(ds$DD11_02,"2") = "Selten"
attr(ds$DD11_02,"3") = "Oft"
attr(ds$DD11_02,"4") = "Häufig"
attr(ds$DD11_02,"5") = "Sehr häufig"
attr(ds$DD11_02,"-1") = "kann ich nicht beurteilen"
attr(ds$DD11_03,"1") = "Gar nicht"
attr(ds$DD11_03,"2") = "Selten"
attr(ds$DD11_03,"3") = "Oft"
attr(ds$DD11_03,"4") = "Häufig"
attr(ds$DD11_03,"5") = "Sehr häufig"
attr(ds$DD11_03,"-1") = "kann ich nicht beurteilen"
attr(ds$DD02_01,"1") = "stimme gar nicht zu"
attr(ds$DD02_01,"2") = "stimme eher nicht zu"
attr(ds$DD02_01,"3") = "unentschieden"
attr(ds$DD02_01,"4") = "stimme eher zu"
attr(ds$DD02_01,"5") = "stimme voll zu"
attr(ds$DD02_01,"-1") = "kann ich nicht beurteilen"
attr(ds$DD02_02,"1") = "stimme gar nicht zu"
attr(ds$DD02_02,"2") = "stimme eher nicht zu"
attr(ds$DD02_02,"3") = "unentschieden"
attr(ds$DD02_02,"4") = "stimme eher zu"
attr(ds$DD02_02,"5") = "stimme voll zu"
attr(ds$DD02_02,"-1") = "kann ich nicht beurteilen"
attr(ds$DD02_03,"1") = "stimme gar nicht zu"
attr(ds$DD02_03,"2") = "stimme eher nicht zu"
attr(ds$DD02_03,"3") = "unentschieden"
attr(ds$DD02_03,"4") = "stimme eher zu"
attr(ds$DD02_03,"5") = "stimme voll zu"
attr(ds$DD02_03,"-1") = "kann ich nicht beurteilen"
attr(ds$DD12_01,"1") = "Überhaupt nicht gefährlich"
attr(ds$DD12_01,"2") = "Nur bedingt gefährlich"
attr(ds$DD12_01,"3") = "Etwas gefährlich"
attr(ds$DD12_01,"4") = "sehr gefährlich"
attr(ds$DD12_01,"5") = "äußerst gefährlich"
attr(ds$DD12_01,"-1") = "kann ich nicht beurteilen"
attr(ds$DD12_02,"1") = "Überhaupt nicht gefährlich"
attr(ds$DD12_02,"2") = "Nur bedingt gefährlich"
attr(ds$DD12_02,"3") = "Etwas gefährlich"
attr(ds$DD12_02,"4") = "sehr gefährlich"
attr(ds$DD12_02,"5") = "äußerst gefährlich"
attr(ds$DD12_02,"-1") = "kann ich nicht beurteilen"
attr(ds$DD13_02,"1") = "stimme gar nicht zu"
attr(ds$DD13_02,"2") = "stimme eher nicht zu"
attr(ds$DD13_02,"3") = "stimme weder zu noch nicht zu"
attr(ds$DD13_02,"4") = "stimme eher zu"
attr(ds$DD13_02,"5") = "stimme voll zu"
attr(ds$DD13_02,"-1") = "kann ich nicht beurteilen"
attr(ds$DD13_03,"1") = "stimme gar nicht zu"
attr(ds$DD13_03,"2") = "stimme eher nicht zu"
attr(ds$DD13_03,"3") = "stimme weder zu noch nicht zu"
attr(ds$DD13_03,"4") = "stimme eher zu"
attr(ds$DD13_03,"5") = "stimme voll zu"
attr(ds$DD13_03,"-1") = "kann ich nicht beurteilen"
attr(ds$DD13_05,"1") = "stimme gar nicht zu"
attr(ds$DD13_05,"2") = "stimme eher nicht zu"
attr(ds$DD13_05,"3") = "stimme weder zu noch nicht zu"
attr(ds$DD13_05,"4") = "stimme eher zu"
attr(ds$DD13_05,"5") = "stimme voll zu"
attr(ds$DD13_05,"-1") = "kann ich nicht beurteilen"
attr(ds$ZZ01,"1") = "Kontrollgruppe"
attr(ds$ZZ01,"2") = "Informationsgruppe"
attr(ds$ZZ01,"3") = "Gefahrgruppe"
attr(ds$LL02_01,"1") = "stimme gar nicht zu"
attr(ds$LL02_01,"2") = "stimme eher nicht zu"
attr(ds$LL02_01,"3") = "unentschieden"
attr(ds$LL02_01,"4") = "stimme eher zu"
attr(ds$LL02_01,"5") = "stimme voll zu"
attr(ds$LL02_01,"-1") = "kann ich nicht beurteilen"
attr(ds$LL02_02,"1") = "stimme gar nicht zu"
attr(ds$LL02_02,"2") = "stimme eher nicht zu"
attr(ds$LL02_02,"3") = "unentschieden"
attr(ds$LL02_02,"4") = "stimme eher zu"
attr(ds$LL02_02,"5") = "stimme voll zu"
attr(ds$LL02_02,"-1") = "kann ich nicht beurteilen"
attr(ds$LL02_03,"1") = "stimme gar nicht zu"
attr(ds$LL02_03,"2") = "stimme eher nicht zu"
attr(ds$LL02_03,"3") = "unentschieden"
attr(ds$LL02_03,"4") = "stimme eher zu"
attr(ds$LL02_03,"5") = "stimme voll zu"
attr(ds$LL02_03,"-1") = "kann ich nicht beurteilen"
attr(ds$LL02_04,"1") = "stimme gar nicht zu"
attr(ds$LL02_04,"2") = "stimme eher nicht zu"
attr(ds$LL02_04,"3") = "unentschieden"
attr(ds$LL02_04,"4") = "stimme eher zu"
attr(ds$LL02_04,"5") = "stimme voll zu"
attr(ds$LL02_04,"-1") = "kann ich nicht beurteilen"
attr(ds$LL02_05,"1") = "stimme gar nicht zu"
attr(ds$LL02_05,"2") = "stimme eher nicht zu"
attr(ds$LL02_05,"3") = "unentschieden"
attr(ds$LL02_05,"4") = "stimme eher zu"
attr(ds$LL02_05,"5") = "stimme voll zu"
attr(ds$LL02_05,"-1") = "kann ich nicht beurteilen"
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgefüllt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$AA03) = "Schulart"
comment(ds$AA04) = "Klassenstufe"
comment(ds$AA07_01) = "Name der Schule: [01]"
comment(ds$CC01_01) = "Persönlicher Code: Bitte geben Sie die ersten zwei Buchstaben des Vornamens Ihrer Mutter ein"
comment(ds$CC01_02) = "Persönlicher Code: Bitte geben Sie zwei Ziffern für den Monat des Geburtstages Ihrer Mutter ein"
comment(ds$CC01_03) = "Persönlicher Code: Bitte geben Sie die ersten zwei Ziffern (Tag) Ihres eigenen Geburtstages ein"
comment(ds$CC03_01) = "Speicherung Code: IV01_01"
comment(ds$DD01) = "Teilnahme an Befragung"
comment(ds$DD08_01) = "Offene Frage Auflistung: [01]"
comment(ds$DD09_01) = "Offene Frage Merkmale: [01]"
comment(ds$DD10_01) = "Resilienz: „Ich fühle mich sicher im Umgang mit Verschwörungstheoretiker:innenn.\" Beispiel: Stellen Sie sich vor, dass ein überzeugter Verschwörungstheoretiker Sie in einer Situation mit einer solchen Erzählung konfrontiert.“"
comment(ds$DD10_02) = "Resilienz: „Ich kann Verschwörungstheorien anhand konkreter Merkmale erkennen“"
comment(ds$DD10_03) = "Resilienz: „Ich kann Verschwörungstheorien in Ihren Kontext einordnen“"
comment(ds$DD10_04) = "Resilienz: „Ich bekomme Angst, wenn ich mich mit Verschwörungstheorien auseinandersetze.“"
comment(ds$DD10_05) = "Resilienz: „Ich bin hoffnungslos bezüglich der Eindämmung von Verschwörungstheorien“"
comment(ds$DD11_01) = "Abfrage Divers Likker: Wurden bei Ihnen im Schulunterricht Verschwörungstheorien behandelt?"
comment(ds$DD11_02) = "Abfrage Divers Likker: Inwieweit haben Sie sich mit dem Thema Verschwörungstheorien in Ihrer Freizeit beschäftigt und sich eigenständig über das Thema informiert mit Hilfe von Medien (Videos, Zeitungsartikel, Fernsehen) genutzt?"
comment(ds$DD11_03) = "Abfrage Divers Likker: Diskutieren Sie mit Ihren Verwandten über Verschwörungstheorien?"
comment(ds$DD02_01) = "Abfrage Unterricht / Verantwortung: „Verschwörungstheorien sollten im Unterricht verstärkt thematisiert werden“"
comment(ds$DD02_02) = "Abfrage Unterricht / Verantwortung: \"Der Staat hat die Verantwortung, Verschwörungstheorien stärker einzudämmen.\""
comment(ds$DD02_03) = "Abfrage Unterricht / Verantwortung: \"Nicht staatliche Akteure (wie z.B. Verbände, Vereine, Stiftungen) haben die Verantwortung, Verschwörungstheorien stärker einzudämmen.\""
comment(ds$DD12_01) = "Gefahr Likker: Für wie gefährlich halten Sie Verschwörungstheorien in einer Gesellschaft?"
comment(ds$DD12_02) = "Gefahr Likker: Für wie gefährlich halten Sie die Verbreitung von Verschwörungstheorien über Soziale Netzwerke (Instagram, Twitter, etc.)?"
comment(ds$DD13_02) = "Verbreitung Eindämmung: \"Die Verbreitung von Verschwörungstheorien nimmt zu\""
comment(ds$DD13_03) = "Verbreitung Eindämmung: \"Verschwörungstheorien sollten stärker eingedämmt werden\""
comment(ds$DD13_05) = "Verbreitung Eindämmung: \"Der aktuelle staatliche Umgang mit Verschwörungstheorien ist genau richtig\""
comment(ds$AB05) = "Geschlecht (zum kombinieren)"
comment(ds$AB06_01) = "Alter (zum kombinieren): Wie alt sind Sie? ... Jahre"
comment(ds$ZZ01_CP) = "Zufallsgenerator: Vollständige Leerungen der Urne bisher"
comment(ds$ZZ01) = "Zufallsgenerator: Gezogener Code"
comment(ds$LL02_01) = "Klassischer Unterricht: \"Die Unterrichtsstunde zum Thema Verschwörungstheorien entsprach einer nach meinen Vorstellungen klassischen Wi/Po-Unterrichtsstunde.\""
comment(ds$LL02_02) = "Klassischer Unterricht: \"Eine Unterrichtsstunde zum Thema Verschwörungstheorien würde ich ähnlich halten.\""
comment(ds$LL02_03) = "Klassischer Unterricht: \"Das Niveau der Unterrichtsstunde für die Jahrgangsstufe war angemessen.\""
comment(ds$LL02_04) = "Klassischer Unterricht: \"Das Arbeitsblatt mit den Merkmalen und Gefahren war für die Klasse angemessen.\""
comment(ds$LL02_05) = "Klassischer Unterricht: \"Die Leistung meiner Klasse während der heutigen Unterrichtsstunde entsprach dem üblichen Niveau.\""
comment(ds$LL04_01) = "Kritik positv: Was hat Ihnen an der Unterrichtsstunde gefallen?"
comment(ds$LL04_02) = "Kritik positv: Was hat Ihnen an der Unterrichtsstunde nicht so gut gefallen?"
comment(ds$LL04_03) = "Kritik positv: Sonstige Hinweise"
comment(ds$TIME001) = "Verweildauer Seite 1"
comment(ds$TIME002) = "Verweildauer Seite 2"
comment(ds$TIME003) = "Verweildauer Seite 3"
comment(ds$TIME004) = "Verweildauer Seite 4"
comment(ds$TIME005) = "Verweildauer Seite 5"
comment(ds$TIME006) = "Verweildauer Seite 6"
comment(ds$TIME007) = "Verweildauer Seite 7"
comment(ds$TIME008) = "Verweildauer Seite 8"
comment(ds$TIME_SUM) = "Verweildauer gesamt (ohne Ausreißer)"
comment(ds$MAILSENT) = "Versandzeitpunkt der Einladungsmail (nur für nicht-anonyme Adressaten)"
comment(ds$LASTDATA) = "Zeitpunkt als der Datensatz das letzte mal geändert wurde"
comment(ds$FINISHED) = "Wurde die Befragung abgeschlossen (letzte Seite erreicht)?"
comment(ds$Q_VIEWER) = "Hat der Teilnehmer den Fragebogen nur angesehen, ohne die Pflichtfragen zu beantworten?"
comment(ds$LASTPAGE) = "Seite, die der Teilnehmer zuletzt bearbeitet hat"
comment(ds$MAXPAGE) = "Letzte Seite, die im Fragebogen bearbeitet wurde"
comment(ds$MISSING) = "Anteil fehlender Antworten in Prozent"
comment(ds$MISSREL) = "Anteil fehlender Antworten (gewichtet nach Relevanz)"
comment(ds$TIME_RSI) = "Maluspunkte für schnelles Ausfüllen"
comment(ds$DEG_TIME) = "Maluspunkte für schnelles Ausfüllen"



# Assure that the comments are retained in subsets
as.data.frame.avector = as.data.frame.vector
`[.avector` <- function(x,i,...) {
  r <- NextMethod("[")
  mostattributes(r) <- attributes(x)
  r
}
ds_tmp = data.frame(
  lapply(ds, function(x) {
    structure( x, class = c("avector", class(x) ) )
  } )
)
mostattributes(ds_tmp) = attributes(ds)
ds = ds_tmp
rm(ds_tmp)

