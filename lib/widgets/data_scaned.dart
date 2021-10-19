import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web_code_scaner/screens/web_view.dart';

import 'open_page_button.dart';

class ScanedData extends StatelessWidget {
  final result;
  const ScanedData({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Barcode Type: ${describeEnum(result!.format)}'),
        Text(' Data: ${result!.code}'),
        OpenPageBtn(
          label: 'open page',
          fun: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => WebViewPage(
                  path: result!.code,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
