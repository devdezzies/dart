class Student<K, V> {
  K name;
  V age;

  Student(this.name, this.age);

  K getStudentName(){
    return name;
  }

  V getStudentAge(){
    return age;
  }
}

void main(){
  var firstStudent = Student<String, int>("Jonathan", 19);
  // var firstStudent = Student("Jonathan", 19);
  print(firstStudent.getStudentAge());
  print(firstStudent.getStudentName());
}