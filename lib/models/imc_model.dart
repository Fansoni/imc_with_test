class IMCModel {
  double _peso = 0;
  double _altura = 0;

  get peso => _peso;
  set peso(value) => _peso = value;

  get altura => _altura;
  set altura(value) => _altura = value;

  @override
  String toString() {
    return '{peso: $_peso, altura: $_altura}';
  }
}
