// example viewmodel for the form
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class Modelo {

  static const valorInicial = PickerModel('',code: '?');
  // Scroll/Radio Picker Model
  // Scroll/Radio Picker Model
  static const List<PickerModel> state = <PickerModel>[
    PickerModel('Opción 1', code: 'AL'),
    PickerModel('Opción 2', code: 'AK'),
    PickerModel('Opción 3', code: 'AZ'),
    PickerModel('Opción 4', code: 'AR'),
    PickerModel('Opción 5', code: 'CA'),
    PickerModel('Opción 6', code: 'CO'),
    PickerModel('Opción 7', code: 'CT'),
  ];
  // PickerModel selectedUsState = state[0];
  PickerModel selectedUsState =   valorInicial;

  static const List<PickerModel> dieta = <PickerModel>[
    PickerModel('Percentilo >= 95', code: 100.0),
    PickerModel('Percentilo desde 75 hasta 94', code: 80.0),
    PickerModel('Percentilo desde 50 hasta 74', code: 50.0),
    PickerModel('Percentilo desde 25 hasta 49', code: 25.0),
    PickerModel('Percentilo desde 1 hasta 24', code: 0.0),
  ];
  PickerModel selecDieta = valorInicial;
  // PickerModel selecDieta = PickerModel('algo', code: 33.0);
  String botonDieta = "Dieta";
  String tituloDieta = "Dieta";
  setSelectedDieta(PickerModel sd) {
    selecDieta = sd;
  }

  static const List<PickerModel> masaCorporal = <PickerModel>[
    PickerModel('Percentilo desde 5 hasta 85', code: 100.0),
    PickerModel('Percentilo desde 85 hasta 95', code: 70.0),
    PickerModel('Percentilo desde 55 hasta 120% del 95', code: 30.0),
    PickerModel('Percentilo desde 120% del 95 hasta 140% del 95', code: 15.0),
    PickerModel('Percentilo mayor que 140% de 95', code: 0.0),
  ];
  PickerModel selecMasaCorporal = valorInicial;
  // PickerModel selecMasaCorporal = const PickerModel('algo', code: '22.0');
  String botonMasaCorporal = "Índice masa corporal";
  String tituloMasaCorporal = "Índice de masa corporal";
  setMasaCorporal(PickerModel mc) {
    selecMasaCorporal = mc;
  }

  // Actividad física
  static const List<PickerModel> actividadFisica = <PickerModel>[
    PickerModel('Más de 420', code: 100.0),
    PickerModel('Entre 360 y 419', code: 90.0),
    PickerModel('Entre 300 y 359', code: 80.0),
    PickerModel('Entre 240 y 299', code: 60.0),
    PickerModel('Entre 120 y 239', code: 40.0),
    PickerModel('Entre 1 y 119', code: 20.0),
    PickerModel('Sin actividad', code: 0.0),
  ];
  PickerModel selecActividadFisica = valorInicial;
  String botonActividadFisica = "Actividad física";
  String tituloActividadFisica = "Minutos semanales de actividad física de moderada a intensa\nEdades de 6 a 19 años";
  // String tituloActividadFisica = "Minutos semanales de actividad física";
  setActividadFisica(PickerModel af) {
    selecActividadFisica = af;
  }
  // Fin actividad física

  // Sueño
  static const List<PickerModel> sueno = <PickerModel>[
    PickerModel('Rango óptimo por edad', code: 100.0),
    PickerModel('Menos que una hora más que lo óptimo', code: 90.0),
    PickerModel('Menos que una hora menos que lo óptimo', code: 70.0),
    PickerModel('Una a dos horas menos o una más', code: 40.0),
    PickerModel('Dos a tres horas menos que lo óptimo', code: 20.0),
    PickerModel('Tres o más horas menos que lo óptimo', code: 0.0),
  ];
  PickerModel selecSueno = valorInicial;
  String botonSueno = "Sueño";
  String tituloSueno = "Horas de sueño prom.";
  setSueno(PickerModel su) {
    selecSueno = su;
  }
// Fin Sueño

  // Fumar
  static const List<PickerModel> fumar = <PickerModel>[
    PickerModel('Nunca fumó', code: 100.0),
    PickerModel('Fumó hace más de 30 días', code: 50.0),
    PickerModel('Actualmente inhala NDS', code: 25.0),
    PickerModel('Fuma actualmente', code: 0.0),
  ];
  PickerModel selecFumar = valorInicial;
  String botonFumar = "Fumar";
  String tituloFumar = "Actividad fumadora";
  // String tituloFumar = "Minutos semanales de actividad física";
  setFumar(PickerModel fu) {
    selecFumar = fu;
  }
// Fin fumar

  // Diabetes
  static const List<PickerModel> diabetes = <PickerModel>[
    PickerModel('Sin historia y con FBG<100 o HbA1c<5.7', code: 100.0),
    PickerModel('Sin diabetes y con FBG 100 a 125 o HbA1c 5.7 a 6.4', code: 60.0),
    PickerModel('Diabetes con HbA1c < 7.0', code: 40.0),
    PickerModel('Diabetes con HbA1c de 7.0 a 7.9', code: 30.0),
    PickerModel('Diabetes con HbA1c de 8.0 a 8.9', code: 20.0),
    PickerModel('Diabetes con HbA1c de 9.0 a 9.9', code: 10.0),
    PickerModel('Diabetes con HbA1c mayor o igual a 10', code: 0.0),
  ];
  PickerModel selecDiabetes = valorInicial;
  String botonDiabetes = "Diabetes";
  String tituloDiabetes = "Diabetes";
  setDiabetes(PickerModel af) {
    selecDiabetes = af;
  }
// Diabetes

  // Presión arterial
  static const List<PickerModel> presionArterial = <PickerModel>[
    PickerModel('Óptima (Percentilo < 90)', code: 100.0),
    PickerModel('Elevada (menor entre Perc 90 a 95 y >= 120/8 a Perc <95 )', code: 75.0),
    PickerModel('Hiper. 1: menor entre Perc >= 95 + 12 ó 130/80 a 139/89', code: 50.0),
    PickerModel('Hiper. 2: menor entre Perc >= 95 + 12 ó >= 140/90', code: 25.0),
    PickerModel('Sistólica >= 160 o Perc >= 95', code: 0.0),
  ];
  PickerModel selecPresionArterial = valorInicial;
  String botonPresionArterial = "Presión arterial";
  String tituloPresionArterial = "Presión arterial";
  setPresionArterial(PickerModel af) {
    selecPresionArterial = af;
  }
// Fin Presión arterial

  // Colesterol
  static const List<PickerModel> colesterol = <PickerModel>[
    PickerModel('Menos que 100 sin medicación', code: 100.0),
    PickerModel('Menos que 100 con medicación', code: 80.0),
    PickerModel('Entre 100 y 119', code: 60.0),
    PickerModel('Entre 120 y 144', code: 40.0),
    PickerModel('Entre 145 y 189', code: 20.0),
    PickerModel('Mayor o igual a 190', code: 0.0),
  ];
  PickerModel selecColesterol = valorInicial;
  String botonColesterol = "Colesterol";
  String tituloColesterol = "Colesterol no HDL";
  // String tituloColesterol = "Minutos semanales de actividad física";
  setColesterol(PickerModel af) {
    selecColesterol = af;
  }
// Fin Colesterol
}
