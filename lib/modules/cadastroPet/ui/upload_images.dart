import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhotoWidget extends StatefulWidget {
  @override
  State<UploadPhotoWidget> createState() => _UploadPhoto();
}

class _UploadPhoto extends State<UploadPhotoWidget> {

  final ImagePicker imagePicker = ImagePicker();
      List<XFile>? imageFileList = [];

      void selectImages() async {
         final List<XFile>? selectedImages = await 
                imagePicker.pickMultiImage();
           if (selectedImages!.isNotEmpty && imageFileList!.length <= 5) {
              imageFileList!.addAll(selectedImages);
           }
          //print("Image List Length:" + imageFileList!.length.toString());
          setState((){});
      }

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
    onTap: () {
      selectImages();
    },
    child: Container(
      width: double.infinity,
      height: 230,
      color: const Color.fromRGBO(212, 212, 212, 1),
      alignment: Alignment.center,
      child: DottedBorder(
        color: Colors.black,
        strokeWidth: 1,
        dashPattern: [8,3],
        child: Container(
          width: 380,
          height: 190,
          color: const Color.fromRGBO(212, 212, 212, 1),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.add_a_photo_outlined,
                    color: Color.fromRGBO(233, 0, 84, 1),
                    size: 50),
              const Text("Incluir fotos",
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromRGBO(233, 0, 84, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("${imageFileList==null?0:imageFileList!.length} de 6 adicionadas",
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}