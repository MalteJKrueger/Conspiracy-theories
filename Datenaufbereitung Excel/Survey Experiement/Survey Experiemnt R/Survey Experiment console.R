install.packages("psych")
library(psych)

install.packages("car")
library(car)

attach(Daten)

# Levene Test zur Überprüfung, ob Vairanz gleich ist.
leveneTest(Resilienz, ZZ01)
leveneTest(DD13_05, ZZ01)


attach(InfoKontroll)
# Betrachtung der Daten
describeBy(ResilienzInfo, Zufallsgenerator)
describeBy(DD13_05, Zufallsgenerator)

# T Test zur Überprüfung der Signifikanz bzgl. Resilienz zwischen Kontrollgruppe und Informationsgruppe
t.test(ResilienzInfo~Zufallsgenerator, var.equal = TRUE, alternative = "less")

# T Test zur Überprüfung der Signifikanz bzgl. staatliches Vertrauen zwischen Kontrollgruppe und Informationsgruppe
t.test(DD13_05~Zufallsgenerator, var.equal = TRUE, alternative = "greater")



attach(GefahrKontroll)
# Betrachtung der Daten
describeBy(Resilienz, Zufallsgenerator)
describeBy(DD13_05, Zufallsgenerator)


# T Test zur Überprüfung der Signifikanz bzgl. Resilienz zwischen Kontrollgruppe und Gefahrgruppe
t.test(Resilienz~Zufallsgenerator, var.equal = TRUE, alternative = "less")

# T Test zur Überprüfung der Signifikanz bzgl. staatliches Vertrauen zwischen Kontrollgruppe und Gefahrgruppe
t.test(DD13_05~Zufallsgenerator, var.equal = TRUE, alternative = "greater")

#Sonstiges
model1 <- lm(DD10_01~Zufallsgenerator)

plot(model1)