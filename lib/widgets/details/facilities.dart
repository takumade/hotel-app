




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
      child: FilterChip(
        onSelected: (bool value) {
          print("selected");
        },
        label: Text(
          facility,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
        backgroundColor: Colors.grey.withOpacity(0.1),
        shape: StadiumBorder(side: BorderSide(color: Colors.black12)),
      ),
    );
  }
}