# Verschiedene T-test f?r diverse Items bez?glich der Resilienz

t.test(Daten_VT$U1DD10_01, Daten_VT$U2DD10_01, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_02, Daten_VT$U2DD10_02, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_03, Daten_VT$U2DD10_03, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_04, Daten_VT$U2DD10_04, paired = TRUE, alternative = "less")

t.test(Daten_VT$U1DD10_05, Daten_VT$U2DD10_05, paired = TRUE, alternative = "less")

# In Daten_Vt wurden die Items DD10_01 , DD10_02 und DD10_03 zusammengefasst in "Vorher" und "Nachher". Zwischen den Datenerhebungen hat der Unterricht stattgefunden

#T-test f?r abh?ngige Daten mit Daten vor dem Unterricht und Daten nach dem Unterricht.

attach(Daten_VT)

summary(Vorher)
summary(Nachher)
sd(Vorher)
sd(Nachher)

t.test(Vorher, Nachher, paired = TRUE, alternative = "less")

#Boxplots f?r die Resilienz vor und nach dem Unterricht

attach(Daten_VT_Boxplots)
install.packages("ggplot2")
library(ggplot2)

ggplot(Daten_VT_Boxplots, aes(y = Resilienz, group = Unterricht, x = Unterricht)) +
  stat_boxplot(geom='errorbar', width = 0.25) +
  geom_boxplot(fill=c("gray90", "gray 40"))+
  ylim(1,5)+
  labs(x="Zeitpunkt", title = "Resilienz gegenüber Verschwörungstheorien vor und nach dem Politikunterricht")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(labels = c("vor dem Unterricht", "nach dem Unterricht"))


# Berechnung Vertrauen in Staatliche akteure. Zwei T-tests f?r die Items 
attach(Vertrauen_in_Staat)

t.test(SE1, SE2, paired = TRUE, alternative = "l")

summary(SE1)
sd(SE1, na.rm = TRUE)
summary(SE2)
sd(SE2, na.rm = TRUE)

t.test(SM1, SM2, paired = TRUE, alternative = "g")

summary(SM1)
sd(SM1, na.rm = TRUE)
summary(SM2)
sd(SM2, na.rm = TRUE)

# Boxplots f?r das Vertrauen von Sch?ler:innen in staatliceh Akteure / Datei BoxplotsVertrauen

install.packages("ggplot2")
library(ggplot2)

# Boxplot f?r das Item: Der Staat hat die Verantwortung, Verschw?rungstheorien st?rker einzud?mmen.

ggplot(BoxplotsVertrauen, aes(y = SE1, group = Unterricht, x = Unterricht)) +
  stat_boxplot(geom='errorbar', width = 0.25) +
  geom_boxplot(fill=c("gray90", "gray 40"))+
  ylim(1,5)+
  labs(x="Zeitpunkt", y="Staatliche Verantwortung zur Eindämmung", title = "Einschätzung der Schüler:innen zur staatlichen Verantwortung vor und nach dem Unterricht")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(labels = c("vor dem Unterricht", "nach dem Unterricht"))

# Boxplot f?r das Item: Der aktuelle staatliche Umgang mit Verschw?rungstheorien ist genau richtig.

ggplot(BoxplotsVertrauen, aes(y = SM1, group = Unterricht, x = Unterricht)) +
  stat_boxplot(geom='errorbar', width = 0.25) +
  geom_boxplot(fill=c("gray90", "gray 40"))+
  ylim(1,5)+
  labs(x="Zeitpunkt", y="Staatlicher Umgang mit Verschwörungstheorien", title = "Einschätzung der Schüler:innen zum staatlicher Umgang vor und nach dem Unterricht")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(labels = c("vor dem Unterricht", "nach dem Unterricht"))
