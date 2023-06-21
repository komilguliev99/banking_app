import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 32,
      left: 16,
      right: 16,
      child: Container(
        height: 44,
        width: MediaQuery.of(context).size.width - 32,
        decoration: BoxDecoration(
            color: const Color(0xffe8e8e9),
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text('Add a Note',
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}
