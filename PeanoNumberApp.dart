#import('dart:html');
#source('PeanoNumber.dart');
#source('Succ.dart');
#source('Zero.dart');

class PeanoNumberApp {

  PeanoNumberApp() {
  }

  void run() {
    PeanoNumber x, y;
    x = PeanoNumber.fromInteger(3);
    y = PeanoNumber.fromInteger(2);
    print(x.toString() + " + "+y.toString() + " = "+ x.addPeanoNumber(y).toString());
    this.write(x.toString() + '+'  + y.toString() + '='+ x.addPeanoNumber(y));
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = message;
    print(message);
  }
}

void main() {
  new PeanoNumberApp().run();
}
