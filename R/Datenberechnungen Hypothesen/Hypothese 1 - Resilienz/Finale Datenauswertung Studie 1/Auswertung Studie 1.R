# Verschiedene T-test für diverse Items bezüglich der Resilienz

t.test(Daten_VT$U1DD10_01, Daten_VT$U2DD10_01, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_02, Daten_VT$U2DD10_02, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_03, Daten_VT$U2DD10_03, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_04, Daten_VT$U2DD10_04, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_05, Daten_VT$U2DD10_05, paired = TRUE, alternative = "less")

# In Daten_Vt wurden die Items DD10_01 , DD10_02 und DD10_03 zusammengefasst in "Vorher" und "Nachher". Zwischen den Datenerhebungen hat der Unterricht stattgefunden

#T-test für abhängige Daten mit Daten vor dem Unterricht und Daten nach dem Unterricht.

attach(Daten_VT)

summary(Vorher)
summary(Nachher)
sd(Vorher)
sd(Nachher)

t.test(Vorher, Nachher, paired = TRUE, alternative = "less")

#Boxplots für den Unterricht