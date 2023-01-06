/*
Garipova Dilyara (4121891)

2. Aufgabe
a)
1) Man muss bei jedem Monat wissen, wie viel Tage der Monat hat. (Zeile 31-80)
2) Durch Schleife erzeuge ich in List alle Tage.(Zeile 82-100)
Beachte dabei dass wenn die Woche nicht am Montag startet, soll ich bei Scliefe noch n- Leerzeichen hinzufügen.
3) Combiniere zwei Lists (mit Wochentagen und Tagen) in eine String.(Zeile 104)
4)String muss in Calenderform geteilt werden: nach jeden 7 Tagen.
In meinem Fall sollen  Symbolen (Leerzeichen und | ) mitgezählt werden.
Die Schleife aus 2.Schritt wird auch bearbeitet: zu einstelligen Zahlen wird Leerzeichen hinzugefügt.
 So jetzt besteht jeder Tag 3 Symbole:
  also String wird nach 3*7 =21 Symbolen in newlines geteilt. (Zeile 27-31)
*/

import 'package:flutter/material.dart';

var arr1 = ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'];// Wochentage
final arr2=[];//List für Calender
var days;//Gibt an, wieviel Tage ein Monat hat
var month;//Gibt an, welcher Monat gezeigt werden soll
var calender; //Array für Calender als String

void main() {
  printCalender(8, 3);
}
//Funktion für Teilen des Strings in Lines mit bestimmter Symbolenanzahl
String _formatReferenceCode(String code) {
  final Pattern pattern = RegExp(r'(.{21})(?!$)');
  return code.replaceAllMapped(pattern, (m) => '${m[0]}\n');
}

void printCalender( int mon, int weeksday ) {

  switch (mon) {
    case 1:
      month="Januar";// 31 Tage
      days=31;
      break;
    case 2:
      month= "Februar";//28
      days=28;
      break;
    case 3:
      month= "März";//31
      days=31;
      break;
    case 4:
      month= "April"; //30
      days=30;
      break;
    case 5:
      month= "Mai"; //31
      days=31;
      break;
    case 6:
      month= "Juni"; //30
      days=30;
      break;
    case 7:
      month= "Juli"; //31
      days=31;
      break;
    case 8:
      month= "August"; //31
      days=31;
      break;
    case 9:
      month= "September";//30
      days=30;
      break;
    case 10:
      month= "Oktober";//31
      days=31;
      break;
    case 11:
      month= "November";//30
      days=30;
      break;
    case 12:
      month= "Dezember";//31
      days=31;
      break;
  }
//Gibt an, an welcher Stelle Calender anfangen soll
if (weeksday !=1) { //Wenn es am Dienstag startet, wird um 1 verschoben
  for( int s=1; s<=days; s=s+1) {
    if (s<10) { //Wenn die Zahl einstellig ist, wird Leerzeichen hinzugefügt
      arr2.add(' $s');
    } else {
      arr2.add(s);
    }
  }
  for (int v=1; v<=(weeksday-1); v=v+1) {
    arr2.insert(0, "  ");
  }
}
else
{  for( int s=1; s<=days; s=s+1) {
  if (s<10) {
    arr2.add(' $s');
  } else {
    arr2.add(s);
  }
}
}

calender = [...arr1, ...arr2];
String result= _formatReferenceCode((calender.join('|')));
print(month  + '\n $result');

}










