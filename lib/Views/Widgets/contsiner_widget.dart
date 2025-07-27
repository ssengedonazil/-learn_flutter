import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.title,required this.Description});
final String title;
final String Description;
  @override
  Widget build(BuildContext context) {
    return   Container(
             width: double.infinity,
             padding: EdgeInsets.symmetric( vertical: 1),
              child: Card(
                child: Padding(padding: EdgeInsets.all(20), child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    Text(Description)
                  ],
                ),),
              ),
            );
  }
}