import 'package:test/test.dart';

void main() {
  group("USD and BTC calculations", () {
    test('calculations USD 15,000 to BTC', () {
      double btc = Calculations.usdtobtc(15000);
      expect(btc, 1.08);
    });

    test('Calculate USD 1 to BTC', () {
      double btc = Calculations.usdtobtc(1);
      expect(btc, 0.000072);
    });

    test('Calculate BTC 5 to USD', () {
      double btc = Calculations.btctousd(5);
      expect(btc, 69023);
    });

    test('Calculate BTC 100 to USD', () {
      double btc = Calculations.btctousd(100);
      expect(btc, 1380460);
    });
  });
}

class Calculations {
  // Input: number of cups (positive integer)
  // Output: number of ounces in a cup
  static double usdtobtc(double dollar) {
    double bitcoin = 0.000072;
    return dollar * bitcoin;
  }

  static double btctousd(double bitcoin) {
    double dollar = 13804.60;
    return bitcoin * dollar;
  }
}
