class Currency {
  String curName;
  String shortName;
  double buy;
  double sale;

  Currency(this.curName, this.shortName, this.buy, this.sale) {}

  double buyConverter(double summ) {
    return summ * buy;
  }

  double saleConverter(double summ) {
    return summ * sale;
  }
}
