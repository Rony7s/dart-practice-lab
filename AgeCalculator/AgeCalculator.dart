//Rony Ahmmed EdTE-UFTB V1.0.0
import 'dart:core';

class AgeCalculator {
  final DateTime birthDate;

  AgeCalculator(this.birthDate);

  Map<String, int> calculateAge() {
    final DateTime today = DateTime.now();

    int years = today.year - birthDate.year;
    int months = today.month - birthDate.month;
    int days = today.day - birthDate.day;

    // Adjust days
    if (days < 0) {
      final previousMonth = DateTime(today.year, today.month, 0);

      days += previousMonth.day;
      months--;
    }

    // Adjust months
    if (months < 0) {
      months += 12;
      years--;
    }

    return {'years': years, 'months': months, 'days': days};
  }

  void displayAge() {
    final age = calculateAge();

    print(
      "Age: ${age['years']} Years, "
      "${age['months']} Months, "
      "${age['days']} Days",
    );
  }
}

void main() {
  final DateTime birthDate = DateTime(2001, 11, 11);

  AgeCalculator person = AgeCalculator(birthDate);

  person.displayAge();
}
