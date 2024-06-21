import 'dart:io';

void main() {
  // var GPA;
  // String grade;

  // setinfo();
  getinfo();
  // gpa_calculator();

  // GPA = (credit_hour * Grade_point) / total_credit_hours_of_class;
  // print("Your GPA is: $GPA\n");
  // print('You Scored $grade');
}

// class students {
//   getinfo();
//   gpa_calculator();
// }

// gpa_calculator() {}

void getinfo() {
  var eng, nep, soc, maths, sci, comp, opt1, acc;
  num req_grade;

  print('\n');
  print('Write your marks in the following subjects:\n');

  print("English");
  eng = double.parse(stdin.readLineSync()!);
  req_grade = grade_point_calculator(eng, "english");
  numerator(req_grade);

  print("Nepali");
  nep = double.parse(stdin.readLineSync()!);
  grade_point_calculator(nep, "nepali");

  print("Social");
  soc = double.parse(stdin.readLineSync()!);
  grade_point_calculator(soc, "social");

  print("Science");
  sci = double.parse(stdin.readLineSync()!);
  grade_point_calculator(sci, "science");

  print("Compulsory Maths");
  maths = double.parse(stdin.readLineSync()!);
  grade_point_calculator(maths, "c.maths");

  print("Optional 1");
  opt1 = double.parse(stdin.readLineSync()!);
  grade_point_calculator(opt1, "optional1");

  print("Computer");
  comp = double.parse(stdin.readLineSync()!);
  grade_point_calculator(comp, "computer");

  print("Accountancy");
  acc = double.parse(stdin.readLineSync()!);
  grade_point_calculator(acc, "account");
}

double grade_point_calculator(var obtained_marks, String subject) {
  var grade_point;
  if (subject == "computer") {
    grade_point = fifty(obtained_marks);
    return grade_point;
  } else if (subject == "opt1") {
    grade_point = hundred(obtained_marks);
    return grade_point;
  } else {
    grade_point = seventyfive(obtained_marks);
    return grade_point;
  }
}

// for 75 marks subjects
double seventyfive(double marks) {
  if (67.5 <= marks && marks <= 75) {
    return 4.0;
  } else if (60 <= marks && marks < 67.5) {
    return 3.6;
  } else if (52.5 <= marks && marks < 60) {
    return 3.2;
  } else if (45 <= marks && marks < 52.5) {
    return 2.8;
  } else if (37.5 <= marks && marks < 45) {
    return 2.4;
  } else if (30 <= marks && marks < 37.5) {
    return 2;
  } else if (26.5 <= marks && marks < 30) {
    return 1.6;
  } else if (60 <= marks && marks < 67.5) {
    return 3.6;
  } else {
    return 0.0;
  }
}

// for 50 marks subjects
double fifty(double marks) {
  if (45 <= marks && marks <= 50) {
    return 4.0;
  } else if (40 <= marks && marks < 45) {
    return 3.6;
  } else if (35 <= marks && marks < 40) {
    return 3.2;
  } else if (30 <= marks && marks < 35) {
    return 2.8;
  } else if (25 <= marks && marks < 30) {
    return 2.4;
  } else if (20 <= marks && marks < 25) {
    return 2.0;
  } else if (17.5 <= marks && marks < 20) {
    return 1.6;
  } else {
    return 0.0;
  }
}

// for 100 marks subjects
double hundred(double marks) {
  if (90 <= marks && marks <= 100) {
    return 4.0;
  } else if (80 <= marks && marks < 90) {
    return 3.6;
  } else if (70 <= marks && marks < 80) {
    return 3.2;
  } else if (60 <= marks && marks < 70) {
    return 2.8;
  } else if (50 <= marks && marks < 60) {
    return 2.4;
  } else if (40 <= marks && marks < 50) {
    return 2.0;
  } else if (35 <= marks && marks < 40) {
    return 1.6;
  } else {
    return 0.0;
  }
}

setinfo() {
  Map credit_hours = {
    'English': {
      'theory': 3.75,
      'practical': 1.25,
    },
    'Nepali': {
      'theory': 3.75,
      'practical': 1.25,
    },
    'Social': {
      'theory': 3,
      'practical': 1,
    },
    'C.Maths': {
      'theory': 3.75,
      'practical': 1.25,
    },
    'Science': {
      'theory': 3.75,
      'practical': 1.25,
    },
    'Computer': {
      'theory': 2,
      'practical': 2,
    },
    'Accountancy': {
      'theory': 3,
      'practical': 1,
    },
    'Optional1': {
      'theory': 4,
      'practical': 0,
    },
  };

  }

  void numerator (num GP) {
    num theory_part, practical_part,summation;

  num req_th_ch = credit_hours['English']['theory'];
  theory_part = req_th_ch * GP;

  num req_pr_ch = credit_hours['English']['practical'];
  practical_part = req_pr_ch * GP;

  summation = theory_part + practical_part;



}

//   for (int i = 0; i < 8; i++) {
//     credit_hours.forEach((key[i], value[i]) {
//       value.forEach((innerkey[i], innervalue[i]) {
//         print();
//       });
//     });
//   }
// }

// multiplication and summation logic

// GPA = (credit_hour * Grade_point) / total_credit_hours_of_class;
