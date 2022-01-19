import 'dart:io';
import 'currensy.dart';

void main() {
  Currency euro = Currency("ЕВРО", "EUR", 98, 97.5);
  Currency usd = Currency("Доллар США", "USD", 84.5, 83);
  Currency rur = Currency("Российский рубль", "RUR", 1.54, 1.35);
  Currency ten = Currency("Казахский тенге", "TEN", 0.012, 0.011);
  List currensys = [euro, usd, rur, ten];
  print("\nКурс валют на сегодня:      Покупка      Продажа");
  for (int i = 0; currensys.length > i; i++) {
    Currency cur = currensys[i];
    print(
        "${i + 1}. ${cur.shortName} (${cur.curName}) - ${cur.buy}  ${cur.sale}");
  }
  print("\nКакую операцию хотите произвести:");
  print("1. Купить");
  print("2. Продать");
  String operationChoise = stdin.readLineSync()!;
  print("\nВыберите валюту");
  for (int i = 0; currensys.length > i; i++) {
    print("${i + 1}. ${currensys[i].shortName}");
  }
  String userChoise = stdin.readLineSync()!;
  int curChoise = int.parse(userChoise);
  print("\nКакую сумму:");
  String userInputSumm = stdin.readLineSync()!;
  double summ = double.parse(userInputSumm);
  if (operationChoise == "1") {
    Currency cur = currensys[curChoise - 1];
    double result = cur.buyConverter(summ);
    print(
        "Вы купите $summ ${cur.shortName} по курсу ${cur.buy} на $result сом");
  } else if (operationChoise == "2") {
    Currency cur = currensys[curChoise - 1];
    double result = cur.saleConverter(summ);
    print(
        "Вы продадите $summ ${cur.shortName} по курсу ${cur.sale} на $result сом");
  }
}
