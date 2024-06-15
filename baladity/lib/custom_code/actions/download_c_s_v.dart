// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future downloadCSV(List<TacheRecord>? tacheDoc) async {
  // Add your function code here!
  tacheDoc = tacheDoc ?? [];

  String fileContent =
      "Nom Categorie,Titre,Etat\n"; // Using commas to separate columns

  // Loop through each record and add it to the file content
  tacheDoc.forEach((record) {
    fileContent += '${record.nomCat},${record.titreT},${record.etatT}\n';
  });

  final fileName = "TACHE_${DateTime.now().toString()}.csv";
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
