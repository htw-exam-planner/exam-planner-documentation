# Anforderungsworkshop 23.04. 


Zeit: 13.20 - 14.30 

## Anwesenheit

- Frau Hauptmann
- Leo Lindhorst
- Oliver von Seydlitz
- Denis Keiling
- Hung Nguyen
- Fabian Krehnke

## 1. Aufgabenstellung 

**Entwicklung eines SW‐Systems zur Unterstützung der Planung von Präsentationen im Kontext des Moduls SE II.**

Inhalt des Gesprächs war die Anforderungsanalyse mit dem Prüfer um die Ziele und Rahmenbedingungen des Projektes festzustellen.

### 1.1 Ausgangslage

Aktuell wird eine Excel-Tabelle für die Organisation genutzt. Diese liegt nur der Prüferin vor. In dieser Tabelle sind die möglichen Zeiten für einen Termin festgehalten. Der Raum, in dem dieser stattfindet ist noch nicht bekannt. Termine und Terminänderungen werden über E-Mail und Telefon in Absprache mit der Prüferin ausgemacht und von ihr in die Liste eingetragen.

### 1.2 Problem

Die Terminbelegung für Prüfungspräsentationen über E-Mail und manuelles Editieren der Excel-Tabelle ist zeitaufwändig und kann zu Fehlern führen.

### 1.3 Projektziel

Es soll ein Software-System entwickelt werden, über das die Terminplanung geregelt wird. Es soll folgendes gewährleisten:

- Ein gleichzeitiges Buchen darf nicht möglich sein um Konflikte zu vermeiden.
-	Die Termine müssen vom Prüfer flexibel angegeben werden können.
-	Organisation muss dezentral sein um den Prüfer zu entlasten.


### 1.4 Akteure

Administrator(Prüfer), Student(Gruppe).

### 1.3 Optik und Nutzung

Ein "Kalender" auf dem 15 Tage innerhalb der Prüfungsphase einsehbar sind. Die Tage sind mit Datum markiert und unterteilt in Doppelstunden gleich dem Stundenplan der HTW. Auf dieser Oberfläche können Termine mit 5 Zuständen eingetragen werden: *gesperrt*, *frei*, *reserviert*, *gebucht nicht bestätigt*, *gebucht bestätigt*. Jeder Zustand besitzt eine eindeutige farbliche Markierung.

Der Administrator trägt die Zustände *gesperrt*, *frei*, *gebucht bestätigt* ein.

Der Administrator kann alle Termine bzw. Zustände ändern.

Der Student trägt die Zustände *reserviert*, *gebucht nicht bestätigt* ein.

Der Student kann nur *reserviert* ändern und kann nur eine Eintragung aktiv haben.

## 2 Optional

- Passwortabfrage für den Prüfling
- Auszug für eigenen Kalender und/oder Excel Tabelle

Den 02.05. für das erste Meilensteintreffen ausgemacht. 
