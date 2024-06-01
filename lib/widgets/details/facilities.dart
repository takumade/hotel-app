




import 'package:flutter/material.dart';

class FacilitiesChip extends StatelessWidget {
  final List<String> facilities;
  const FacilitiesChip({
    super.key, required this.facilities,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          SizedBox(
            // width: MediaQuery.of(context).size.width,
            height: 50,
            child: ListView.builder(
              itemCount: facilities.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                
                return Facility(facility: facilities[index]);
              },
            ),
          ),
        ],
      )
    );
  }
}

class Facility extends StatelessWidget {
  final String facility;
  const Facility({
    super.key, required this.facility,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6),
      
      child: Chip(label: Text(facility),
      backgroundColor: Colors.grey.withOpacity(0.2),
      shape: StadiumBorder(side: BorderSide(color: Colors.black.withOpacity(0.0))),),
    );
  }
}
