import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_notes_buttom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
              context: context,
              builder: (context) {
                return AddNoteButtomSheet();
              });
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}


