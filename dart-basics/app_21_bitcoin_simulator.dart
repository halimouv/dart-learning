import 'dart:math';
void main() {
  // Dart Basics | App 21 | Bitcoin Price Simulator
  
  /*
  Simulate live Bitcoin price fluctuations every second.
  
  Steps:
  1. Set an initial Bitcoin price (e.g., 103000.00 DZD).
  2. On each second:
     - Randomly increase or decrease the price.
     - Calculate and display the percentage change.
     - Update All-Time High (ATH) and All-Time Low (ATL).
  3. Show timestamp and detailed stats with each update.
  
  Features:
  - Uses `Random` to simulate real-time market movement.
  - Tracks ATH (highest price) and ATL (lowest price).
  - Displays percentage change between updates.
  - Formats output for readability (2 decimal places).
  
  Bonus:
  - Real-time loop using DateTime.seconds.
  - Could be extended later with colors, arrows, or sound alerts.
  
  Focus:
  - Real-time simulation
  - Math operations (percentage, comparison)
  - Variable tracking and updates
  - Continuous loop with conditional logic
  */

  var btcprice = 103000.00;
  var previousPrice = btcprice;
  var ath =0.00; // All Time High
  var atl =9999999999.00; // All Time Low
  var priceMovment;
  var priceOperator;
  var timenow = DateTime.now().second;

  while (true) {
    if (timenow != DateTime.now().second) {
      timenow =  DateTime.now().second;
      priceMovment = new Random().nextInt(300);
      priceOperator = new Random().nextInt(4);
      previousPrice = btcprice;
      priceOperator >= 2 ? btcprice += priceMovment : btcprice -=priceMovment;
      if (btcprice > ath) {ath = btcprice;}
      if (btcprice < atl) {atl = btcprice;}
      var percentage = ((btcprice - previousPrice)/previousPrice) *100;

      print('Bitcoin Price is ${btcprice.toStringAsFixed(2)} ${percentage.toStringAsFixed(2)}% | ATH : $ath | ATL : $atl | ${DateTime.now()}');
    }
  }
}