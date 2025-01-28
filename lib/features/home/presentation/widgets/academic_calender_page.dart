import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class AcademicCalenderPage extends StatefulWidget {
  const AcademicCalenderPage({super.key});

  @override
  State<AcademicCalenderPage> createState() => _AcademicCalenderPageState();
}

class _AcademicCalenderPageState extends State<AcademicCalenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Academic Calender",
            style: Theme.of(context).textTheme.bodyMedium),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface,
                width: 1.5,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SfPdfViewerTheme(
                data: SfPdfViewerThemeData(
                    backgroundColor: Theme.of(context).cardColor),
                child: SfPdfViewer.asset(
                  'assets/pdf/2025_even.pdf',
                  enableTextSelection: false,
                  canShowPaginationDialog: false,
                  canShowTextSelectionMenu: false,
                  canShowHyperlinkDialog: false,
                  interactionMode: PdfInteractionMode.pan,
                  canShowSignaturePadDialog: false,
                  canShowScrollHead: false,
                  maxZoomLevel: 4,
                ),
              ),
            )),
      ),
    );
  }
}
