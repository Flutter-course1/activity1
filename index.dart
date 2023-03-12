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
    print('Welcome to the Order System!');
  }
}

void main() {
  // Create object of Order with optional properties
  Order order1 = Order(1, 'Jeans', startDate: DateTime.now(), expiryDate: DateTime.now().add(Duration(days: 7)));
  order1.printOrderDetails();

  // Create object of Order with all properties as mandatory
  Order order2 = Order.withAllProperties(2, 'Pant', DateTime.now(), DateTime.now().add(Duration(days: 14)));
  order2.printOrderDetails();

  // Print welcome message
  order1.printWelcomeMessage();
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

  print('Number of students who got 90 or more $count90');
  print('Number of students who got 80 or more $count80');
  print('Number of students who got 70 or more $count70');
  print('Number of students who got 60 or more $count60');
  print('Number of students who got 50 or more $count50');
}


// -------------------------------------------------------------------------
// Question 4

// 1
var average;
final int age = 20;

// 3
List<int?> myList3 = List.filled(8, null, growable: true);

// 4
List<Object?> myList3 = List.filled(8, null, growable: true);
myList3.add(30);

// 5
bool ifExisting = myList3.contains(30);
print("ifExisting is $ifExisting, and its type is ${ifExisting.runtimeType}");

// 6
int x = 1;
String x1 = "Nada";
print("the number is $x");
print("the value of x1 is $x1");

// 7
class Student {
  int id;
  double avg;
  String name;

  Student(this.id, this.avg, this.name);

  Student.first(this.id, {this.name = "", this.avg = 0.0});
}

void main() {
  var objectStudent = Student(1201, 90, "mohamed");
}
