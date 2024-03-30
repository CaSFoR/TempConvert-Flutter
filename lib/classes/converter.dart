class Converter {

  static double convertToCelsius(unit){
    return (unit - 32) * 5 / 9;
  }

  static double convertToFahrenheit(unit){
    return (unit * 5/9 ) + 32;
  }

}