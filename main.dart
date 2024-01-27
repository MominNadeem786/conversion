import 'dart:io';

void lengthConversion() {
  print("1. Meter to Kilometers");
  print("2. Kilometer to Meters");
  print("3. Feet to Inches");
  print("4. Inches to Feet");
  print("5. Centimeter to Meter");
  print("6. Meter to Centimeter");

  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      {
        print("Enter length in meters:");
        double meter = double.parse(stdin.readLineSync()!);
        print("Length in kilometers: ${meter / 1000}");
      }
      break;

    case 2:
      {
        print("Enter length in kilometers:");
        double kilometer = double.parse(stdin.readLineSync()!);
        print("Length in meters: ${kilometer * 1000}");
      }
      break;

    case 3:
      {
        print("Enter length in feet:");
        double feet = double.parse(stdin.readLineSync()!);
        print("Length in inches: ${feet * 12}");
      }
      break;

    case 4:
      {
        print("Enter length in inches:");
        double inches = double.parse(stdin.readLineSync()!);
        print("Length in feet: ${inches / 12}");
      }
      break;

    case 5:
      {
        print("Enter length in centimeters:");
        double centimeter = double.parse(stdin.readLineSync()!);
        print("Length in meters: ${centimeter / 100}");
      }
      break;

    case 6:
      {
        print("Enter length in meters:");
        double meter = double.parse(stdin.readLineSync()!);
        print("Length in centimeters: ${meter * 100}");
      }
      break;

    default:
      {
        print("Invalid choice");
      }
      break;
  }
}

void temperatureConversion() {
  print("1. Fahrenheit to Celsius");
  print("2. Celsius to Fahrenheit");

  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      {
        print("Enter temperature in Fahrenheit:");
        double fahrenheit = double.parse(stdin.readLineSync()!);
        double celsius = (fahrenheit - 32) * 5 / 9;
        print("Temperature in Celsius: $celsius");
      }
      break;

    case 2:
      {
        print("Enter temperature in Celsius:");
        double celsius = double.parse(stdin.readLineSync()!);
        double fahrenheit = (celsius * 9 / 5) + 32;
        print("Temperature in Fahrenheit: $fahrenheit");
      }
      break;

    default:
      {
        print("Invalid choice");
      }
      break;
  }
}

void timeConversion() {
  print("1. Seconds to Minutes");
  print("2. Minutes to Seconds");
  print("3. Minutes to Hours");
  print("4. Seconds to Hours");
  print("5. Milliseconds to Minutes");
  print("6. Milliseconds to Hours");

  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      {
        print("Enter time in seconds:");
        int seconds = int.parse(stdin.readLineSync()!);
        print("Time in minutes: ${seconds / 60}");
      }
      break;

    case 2:
      {
        print("Enter time in minutes:");
        int minutes = int.parse(stdin.readLineSync()!);
        print("Time in seconds: ${minutes * 60}");
      }
      break;

    case 3:
      {
        print("Enter time in minutes:");
        int minutes = int.parse(stdin.readLineSync()!);
        print("Time in hours: ${minutes / 60}");
      }
      break;

    case 4:
      {
        print("Enter time in seconds:");
        int seconds = int.parse(stdin.readLineSync()!);
        print("Time in hours: ${seconds / 3600}");
      }
      break;

    case 5:
      {
        print("Enter time in milliseconds:");
        int milliseconds = int.parse(stdin.readLineSync()!);
        print("Time in minutes: ${milliseconds / (1000 * 60)}");
      }
      break;

    case 6:
      {
        print("Enter time in milliseconds:");
        int milliseconds = int.parse(stdin.readLineSync()!);
        print("Time in hours: ${milliseconds / (1000 * 60 * 60)}");
      }
      break;

    default:
      {
        print("Invalid choice");
      }
      break;
  }
}

void main() {
  while (true) {
    print("\nSelect an option:");
    print("1. Length Conversion");
    print("2. Temperature Conversion");
    print("3. Time Conversion");

    int selection = int.parse(stdin.readLineSync()!);

    switch (selection) {
      case 1:
        lengthConversion();
        break;

      case 2:
        temperatureConversion();
        break;

      case 3:
        timeConversion();
        break;

      default:
        print("Invalid choice");
        break;
    }

    print("Do you want to continue? (1 for Yes / 2 for No)");
    String choice = stdin.readLineSync()!;
    if (choice != '1') break;
  }
}
