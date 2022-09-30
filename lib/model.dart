// example viewmodel for the form
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class ExampleModel {
  // Scroll/Radio Picker Model
  static const List<PickerModel> dieta = <PickerModel>[
    PickerModel('Opción 1', code: 'AL'),
    PickerModel('Opción 2', code: 'AK'),
    PickerModel('Opción 3', code: 'AZ'),
    PickerModel('Opción 4', code: 'AR'),
    PickerModel('Opción 5', code: 'CA'),
    PickerModel('Opción 6', code: 'CO'),
    PickerModel('Opción 7', code: 'CT'),
  ];
  PickerModel selectedUsState = dieta[0];
}