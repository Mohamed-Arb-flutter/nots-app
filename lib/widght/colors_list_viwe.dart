import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Add_note_cubit/add_note_cubit.dart';

class itemcolor extends StatelessWidget {
  const itemcolor({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(backgroundColor: color, radius: 34),
          )
        : CircleAvatar(backgroundColor: color, radius: 36);
  }
}

class viweitemcolor extends StatefulWidget {
  const viweitemcolor({super.key});

  @override
  State<viweitemcolor> createState() => _viweitemcolorState();
}

class _viweitemcolorState extends State<viweitemcolor> {
  int cruntindex = 0;
  List<Color> colors = const [
    Color(0XFFAC3931),
    Color(0XFFE5D352),
    Color(0XFFD9E76C),
    Color(0XFF537D8D),
    Color(0xff482C3D),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  cruntindex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                });
              },
              child: itemcolor(
                isActive: cruntindex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
