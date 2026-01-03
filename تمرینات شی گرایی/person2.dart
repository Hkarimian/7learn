
enum Certificate {
  diploma,
  bachelor,
  master,
  phd,
}

mixin CoursesMixin {
  List<String> _courses = [];

  List<String> get courses => List.unmodifiable(_courses);

  set courses(List<String> value) {
    _courses = value;
  }

  void addCourse(String course) {
    _courses.add(course);
  }

  void removeCourse(String course) {
    _courses.remove(course);
  }
}

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
  String getJob();
}

class Student extends Person with CoursesMixin {
  final String _studentNumber;
  final String _major;

  Student({
    required String name,
    required String nationalCode,
    required String phoneNumber,
    required String address,
    required String studentNumber,
    required String major,
  })  : _studentNumber = studentNumber,
        _major = major,
        super(
          name: name,
          nationalCode: nationalCode,
          phoneNumber: phoneNumber,
          address: address,
        );

  Student.English({
    required String name,
    required String nationalCode,
    required String phoneNumber,
    required String address,
    required String studentNumber,
  })  : _studentNumber = studentNumber,
        _major = 'English literature',
        super(
          name: name,
          nationalCode: nationalCode,
          phoneNumber: phoneNumber,
          address: address,
        );

  String get studentNumber => _studentNumber;
  String get major => _major;

  @override
  void printInfo() {
    print('''
Student Information
-------------------
Name: $name
National Code: $nationalCode
Phone: $phoneNumber
Address: $address
Student Number: $_studentNumber
Major: $_major
Courses: $courses
''');
  }

  @override
  String getJob() => 'Studying';
}

class Teacher extends Person with CoursesMixin {
  final Certificate _lastCertificate;
  final double _salary;

  Teacher({
    required String name,
    required String nationalCode,
    required String phoneNumber,
    required String address,
    required Certificate lastCertificate,
    required double salary,
  })  : _lastCertificate = lastCertificate,
        _salary = salary,
        super(
          name: name,
          nationalCode: nationalCode,
          phoneNumber: phoneNumber,
          address: address,
        );

  Certificate get lastCertificate => _lastCertificate;
  double get salary => _salary;

  @override
  void printInfo() {
    print('''
Teacher Information
-------------------
Name: $name
National Code: $nationalCode
Phone: $phoneNumber
Address: $address
Certificate: $_lastCertificate
Salary: $_salary
Courses: $courses
''');
  }

  @override
  String getJob() => 'Teaching';
}

void main() {
  final student = Student.English(
    name: 'Ali Ahmadi',
    nationalCode: '1234567890',
    phoneNumber: '09120000000',
    address: 'Isfahan',
    studentNumber: 'ST1001',
  );

  student.addCourse('Dart');
  student.addCourse('Flutter');

  final teacher = Teacher(
    name: 'Dr Karimian',
    nationalCode: '0987654321',
    phoneNumber: '09123333333',
    address: 'Tehran',
    lastCertificate: Certificate.phd,
    salary: 40000000,
  );

  teacher.courses = ['Advanced Dart', 'Flutter Architecture'];

  final List<Person> people = [student, teacher];

  for (final person in people) {
    person.printInfo();
    print('Job: ${person.getJob()}');
  }
}
