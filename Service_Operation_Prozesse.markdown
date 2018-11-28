---
title: Service Operation Prozesse
author: Elia Griffo, Moritz Küttel
header-includes: |
    \usepackage{fancyhdr}
    \usepackage{graphicx}
    \usepackage{wrapfig}
    \pagestyle{fancy}
    \fancyhead[RO]{SSM HS18}
    \fancyfoot[CO,CE]{\thepage}

abstract: "In diesem Dokument betrachten wir die Service Operation Prozesse Incident Management, Request Fulfillment, Problem Management und Access Management wie in ITIL definiert.

Jeder Dieser Prozesse ist in einem Kaptiel beschrieben."
geometry: margin=0.75in
mainfont: Gentium Basic
mainfontoptions: BoldFont=Gentium Basic Bold
mainfontoptions: ItalicFont=Gentium Basic Italic
mainfontoptions: BoldItalicFont=Gentium Basic Bold Italic
---

## Incident Management

Incident Management befasst sich mit allen Ereignissen, die einen
Service stören oder beeinflussen können, und ist verantwortlich für
den gesamten Lebenszyklus aller Incidents. Wichtige Begriffe sind:

* **Incident**:
  Ungeplante Unterbrechung oder Reduktion der Qualität eines IT-Services. Zum Beispiel:
    * Fragen von Benutzern
    * Meldungen von IT-Mitarbeitern
    * Monitoring Events
    * Ausfall einer Hard-Disk im RAID (auch ohne Service Unterbruch)
  In der Praxis entspricht dies einem Ticket.

  Wiedereröffnung eines Tickets will man Grundsätzlich vermeiden. Jedoch
  können Situationen in der Praxis auftreten, in denen dies
  Sinnvoll ist. Es benötigt, jedoch klare Regeln, wann ein Incident
  wiedereröffnet wird & wann es sich um einen neuen Incident handelt.

* **Major Incident**:
  Im Gegensatz zu einfachen Incidents haben diese besonders grosse
  Auswirkungen auf die Geschäftsprozesse und bedingen besondere
  Massnahmen bei der Service-Wiederherstellung.

* **Workarounds**:
   siehe Problem Management.

* **Timescales**: Anhand des SLAs werden für die einzellnen Aktivitäten eines Indicents Zeiten vereinbart, welche im OLA festgehalten werden.

* **Incident Models**:
   Vordefinierte Vorgehensweise für eine bestimmte Art von ähnlichen oder auch gleichen Incidents.


### Abgrenzung zum Problem Management

Ein Incident bleibt immer ein Incident, auch ein Major Incident. Es werden nur Symptome und Auswirkungen mittels eines Workarounds behoben. Sie werden höchstens zu einem Problem zugewiesen, welches die Grundlegende Ursache für ein oder mehrere Incidents ist.

Jedoch ist es sehr wichtig für einen funkionierenden Incident Management Prozess, dass Informationen wie Errors & Workarrounds aus dem Problem Management Prozess zur Verfügung stehen, um aus Vergangenen Incidents zu lernen und sinnvolle Workarounds einzusetzen.

### Aktivitäten

Die Aktivitäten können sich grundsätzlich je nach Unternehmen und Umständen unterscheiden. Folgende Aktivitäten bieten aber einen guten Rahmen für die Gestaltung eines Incident Mangement Prozesses.

![Incident Management Prozesse](incident_management_activities.png){ width=50% }

1. **Incident tritt auf**:
  Das ein Incident auftritt heisst nicht umbedingt, dass dieser direkt auch identifiziert wird!
2. **Incident identifizierung**:
  Entweder durch auftreten, oder durch eine Meldung vom Anwender / Monitoring. Je früher man Fehler entdecken kann, desto schneller können Fehler beseitigt werden & der Anwender bekommt dies im Besten Fall nicht einmal mit.
3. **Incident Aufzeichnung**:
  Alle Incidents sollen aufgezeichnet werden, da dies wichtig ist für den ganzen Prozess wie auch zur Messung der Prozess-Performance. Dies soll beinhalten:
    * Zeit/Datum der Erfassung & Abschluss
    * Eindeutige ID
    * Status
    * Kategorie / Kategorie bei Abschluss
    * Dringlichkeit & Ausirkung
    * Name des Erfassers und Kommunkationsart
    * Name des Benutzers und Kommunkationsart
    * Betroffene Configuration Items.
    * Verlinke Problems / Known Errors
    * Durchgeführte Massnahmen zur Behebung
    * Personenen/Rolle welcher Incident bearbeitet
4. **Statusverfolgung**:
  Der Status soll gepflegt werden & vereinfacht die Handhabung. Typische Stati sind: 
  *Offen*: Noch nicht zugeordnet  
  *In Arbeit*  
  *Gelöst*: Incident wurde behoben, Lösung jedoch nicht bestätigt.  
  *Solved*: Incident ist abgeschlossen & Lösung wurde durch Anwender bestätigt.
5. **Kategorisierung**:
  Eine Kategorisierung wird vorgenommen, damit der Incident von den
  dafür zuständigen Mitarbeitern direkt verarbeitet werden kann. Keine
  Kategorisierung oder eine Fehlkategorisierung kann zu Mehraufwand,
  z.B. durch Weiterleitungen führen.
6. **Priorisierung**:
  Incidents werden Priorisiert nach *Auswirkung* auf das Business
  des Kunden und nach *Dinglichkeit* wie schnell der Service wieder
  hergestellt werden muss (nach SLA). Es braucht hier klare Richtlinien und
  Praxisbeispiele für die Mitarbeiter, um die Priorisierung korrekt
  vorzunehmen.
  Die Priorisierung legt lediglich die Reihenfolge der Abarbeitung fest.
7. **Initiale Diagnose**:
  Nach dem erfassen des Incidents und dessen Symptome, wird direkt
  versucht eine schnelle Lösung zu finden. Dies ist z.B. der Job
  des First-Level-Supports, der noch direkt am Telefon mit dem Kunden
  versucht durch z.B. Fragebäume oder Wissensdatenbanken oder der Known
  Error Datebase das Problem zu lösen. Im Besten Fall, wenn der Anwender
  die Lösung akzeptiert, kann der Incident direkt abgeschlossen werden.
8. **Eskalation**:
  Bei des Eskalation handelt es sich um weitergabe des Incidents an eine andere Instanz um dort jeweils weitere Aktivitäten durchzuführen. Es wird hier grundsätzlich zwischen zwei Arten unterschieden.  
  _Funktionale Eskalation_:
    Weitergabe z.B. aufgrund von fehlendem Wissen, Fähigkeiten oder
    Experitise. Aber auch anhand der Zuständigkeit der zugewiesenen
    Kategorie. Dies ist z.B. eine Weiterleitung des 1st Level Supports
    an den Second Level Support. Die Verwantwortung zur Bearbeitung des
    Incidents bleibt hier aber bei der Instanz die ihn weitergeleitet hat.  
  _Hierarchische Eskalation_:
    Hier handelt es sich um eine Weitergabe an den übergeordneten
    Manager (Oft zuerst der Prozessmanager). Dies kann im Falle eines
    Major Incidents sein, um den Manager zu informieren. Im anderen
    Fällen wie der Überschreitung der vorgesehenen Lösungszeit,
    wird dies getan um weitere Massnahmen einzuleiten.

7. **Untersuchung und Diagnose**:
  Hier werden alle Informationen bewertet und Ereignisse identifiziert,
  welche den Incident ausgelöst haben könnten. Dies kann dazu führen,
  dass die Priorisierung des Incidents angepasst werden muss, da der
  grad der Auswirkungen hier neu bewertet wird.
8. **Behebung und Wiederherstellung**:
  In dieser Aktivität werden die Massnahmen zur Wiederherstellung des
  Services durchgeführt, nachdem eine potenzielle Lösung identifiziert
  wurde. Dies kann durch den Anwender selbst, durch den Service-Desk, ein
  internes Support-Team oder sogar durch externe Lieferanten geschehen.
9. **Incident abschliessen**
  Hier wird durch den Service Desk sichergestellt das der Fehler wirklich
  behoben wurde und der Anwender die Lösung akzeptiert (Kann auch durch
  _nicht antworten_ auf ein geschlossenes Ticket geschehen). Ausserdem
  ist es wichtig die Vollständigkeit der Dokumentation zu überprüfen,
  evtl. die Kategorie zu korrigieren. Zudem muss bei bedarf das Problem
  Management informiert werden, über die Notwendigkeit präventiver
  Massnahmen. Es kann auch die Anwenderzufriedenheit abgefragt werden,
  jedoch gut dosiert, da man sonst auf Unmut stossen könnte.

## Request Fulfilment

Request Fulfilment setzt sich mit Anwenderanfragen verschiedenster Natur auseinander. 
Beispiele sind:
*   Umzüge von Anwendersystemen oder Anfragen bezüglich zusätzlicher Informationen
*   Passwort zurücksetzen
*   Unterstützung bei der Nutzung von Services
  
### Ziele
*	Kanal für Bestellung und Bezug von «Standardleistungen» bereitstellen
*	Informationen zu beziehbaren Leistungen und deren Bezugsweg verfügbar machen
*	Beschwerden entgegennehmen und verarbeiten
*	Angebotene Standardleistungen haben definierte Genehmigungswege und Prozesse
*	Andere Prozesse wie Incident- oder Change-Management entlasten

### Begriffe
*	Service Request
    *	Anfrage eines Anwenders nach Informationen, Beratung, Support, Standard-Change oder nach Zugriff auf IT-Service
    *	Meist direkt am Service Desk bearbeitet
    *	Oft sehr einfache, risikoarme und schnell zu bearbeitende Anfragen
*	Menüauswahl (Menue selection)
    *	Abrufmöglichkeit der gewünschten Leistungen anhand definierter Menüauswahl
    *	Kann innerhalb des Servicemanagement-Tools abgebildet werden
    *	Bei Fehlen eines solchen Tools kann ein Katalog oder eine Anforderung beim Service Desk Abhilfe schaffen
*	Statusüberwachung (request status tracking)
    *	Zuverlässige Überwachung der Request-Status
    *	Mögliche Status Codes: Draft, In Review, Abgelehnt, Fertiggestellt etc.
*	Koordination der Ausführung (coordination of fulfilment activities)
    *	Tatsächliche Ausführung abhängig von der Art der Anfrage
    *	Häufig direkt durch Service-Desk-Mitarbeiter, aber es können auch weitere Personen und Rollen miteinbezogen werden (z.B. Facility Mgmt. für Umzüge)

### Aktivitäten
Der Prozess besteht aus den folgenden Aktivitäten:

*	Request annehmen (receive request)
    *	Arbeiten erst beginnen, wenn die formale Anfrage beim Service Provider eingeht
    *	Vordefinierte Templates nutzen falls möglich, um Aufwand gering zu halten
    *	Beurteilung, ob es tatsächlich ein Request ist und nicht etwa ein Incident
*	Logging und Validierung (request logging and validation)
    *	Requests müssen vollständig erfasst und mit Zeitstempel versehen werden
    *	Wichtige Informationen sind: Kategorie, Zeitstempel, Anwender, Dringlichkeit, Priorität, Status, Beschreibung etc.
*	Kategorisierung (request categorization)
    *	Beschreibt, um welche Art von Request es sich handelt
    *	Wichtig für spätere Reports zur Nutzung der Services und Planung der Ressourcen
    *	Beispiele: Nach Service, nach Aktivitäten, nach CI Typ
*	Priorisierung (request priorization)
    *	Legt die Reihenfolge der Abarbeitung der Requests fest
    *	Setzt sich zusammen aus der Auswirkung auf das Business und der Dringlichkeit
*	Autorisierung (request authorization)
    *	Jeder Request braucht vor der Ausführung eine Autorisierung
    *	Kann je nach Fall unterschiedlich ablaufen
    *	Falls keine Autorisierung möglich ist, folgt eine Begründung an den Anwender
*	Review (request review)
    *	Überprüfung, welche Funktion für die Durchführung verantwortlich ist
    *	Requests, die nicht direkt im Service Desk bearbeitet werden können, werden weitergeleitet und überwacht
*	Durchführung (request model execution)
    *	Die Durchführung erfolgt durch die zugewiesene Funktion anhand vorgegebener Request Models – so wird die Wiederholbarkeit und Konsistenz gewährleistet
*	Abschluss (request closure)
    *	Nach Beendigung der Aktivitäten wird der Request über den Service Desk abgeschlossen
    *	Anwender werden informiert und die Aktivitäten dokumentiert

### Rollen
*	Service-Desk-Mitarbeiter
    *	Nehmen die initiale Bearbeitung vor
    *	Führen einfache Service Requests direkt aus
*	Service-Operation-Teams und externe Lieferanten
    *	Erfordern Service Requests weitere Aktivitäten werden diese von internen Teams oder Dienstleistern ausgeführt
*	Facility Management, Einkauf und weiter Abteilungen
    *	Sind bei der Erfüllung der Requests eingebunden und unterstützen bei Bedarf (Übernahme von Aktivitäten oder Freigaben)
*	Dedizierte Support-Teams
    *	Für Ausnahmefälle zuständig: Grosse Zahl von Reqeusts oder kritische Anfrage müssen abgearbeitet werden

### Key-Performance-Indikatoren (KPI)
Folgendes sind Beispiele für mögliche Kennzahlen, an denen sich die Prozessqualität messen lassen:

*	Gesamtzahl der Service Requests
*	Anteil offener Requests, die auf Bearbeitung warten
*	Durchschnittliche Zeit für die Bearbeitung
*	Anteil Requests, die in vorgesehener Zeit abgeschlossen wurden
*	Durchschnittliche Kosten für die Durchführung

### Herausforderungen

Für einen erfolgreichen Prozess muss gewährleistet werden, dass alle Anfragen tatsächlich zu diesem Prozess zuzuordnen sind. Es braucht klare Kriterien bei der Kategorisierung von Incidents und Service Requests.
Bei Anforderungen neuer Komponenten oder deren Umzug gibt es oft verschiedenste Lösungen, welche identifiziert und durch die Prozesse des Request Fulfilment ersetzt werden sollten.

## Problem Management

Ziel des Problem Management ist die Vermeidung von Incidents. Z.B. Das die gleichen Incidents nicht mehrmals auftreten, oder gar nicht auftreten können.

* **Problem**  
  Ein Problem ist die Unbekannte Ursache eines oder mehrerer Incidents.

* **Workaround**  
  Ein Workaround ist eine 

* **Known Error**  
  Ein Known Error ist ein Problem dessen Ursache bekannt ist und ein Workaround existiert.

* **Known Error Database**  
  Beinhaltet alle dokumentieren Known Errors und die dazugehörigen Workarounds.

### Aktivitäten

![Incident Management Prozesse](problem_management_activities.png){ width=50% }

## Access Management

Das Access Management ist Verantwortlich für die Verwaltung der
Zugriffsrechte. Ziel ist es, das Anwender Services oder Servicegruppen
nutzen können, aber nur falls sie dazu berechtigt sind, unter
Berücksichtigung der Information Security wie auch dem Availability
Management.

Der Service-Desk nimmt die Anfragen des Access Managements entgegen. Er
entscheidet selber nicht über die Gewährung von Berechtigungen,
sondern setzt lediglich die Vorgaben aus der Service Strategy und des
Service Designs um, basierend auf den Anforderungen des Unternehmens.

### Identität
Das Access Management setzt voraus, dass die Anwender korrekt
identifiziert werden können und der Status innerhalb der Organisation
verifiziert werden kann.

#### Aktivitäten

* **Verifikation der Identität**:
  Um Rechte vergeben zu können, muss erst die Identität des Benutzers
  verifiziert werden.
  * Ist der Anwender derjenige der er vorgibt zu sein? Es wird zum Beispiel überprüft
  über Benutzername/Passwort, oder SmartCards
  * Darf er die Angeforderten Berechtigungen erhalten?

* **Überwachung des Identiätsstatus**:
  Die Rolle eines Mitarbeiters innerhalb einer Organisation kann sich ändern oder der Mitarbeiter kann auch die Organisation verlassen. Auf solche Veränderungen muss auch reagiert werden und dementsprechend Zugriff entfernt, oder die Rechte angepasst werden.


### Zugriff

Der Zugriff beschreibt, das komplette Ausmass an Rechten eines Benutzer an einem Service oder Daten hat.

#### Aktivitäten

* **Zugriff anfordern**:
  Zugriff kann von Benutzern z.B. durch eine Service Request an das Requestfulfilment angefordert werden.
* **Protokollieren und Überwachen**:
  Die Vergebenen Rechte und deren Nutzung wird aktiv überwacht, um Missbrauch oder Veränderungen
  in der Organisation, sollen die Berechtigungen dementsprechend entzogen oder angepasst werden.

### Rechte

Die Rechte sind die effektiven Berechtigungen die ein Benutzer oder Gruppe auf bestimmte Services oder Daten _im Detail_ hat. (z.B. lesen, schreiben, löschen, ausführen) Hat der Benutzer keinen Zugriff, können auch keine Rechte vergeben werden.

#### Aktivitäten

* **Rechte vergeben**:
  Autorisierten Benutzern wird die Berechtigung auf spezifische Services oder Daten _im Detail_ gewährt. 
* **Rechte entfernen oder einschränken**:
  Rechte sollen auch wieder entfernt oder eingeschränkt werden werden, z.B. auf Anfragen von Benutzern oder aufgrund der Überwachung des Identitätsstatus (siehe oben)

