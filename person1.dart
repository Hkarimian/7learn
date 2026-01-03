
enum Certificate { diploma, bachelor, master, phd }


abstract class Person {
  final String _name;
  final String _nationalCode;
  final String _phoneNumber;
  final String _address;

  Person({
    required String name,
    required String nationalCode,
    required String phoneNumber,
    required String address,
  })  : _name = name,
        _nationalCode = nationalCode,
        _phoneNumber = phoneNumber,
        _address = address;

  String get name => _name;
  String get nationalCode => _nationalCode;
  String get phoneNumber => _phoneNumber;
  String get address => _address;

  void printInfo();
  String doWork(); 
}

class Student extends Person {
  final String _studentId;
  final String _major;

  Student({
    required String name,
    required String nationalCode,
    required String phoneNumber,
    required String address,
    required String studentId,
    required String major,
  }) : _studentId = studentId,
       _major = major,
       super(name: name, nationalCode: nationalCode, phoneNumber: phoneNumber, address: address);

  Student.english({
    required String name,
    required String nationalCode,
    required String phoneNumber,
    required String address,
    required String studentId,
  }) : _studentId = studentId,
       _major = "English literature",
       super(name: name, nationalCode: nationalCode, phoneNumber: phoneNumber, address: address);

  String get studentId => _studentId;
  String get major => _major;

  @override
  void printInfo() {
    print('نام: $name');
    print('کد ملی: $nationalCode');
    print('شماره تماس: $phoneNumber');
    print('آدرس: $address');
    print('شماره دانشجویی: $_studentId');
    print('رشته تحصیلی: $_major');
  }

  @override
  String doWork() {
    return 'درس می‌خواند';
  }
}

class Teacher extends Person {
  final Certificate _degree;
  final double _salary;

  Teacher({
    required String name,
    required String nationalCode,
    required String phoneNumber,
    required String address,
    required Certificate degree,
    required double salary,
  }) : _degree = degree,
       _salary = salary,
       super(name: name, nationalCode: nationalCode, phoneNumber: phoneNumber, address: address);

  // getterها
  Certificate get degree => _degree;
  double get salary => _salary;

  @override
  void printInfo() {
    print('نام: $name');
    print('کد ملی: $nationalCode');
    print('شماره تماس: $phoneNumber');
    print('آدرس: $address');
    print('مدرک تحصیلی: $_degree');
    print('حقوق: $_salary');
  }

  @override
  String doWork() {
    return 'تدریس می‌کند';
  }
}

void main() {
  Student student1 = Student(
    name: 'محمد جعفری',
    nationalCode: '9876543210',
    phoneNumber: '09123456789',
    address: 'تهران، خیابان ولیعصر',
    studentId: 'S12345',
    major: 'Computer Science',
  );

  Student student2 = Student.english(
    name: 'علی موسوی',
    nationalCode: '1234567890',
    phoneNumber: '09223344556',
    address: 'شیراز، بلوار انقلاب',
    studentId: 'S67890',
  );

  Teacher teacher1 = Teacher(
    name: 'دکتر رضا احمدی',
    nationalCode: '1122334455',
    phoneNumber: '09334455667',
    address: 'مشهد، خیابان امام',
    degree: Certificate.phd,
    salary: 15000000,
  );

  student1.printInfo();
  print(student1.doWork());
  print('---');
  student2.printInfo();
  print(student2.doWork());
  print('---');
  teacher1.printInfo();
  print(teacher1.doWork());
}
