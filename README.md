# database_fairysales
1.) Instanzen haben einen Instanz-Namen. Dieser soll aus maximal 42 alphanumerischen Zeichen bestehen.
2.) Dateien werden vom System umbenannt (originalName zu storageName). StorageNames sollen aus maximal 30 alphanumerischen Zeichen bestehen.
3.) Entfernen Sie den Eintrag (f_entries) mit der headline „Casestudy1“. Sollten andere Tabellen auf diesen Eintrag referenzieren, sorgen sie dafür, dass auch dort die entsprechenden Inhalte entfernt werden.
4.) Selektieren Sie alle Datei-Lösch aktionen aus dem Log. Dateilöschungen erkennen Sie am scope.
5.) Entfernen Sie die Spalte „numOfPics“ aus der Tabelle f_files.
6.) Verknüpfen Sie die Dateien (f_files) sinnvoll mit den Usern (f_users).
7.) Generieren Sie eine Liste, die alle Benutzer angibt (benutzername, vor+nachname als „Name“), die Zugriffsrechte für die Instanz „World #2“ haben
8.) Generieren Sie eine Liste, auf der ersichtlich ist, welche Datei auf welcher Instanz liegt. Zeigen Sie dabei nur den StorageName sowie den Instanznamen an.
9.) In der Log-Tabelle befinden sich ca. 9000 Einträge. Finden Sie heraus, wie viele unterschiedlichen Nachrichten (message) es im Log gibt.
10.) Stellen Sie für das System ein, dass Benutzer maximal 3 Versuche haben, sich einzuloggen.
11.) Der Datenschutzexperte konsultiert Sie und würde gerne in Erfahrung bringen, welche Benützungtypen für Mediendateien vorgesehen sind, und wie viele Dateien für den jeweiligen Typ im Datenbestand sind
12.) Fügen Sie eine neue Instanz hinzu. Sie soll „World #CB“ heißen und „Coders.Bay“ als Beschreibung beinhalten.
13.) Erweitern Sie die Informationen über die Benutzer (f_users) um Straße, Postleitzahl und Ort. Achten Sie darauf, dass die Datenbank danach noch der 3. Normalform entspricht.
14.) Legen Sie einen neuen Benutzer (f_users) für sich selbst an. Vergeben Sie sich selbst Rechte für alle Instanzen. Ihre Aktuelle Instanz soll „World #CB“ sein. Hinweis: Achten Sie darauf, dass ihr Passwort ebenso wie alle anderen SHA1 verschlüsselt in der Datenbank abgelegt wird.
15.) Sorgen Sie dafür, dass alle Einträge (f_entries) mit dem Namen „Applications“ nunmehr auf der neu angelegten Instanz laufen.
16.) Löschen Sie danach alle übrigen Einträge, die noch auf der Instanz „World #2“ liegen.
17.) Generieren Sie eine Liste aller Einträge mit einem Hintergrundbild, die vom user „frischluft“ angelegt wurden.
18.) Generieren Sie eine Liste, die den Namen und die Überschrift aller Einträge zeigt. Auf dieser Liste sollen ebenso der Benutzername als „Autor“ sowie der Instanzname als „Server“ ausgegeben werden.
19.) Wählen sie alle Log-Einträge aus, deren Scope entweder „LOGIN“ oder „general“ ist. Von den Log-Einträgen sollten Sie die ID, den Scope und den Benutzernamen ausgeben. (670)
20.) Lösen Sie Aufgabe 19, ohne den Hilfsoperator „OR“ zu verwenden
