<head>
<meta charset="utf-8" >
<style>
body {
    font-family: "Droid Sans", Arial, sans-serif;
};
</style>
</head>

# Service Operation Prozesse

Die folgenden Service Operation Prozesse sind in ITIL definiert:

 * Incident Management
 * Request Fulfillment
 * Problem Management
 * Access Management
 * (Event Management) (Dozent Fragen, weil in Buch aber nicht Teil der Aufgabe?? Wahrscheinlich neuerer Prozess??)


Diese werden in den jeweiligen Kapiteln später genauer erläutert.

## Ziele

Das Ziel von Service Operation ist die Realisierung der strategischen Ziele des Unternehmens _während der Betriebsphase der IT Services_.

## Gegensätze in der Service Operation

In der Service Operation gibt es grundsätzliche Gegensätze die immer wieder auftreten und in ein Gleichgewicht gebraucht werden müssen.

### Interne Technologiesicht vs externe Business-Sicht

### Stabilität vs Flexibilität

### Qualität vs Kosten

### Reaktiv vs Proaktiv

Sollen wir das oben hier erwähnen?


## Incident Management

Incident Management befasst sich mit allen Ereignissen, die einen Service stören oder beeinflussen können, und ist verantwortlich für den gesamten Lebenszyklus aller Incidents.

* **Incident**  
  Ungeplante Unterbrechung oder Reduktion der Qualität eines IT-Services. Zum Beispiel:
    * Fragen von Benutzern
    * Meldungen von IT-Mitarbeitern
    * Monitoring Events
    * Ausfall einer Hard-Disk im RAID (auch ohne Service Unterbruch)


* **Major Incident**  
  Im Gegensatz zu einfachen Incidents haben diese besonders grosse Auswirkungen auf die Geschäftsprozesse und bedingen besondere Massnahmen bei der Service-Wiederherstellung.

* **Workarounds**  
   siehe Problem Management.

* **Incident Model**  
   Vordefinierte Vorgehensweise für eine bestimmte Art von ähnlichen oder auch gleichen Incidents.

### Abgrenzung zum Problem Management

Ein Incident bleibt immer ein Incident, auch ein Major Incident. Es werden nur Symptome und Auswirkungen mittels eines Workarounds behoben. Sie werden höchstens zu einem Problem zugewiesen, welches die Grundlegende Ursache für ein oder mehrere Incidents ist.

### Aktivitäten

![Incident Management Prozesse](incident_management_activities.png)

1. **Incident tritt auf**  
  Das ein Incident auftritt heisst nicht umbedingt, dass dieser direkt auch identifiziert wird!
2. **Incident identifizierung**  
  Entweder durch auftreten, oder durch eine Meldung vom Anwender / Monitoring. Am besten bevor der Incident eine Auswirkung auf den Benutzer hat.
3. **Incident Aufzeichnung**  
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
* **Statusverfolgung**  
  Der Status soll gepflegt werden & vereinfacht die Handhabung. Typische Stati sind (je nach festlegung)
  * *Offen*: Noch nicht zugeordnet
  * *In Arbeit*
  * *Gelöst*: Incident wurde behoben, Lösung jedoch nicht bestätigt.
  * *Solved*: Incident ist abgeschlossen & Lösung wurde durch Anwender bestätigt.
* **Incident Priorisierung**  
  Incidents werden Priorisiert nach *Auswirkung* auf das Business des Kunden und nach *Dinglichkeit*.wie schnell der Service wieder hergestellt werden muss. Es braucht hier klare Richtlinien und Praxisbeispiele für die Mitarbeiter, um die Priorisierung korrekt vorzunehmen.  
  Die Priorisierung legt lediglich die Reihenfolge der Abarbeitung fest.

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

![Incident Management Prozesse](problem_management_activities.png)

## Access Management

Das Access Management ist Verantwortlich für die Verwaltung der Zugriffsrechte.

* **Identität**  
  Das Access Management setzt voraus, dass die Anwender korrekt identifiziert werden können und der Status innerhalb der Organisation verifiziert werden kann.
  * **Aktivitäten**
    * Verifikation der Identität  
      Um Rechte vergeben zu können, muss erst die Identität des Benutzers verifiziert werden.
      * Ist der Anwender derjenige der er vorgibt zu sein?
        * Wird z.B. überprüft über Benutzername/Passwort, oder SmartCards
      * Darf er die Angeforderten Berechtigungen erhalten?

    * Überwachung des Identiätsstatus  
      Die Rolle eines Mitarbeiters innerhalb einer Organisation kann sich ändern oder der Mitarbeiter kann auch die Organisation verlassen.

* **Rechte**  
  ...
  * **Aktivitäten**
    * Rechte vergeben
      * Autorisierten Benutzern wird Zugriff auf Services oder Daten gewährt.
    * Rechte entfernen oder einschränken
      *

* **Zugriff**  
  ...
  * **Aktivitäten**
    * Zugriff anfordern  
      ....
    * Protokollieren und Überwachen  
      Die Vergebenen Rechte und deren Nutzung wird aktiv überwacht, um Missbrauch oder Veränderungungen
      in der Organisation, sollen die Berechtigungen dementsprechend entzogen oder angepasst werden.







