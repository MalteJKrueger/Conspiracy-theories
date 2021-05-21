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

# Boxplots für die Resilienz im Survey-Experiment

install.packages("ggplot2")
library(ggplot2)


ggplot(Boxplots, aes(y = Resilienz , group = Zufallsgenerator, x = Zufallsgenerator)) + 
  stat_boxplot(geom='errorbar', width = 0.25) +
  geom_boxplot(fill=c("gray90", "gray 63", "gray 40"))+
  ylim(1,5)+
  labs(x="Proband:innengruppe", title = "Resilienz gegenüber Verschwörungstheorien")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(labels = c("Kontrollgruppe", "Informationsgruppe", "Gefahrengruppe"))

# Boxplots für das staatliche Vertrauen der Schüler:innen im Survey-Experiment Item: Der aktuelle staatliche Umgang mit Verschwörungstheorien ist genau richtig

ggplot(Boxplots, aes(y = DD13_05, group = Zufallsgenerator, x = Zufallsgenerator)) + 
  stat_boxplot(geom='errorbar', width = 0.25) +
  geom_boxplot(fill=c("gray90", "gray 63", "gray 40"))+
  ylim(1,5)+
  labs(x="Proband:innengruppe", y= "Staatlicher Umgang mit Verschwörungstheorien", title = "Einschätzung der Schüler:innen zum staatlichen Umgang")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(labels = c("Kontrollgruppe", "Informationsgruppe", "Gefahrengruppe"))

# Boxplots für das staatliche Vertrauen der Schüler:innen im Survey-Experiment Item : Der Staat hat die Verantwortung, Verschwörungstheorien stärker einzudämmen.

ggplot(Boxplots, aes(y = DD02_02, group = Zufallsgenerator, x = Zufallsgenerator)) + 
  stat_boxplot(geom='errorbar', width = 0.25) +
  geom_boxplot(fill=c("gray90", "gray 63", "gray 40"))+
  ylim(1,5)+
  labs(x="Proband:innengruppe", y= "Staatliche Verantwortung zur Eindämmung", title = "Einschätzung der Schüler:innen zur staatlichen Verantwortung")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(labels = c("Kontrollgruppe", "Informationsgruppe", "Gefahrengruppe"))
  

# Auswertung der Resilienz beim Survey-Experiments mit Berücksichtigung Gender fem
attach(DataFemKontrollInfo)

t.test(Resilienzfem~Zufallsgeneratorfem, var.equal = TRUE, alternative = "less")

attach(DataFemKontrollGefahr)

t.test(Resilienzfem~Zufallsgeneratorfem, var.equal = TRUE, alternative = "less")

# Auswertung der Resilienz beim Survey-Experiments mit Berücksichtigung Gender mask
attach(DataMaskKontrollInfo)

t.test(Resilienzmask~Zufallsgeneratormask, var.equal = TRUE, alternative = "less")

# Boxplots für die Resilienz im Survey-Experiment Gender

install.packages("ggplot2")
library(ggplot2)


ggplot(DataFemBoxplots, aes(y = Resilienzfem , group = Zufallsgeneratorfem, x = Zufallsgeneratorfem)) + 
  stat_boxplot(geom='errorbar', width = 0.25) +
  geom_boxplot(fill=c("gray90", "gray 63", "gray 40"))+
  ylim(1,5)+
  labs(x="Probandinnengruppe", title = "Resilienz von Schülerinnen gegenüber Verschwörungstheorien")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(labels = c("Kontrollgruppe", "Informationsgruppe", "Gefahrengruppe"))

#Regressionsberechnung Resilienz Vergleich Infogruppe und Kontrollgruppe OLS
model1 <- lm(Resilienz~ZZ01, data = RegressionKontrollInfo)
summary(model1)

#Regressionsberechnung Resilienz Vergleich Gefahrengruppe und Kontrollgruppe OLS


# Regressionsberechnung Resilienz Vergelich Gender OLS

model3 <- lm(Resilienz~AB05, data = DatenRegression)
summary(model3)

#Regressionsberechnung Resilienz Gender + Zufallsgenerator
model4 <- lm(Resilienz~ZZ01+AB05, data = DatenRegression)
summary(model4)

#Regressionsberechnung Resilienz Gender + Zufallsgenerator + Wissen über VT
model5 <- lm(Resilienz~ZZ01+AB05+KenntnisVT, data = DatenRegression)
summary(model5)

#Regressionsberechnung Resilienz Wissen über VT
model6 <- lm(Resilienz~KenntnisVT, data = DatenRegression)
summary(model6)

install.packages("ggpubr")
library(ggpubr)

ggscatter(DatenRegression, x = "KenntnisVT", y = "Resilienz", add = "reg.line") +
  stat_regline_equation(label.y = 4.9, label.x = 3.7 )+
  labs(x="Beschäftigung mit Verschwörungstheorien", title = "Einfluss von Beschäftigung mit Verschwörungstheorien auf die Resilienz")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(1,5)+xlim(1,5)
#Formartierte Tabelle für die Regressionsergebnisse
install.packages("stargazer")
library(stargazer)

stargazer(model5, title = "Regressionsergebnisse", style = "apsr", out = "regression.html")
