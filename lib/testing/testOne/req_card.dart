import 'package:flutter/material.dart';
import 'request.dart';

class ReqTemplate extends StatelessWidget {
  final Request? request;
  final Function delete;
  const ReqTemplate({super.key, this.request, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("${request?.name}"),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('${request?.email}'),
                ]),
            IconButton(
              onPressed: () => delete(),
              icon: const Icon(Icons.delete_forever_rounded),
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
