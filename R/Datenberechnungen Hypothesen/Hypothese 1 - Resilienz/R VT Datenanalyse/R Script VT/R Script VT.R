t.test(Daten_VT$U1DD10_01, Daten_VT$U2DD10_01, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_02, Daten_VT$U2DD10_02, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_03, Daten_VT$U2DD10_03, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_04, Daten_VT$U2DD10_04, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_05, Daten_VT$U2DD10_05, paired = TRUE, alternative = "less")

attach(Daten_VT)

summary(Vorher)
summary(Nachher)
sd(Vorher)
sd(Nachher)

t.test(Vorher, Nachher, paired = TRUE, alternative = "less")

install.packages("lsr")
library(lsr)

cohensD(Vorher, Nachher, method = "paired")
