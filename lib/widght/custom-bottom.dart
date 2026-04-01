import 'package:flutter/material.dart';
import 'package:note_app/widght/constans.dart';

class custombottom extends StatelessWidget {
  const custombottom({super.key, this.onTap, this.islooding = false});
  final void Function()? onTap;
  final bool islooding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kprimrycolor,
        ),
        child: Center(
          child: islooding
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(color: Colors.black),
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
