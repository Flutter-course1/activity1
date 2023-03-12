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


// -------------------------------------------------------------------------
// Question 2

void main() {
  double gpa = 75; 

  switch (gpa.floor()) { 
    case (gpa > 60):
        print('ناجح');
        break;
    case 90:
      print('ممتاز');
      break;
    case 80:
      print('جيد جدا');
      break;
    case 70:
      print('جيد');
      break;
    case 60:
      print('مقبول');
      break;
    case 50:
      print('متوسط');
      break;
    default:
      print('راسب');
  }
}



// -------------------------------------------------------------------------
// Question 3

void main() {
  List<double> grades = List.filled(50, 0); 

  for (int i = 0; i < 50; i++) {
    grades[i] = (50 + i).toDouble();
  }

  int count90 = 0;
  int count80 = 0;
  int count70 = 0;
  int count60 = 0;
  int count50 = 0;

  for (int i = 0; i < 50; i++) {
    double grade = grades[i];

    if (grade >= 90) {
      count90++;
    } else if (grade >= 80) {
      count80++;
    } else if (grade >= 70) {
      count70++;
    } else if (grade >= 60) {
      count60++;
    } else if (grade >= 50) {
      count50++;
    }
  }

  print('الطلاب الذين حصلوا على الدرجة 90 فما فوق عددهم $count90');
  print('الطلاب الذين حصلوا على الدرجة 80 فما فوق عددهم $count80');
  print('الطلاب الذين حصلوا على الدرجة 70 فما فوق هم $count70');
  print('الطلاب الذين حصلوا على الدرجة 60 فما فوق هم $count60');
  print('الطلاب الذين حصلوا على الدرجة 50 فما فوق هم $count50');
}
