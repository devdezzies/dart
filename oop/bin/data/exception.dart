class AnotherException implements Exception { // implement is used just to flag that this class is a modified Exception
  String message;
  AnotherException(this.message){
    print('this will be executed before the error thrown');
  }
}

class Validator {
  static void validate(String username, String password) {
    if (username == '') {
      throw AnotherException("Username is blank, can't run the program");
    } else if (password == '') {
      throw Exception("Password is blank, can't run the program");
    }
    // valid
  }
}

void main(){

  try {
    Validator.validate("G-Shock", "");
  } on AnotherException catch (exception) {
    print("There has been an error : ${exception.message}");
  } on Exception catch (exception) {
    print("ERROR! : ${exception.toString()}");
  } finally { // finally doesn't care whether the program is success or not, it will always be executed
    print('COMPLETE!');
  }

  try { // it will catch all the exceptions automatically
    Validator.validate("", "");
  } catch (exception) {
    print("ERROR : ${exception.toString()}");
  } finally {
    print("DONE!");
  }
  // WITHOUT TRY-CATCH TREATMENT

  /*
  Validator.validate("", 'pass'); // after the error thrown, the program will be automatically terminated
  print("done"); // this won't be executed
  */

  // IF YOU WANT TO SEE A MORE DETAILED-ERROR YOU CAN USE STACKTRACE
  try {
    Validator.validate("", "");
  } catch (exception, stackTrace) {
    print("ERROR : ${exception.toString()}");
    print("DETAILS: ${stackTrace.toString()}");
  } finally {
    print("DONE!");
  }

}