String numberFormat(String num) {
  double value = double.parse(num);
  if (value % 1 == 0) {
    return num.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        (Match match) => '${match[1]},');
  } else {
    // Es un número con decimales, aplicamos el formato normal
    List<String> partes = value.toString().split('.');
    partes[0] = partes[0].replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        (Match match) => '${match[1]},');
    return partes.join('.');
  }
}
