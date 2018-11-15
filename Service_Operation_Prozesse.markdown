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
  Ungeplante Unterbrechung oder Reduktion der Qualität eines IT-Services. z.B.
    * Fragen von Benutzern
    * Meldungen von IT-Mitarbeitern
    * Monitoring Events

* **Workarounds**  
   siehe Problem Management.

* **Incident Model**  
   Vordefinierte Vorgehensweise für eine bestimmte Art von ähnlichen oder auch gleichen Incidents.

### Aktivitäten

![Incident Management Prozesse](incident_management_activities.png)

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







