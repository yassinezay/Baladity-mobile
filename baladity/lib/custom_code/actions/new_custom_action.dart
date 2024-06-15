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

import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

Future newCustomAction(PubliciteRecord pubdoc) async {
  final pdf = pw.Document();

  // Extracting properties from the PubliciteRecord object
  final titre = pubdoc.titre;
  final description = pubdoc.description;
  final offre = pubdoc.offre;

  // Add a title to the pdf file
  pdf.addPage(pw.MultiPage(
    build: (context) => [
      pw.Header(
        level: 0,
        child: pw.Text(
          'Publicite Document',
          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
        ),
      ),
      pw.Table.fromTextArray(
        context: context,
        data: <List<String>>[
          <String>['Titre', 'Description', 'Offre'],
          [titre, description, offre],
        ],
      ),
    ],
  ));

  // Print the pdf file
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
