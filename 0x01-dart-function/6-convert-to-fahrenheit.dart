List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((temp) {
    return ((temp * 9) / 5) + 32;
  }).toList();
}
