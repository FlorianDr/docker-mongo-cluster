## Deployment eines MongoDB Clusters auf der Docker Infrastruktur

### Einleitung
Diese Anleitung zeigt wie es möglich ist mit wenigen Handgriffen ein MongoDB Cluster auf Docker aufzusetzen. Um die Komplexität dieser Anleitung gering zu halten, wurde auf weitere Optimierung der Konfiguration verzichtet. Daher sollte das Cluster nicht ohne weitere Prüfung in Produktion eingesetzt werden. Das Repository spiegelt das Dateisystem nach dem Ausführen aller Befehle wieder.

### Warum phusion/baseimage?
Meiner Ansicht nach ist dieses Image eine bessere Grundlage für Docker Images, da es mit dem correcte init process das PID 1 zombie problem löst. Außerdem wird die Datenbank korrekt heruntergefahren und es kommt nicht zu inkonsistenten Ständen.

Mehr dazu: [phusion/baseimage](https://github.com/phusion/baseimage-docker).

### Aufbau der Images
Wir werden uns mehrere Vorlagen anlegen, die wir im Laufe der Anleitung wieder verwenden:

**mongod** ist die Grundlage für unsere Config Server und die Instanzen im Replica Set.
**mongod_cfg** ist das Image für einen Config Server.
**mongod_rs1** ist das Image für eine Instanz im Replica Set mit dem Namen *"rs1"*.
**mongos** ist Vorlage für unseren Test-Router, über den wir schlussendlich den Zugriff auf das Cluster bekommen.
**mongos_test** ist der Test-Router.

### Anleitung
