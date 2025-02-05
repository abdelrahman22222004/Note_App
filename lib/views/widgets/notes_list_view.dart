import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
     // to remove gap in top
          padding: EdgeInsets.zero,
          itemCount: 5,
          
          itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 5),
            child:  NoteItem(),
          );
          
        }),
      ),
      
    );
    
  }
}
