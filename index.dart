// Question 1
class Order {
  int orderNumber;
  String orderName;
  DateTime expiryDate;
  DateTime startDate;

  // Constructor with optional parameters for startDate and expiryDate
  Order(this.orderNumber, this.orderName, {this.startDate, this.expiryDate});

  // Constructor with mandatory parameters for all properties
  Order.withAllProperties(this.orderNumber, this.orderName, this.startDate, this.expiryDate);

  void printOrderDetails() {
    print('Order number: $orderNumber');
    print('Order name: $orderName');
    if (startDate != null) {
      print('Start date: ${startDate.toString()}');
    }
    if (expiryDate != null) {
      print('Expiry date: ${expiryDate.toString()}');
    }
  }

  void printWelcomeMessage() {
    print('Welcome to the Order!');
  }
}

void main() {
  // Create object of Order with optional properties
  Order order1 = Order(1, 'Order 1', startDate: DateTime.now(), expiryDate: DateTime.now().add(Duration(days: 7)));
  order1.printOrderDetails();
  order1.printWelcomeMessage();

  // Create object of Order with all properties as mandatory
  Order order2 = Order.withAllProperties(2, 'Order 2', DateTime.now(), DateTime.now().add(Duration(days: 14)));
  order2.printOrderDetails();
  order2.printWelcomeMessage();
}

