import 'package:imc/models/imc_model.dart';

class PessoaModel {
  String _nome;
  IMCModel? _imcModel;

  PessoaModel.configurarNome(this._nome);

  PessoaModel(this._nome, this._imcModel);

  String get nome => _nome;
  set nome(value) => _nome = value;

  IMCModel? get imcModel => _imcModel;
  set imcModel(IMCModel? imcModel) => _imcModel = imcModel!;

  @override
  String toString() {
    return '{nome: $_nome, imc: ${_imcModel.toString()}}';
  }
}
