import 'package:auto_route/auto_route.dart';
import 'package:clinic_app/modules/home_page/feature/doctors/data/doctors_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  String selctedDoctor = '';
  List<Doctors> doctorsData = DoctorsData.data;
  List<Doctors> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctors'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 36,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DoctorsData.categories.length,
              itemBuilder: (context, index) => DoctorsPageChip(
                onTap: () {
                  selctedDoctor = DoctorsData.categories[index];
                  data = [];
                  for (var i in doctorsData) {
                    if (i.category == selctedDoctor) {
                      data.add(i);
                    }
                  }
                  setState(() {});
                },
                title: DoctorsData.categories[index],
                isSelected: selctedDoctor == DoctorsData.categories[index],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        data[index].image,
                      ),
                    ),
                    Column(
                      children: [
                        Text(data[index].category),
                        Text(data[index].name),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.star,
                        ),
                        Text(
                          data[index].rate,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.star,
                        ),
                        Text(
                          data[index].comments.length.toString(),
                        )
                      ],
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class DoctorsPageChip extends StatelessWidget {
  const DoctorsPageChip({
    super.key,
    this.isSelected = true,
    required this.onTap,
    required this.title,
  });

  final bool isSelected;
  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(
              4,
            ),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          height: 34,
          width: 109,
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
