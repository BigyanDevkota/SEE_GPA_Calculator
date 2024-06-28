import 'dart:io';

num new_summation = 0;

void main() {
  getinfo();
}

String optional_message() {
  String opt2nd;
  String optII;

  print('Choose your optional 2nd subject: Type:- Computer or Account');
  optII = stdin.readLineSync()!;
  opt2nd = optII.toLowerCase();

  if (opt2nd == 'computer' || opt2nd == 'account') {
    return opt2nd;
  } else {
    print('type correctly\n');
    return optional_message();
  }
}

void getinfo() {
  var eng, nep, soc, maths, sci, comp, opt1, acc;
  num req_grade1,
      req_grade2,
      req_grade3,
      req_grade4,
      req_grade5,
      req_grade6,
      req_grade;
  String opt2nd_sub;
  num last_ride;

  print('\n');

  opt2nd_sub = optional_message();

  print('\nWrite your marks in the following subjects:');

  print("English");
  eng = num.parse(stdin.readLineSync()!);
  req_grade1 = grade_point_calculator(eng, "English");
  numerator(req_grade1, 'English');

  print("Nepali");
  nep = num.parse(stdin.readLineSync()!);
  req_grade2 = grade_point_calculator(nep, "Nepali");
  numerator(req_grade2, 'Nepali');

  print("Social");
  soc = num.parse(stdin.readLineSync()!);
  req_grade3 = grade_point_calculator(soc, "Social");
  numerator(req_grade3, 'Social');

  print("Science");
  sci = num.parse(stdin.readLineSync()!);
  req_grade4 = grade_point_calculator(sci, "Science");
  numerator(req_grade4, 'Science');

  print("Compulsory Maths");
  maths = num.parse(stdin.readLineSync()!);
  req_grade5 = grade_point_calculator(maths, "C.Maths");
  numerator(req_grade5, 'C.Maths');

  print("Optional 1");
  opt1 = num.parse(stdin.readLineSync()!);
  req_grade6 = grade_point_calculator(opt1, "Optional1");
  numerator(req_grade6, 'Optional1');

  if (opt2nd_sub == 'computer') {
    print("Computer");
    comp = num.parse(stdin.readLineSync()!);
    req_grade = grade_point_calculator(comp, "Computer");
    last_ride = numerator(req_grade, 'Computer');
  } else {
    print("Accountancy");
    acc = num.parse(stdin.readLineSync()!);
    req_grade = grade_point_calculator(acc, "Account");
    last_ride = numerator(req_grade, 'Account');
  }

  if (req_grade1 == 0.00 ||
      req_grade2 == 0.00 ||
      req_grade3 == 0.00 ||
      req_grade4 == 0.00 ||
      req_grade5 == 0.00 ||
      req_grade6 == 0.00 ||
      req_grade == 0.00) {
    final_function(0);
  } else {
    final_function(last_ride);
  }
}

num grade_point_calculator(var obtained_marks, String subject) {
  var grade_point;
  if (subject == "Computer") {
    grade_point = fifty(obtained_marks);
  } else {
    grade_point = seventyfive(obtained_marks);
  }
  return grade_point;
}

// for 50 marks subjects
num fifty(num marks) {
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

// for 75 marks subjects
num seventyfive(num marks) {
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
  } else {
    return 0.0;
  }
}

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
  'Account': {
    'theory': 3,
    'practical': 1,
  },
  'Optional1': {
    'theory': 3,
    'practical': 1,
  },
};

num numerator(num GP, String subject) {
  num theory_part, practical_part, summation;

  num req_th_ch = credit_hours[subject]['theory'];
  theory_part = req_th_ch * GP;

  num req_pr_ch = credit_hours[subject]['practical'];
  practical_part = req_pr_ch * 4;

  summation = theory_part + practical_part;
  new_summation = new_summation + summation;

  return new_summation;
}

void final_function(var final_value) {
  var GPA;
  String grade;
  num total_credit_hours_of_class = 32;

  GPA = final_value / total_credit_hours_of_class;
  print("\nYour GPA is: ${GPA.toStringAsFixed(2)}");
  grade = grade_function(GPA);
  print('You Scored $grade');
}

String grade_function(GPA) {
  if (GPA > 3.6 && GPA <= 4.0) {
    return 'A+';
  } else if (GPA > 3.2 && GPA <= 3.6) {
    return 'A';
  } else if (GPA > 2.8 && GPA <= 3.2) {
    return 'B+';
  } else if (GPA > 2.4 && GPA <= 2.8) {
    return 'B';
  } else if (GPA > 2.0 && GPA <= 2.4) {
    return 'C+';
  } else if (GPA > 1.6 && GPA <= 2.0) {
    return 'C';
  } else if (GPA > 1.4 && GPA <= 1.6) {
    return 'D';
  } else {
    return 'NG';
  }
}
