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

## Request Fulfillment

Requestfullfillment befasst sich mit dem Management der Anwenderfragen.

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







