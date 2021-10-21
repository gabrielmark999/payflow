import 'package:flutter/cupertino.dart';
import 'package:payflow/shared/models/boleto_model.dart';

class InsertBoletoController {
  final formKey = GlobalKey<FormState>();
  BoletoModel model = BoletoModel();
  String? validateName(String? value) =>
      value?.isEmpty ?? true ? 'The name cannot be empty' : null;
  String? validateDueDate(String? value) =>
      value?.isEmpty ?? true ? 'The due date cannot be empty' : null;
  String? validateValue(double value) =>
      value == 0 ? 'Enter an amount greater than R\$0.00' : null;
  String? validateCode(String? value) =>
      value?.isEmpty ?? true ? 'Boleto code cannot be empty' : null;

  void onChange({
    String? name,
    String? dueDate,
    double? value,
    String? barcode,
  }) {
    model = model.copyWith(
      name: name,
      dueDate: dueDate,
      value: value,
      barcode: barcode,
    );
  }

  void cadastrarBoleto() {
    final form = formKey.currentState;
    if (form!.validate()) {
      print(model);
    }
  }
}
