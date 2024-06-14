List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((temp) {
    return double.parse((temp * 9) / 5) + 32;
  }).toList();
}
