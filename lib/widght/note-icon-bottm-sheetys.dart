import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/Add_note_cubit/add_note_cubit.dart';
import 'package:note_app/widght/Add_Node_Form.dart';

class noteiconbottmsheets extends StatelessWidget {
  const noteiconbottmsheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNotefailuer) {
              print('filed${state.errMassge}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoding ? true : false,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
