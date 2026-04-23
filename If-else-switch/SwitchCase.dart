//Rony Ahmmed EdTE-UFTB
void checkDay(int day) {
  switch (day) {
    case 1:
      print("Saturday");
      break;
    case 2:
      print("Sunday");
      break;
    case 3:
      print("Monday");
      break;
    case 4:
      print("Tuesday");
      break;
    case 5:
      print("Wednesday");
      break;
    case 6:
      print("Thursday");
      break;
    case 7:
      print("Friday");
      break;
    default:
      print("Invalid day");
  }
}

void subject(String name) {
  switch (name) {
    case "cse":
      print("Computer Science and Engineering");
      break;
    case "swe":
      print("Software Engineering");
      break;
    case "edte":
      print("Educational Technology and Engineering");
      break;
    default:
      print("Not Found!");
  }
}

void main() {
  checkDay(3);
  checkDay(0);
  subject('swe');
  subject('Edte'); //Edte is not 'edte'
}
