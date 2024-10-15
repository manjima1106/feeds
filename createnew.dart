import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mara/newfile.dart';

class Createnew extends StatefulWidget {
  Createnew({Key? key}) : super(key: key);

  @override
  _CreatenewState createState() => _CreatenewState();
}

class _CreatenewState extends State<Createnew> {
  XFile? _image;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? selectedImage = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (selectedImage != null) {
      setState(() {
        _image = selectedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 20,
            color: Color(0xff260446),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 150,
              top: 1,
            ),
            child: Text(
              'Create Article',
              style: TextStyle(
                color: Color(0xff260446),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: SizedBox(
              width: 10,
            ),
          ),
          Icon(Icons.more_vert),
          Padding(padding: EdgeInsets.all(5.0))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.4,
                      color: const Color.fromRGBO(244, 244, 244, 1),
                      child: Center(
                        child: _image == null
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: const Icon(
                                      Icons.add_a_photo,
                                      size: 50,
                                      color: Color(0xff8B8B8B),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Add Article Cover Image',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff8B8B8B),
                                    ),
                                  ),
                                ],
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.file(
                                  File(_image!.path),
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                Text(
                  'Title',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(244, 244, 244, 1),
                  ),
                  height: 60,
                  width: 410,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Article Title',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xff8b8b8b),
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      style: TextStyle(
                        color: Color(0xff8b8b8b),
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Article',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 400,
                  height: 619,
                  color: const Color.fromRGBO(244, 244, 244, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Icon(Icons.format_align_left, color: Colors.grey),
                          SizedBox(width: 14),
                          Icon(Icons.format_align_center, color: Colors.grey),
                          SizedBox(width: 14),
                          Icon(Icons.format_align_right, color: Colors.grey),
                          SizedBox(width: 14),
                          Icon(Icons.format_align_justify, color: Colors.grey),
                          SizedBox(width: 14),
                          Icon(Icons.format_underlined, color: Colors.grey),
                          SizedBox(width: 14),
                          Icon(Icons.format_italic, color: Colors.grey),
                          SizedBox(width: 14),
                          Icon(Icons.format_size, color: Colors.grey),
                          SizedBox(width: 14),
                          Icon(Icons.palette, color: Colors.grey),
                          SizedBox(width: 14),
                          Icon(Icons.link, color: Colors.grey),
                          SizedBox(width: 14),
                          Icon(Icons.add_photo_alternate, color: Colors.grey),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          maxLines: 15,
                          decoration: InputDecoration(
                            hintText: 'Write Your Article here!',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: const Color.fromRGBO(244, 244, 244, 1),
                            contentPadding: const EdgeInsets.all(10),
                          ),
                          style: const TextStyle(
                            color: Color(0xff8b8b8b),
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Select Topics',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 60,
                    width: 390,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Select Topics",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff8B8B8B),
                            ),
                          ),
                        ),
                        dropdownColor: Colors.white,
                        items: <String>[
                          'Topic 1',
                          'Topic 2',
                          'Topic 3',
                          'Topic 4'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 14),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                        icon: const Padding(
                          padding: EdgeInsets.only(top: 5, right: 25),
                          child: Icon(
                            Icons.expand_more,
                            color: Colors.black,
                          ),
                        ),
                        isExpanded: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Set Publishing Time',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(244, 244, 244, 1),
                    ),
                    height: 45,
                    width: 200,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Set a Date',
                            style: TextStyle(
                              color: Color(0xff8b8b8b),
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.calendar_month_outlined,
                            size: 24.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(244, 244, 244, 1),
                    ),
                    height: 45,
                    width: 190,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Set a Time',
                            style: TextStyle(
                              color: Color(0xff8b8b8b),
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.timer,
                            size: 24.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Allow Comments from the Community',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 60,
                  width: 400,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Yes",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8B8B8B),
                          ),
                        ),
                      ),
                      dropdownColor: Colors.white,
                      items: <String>[
                        'Yes',
                        'No',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 14),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {},
                      icon: const Padding(
                        padding: EdgeInsets.only(top: 5, right: 25),
                        child: Icon(
                          Icons.expand_more,
                          color: Colors.black,
                        ),
                      ),
                      isExpanded: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          titlePadding: const EdgeInsets.only(left: 60),
                          title: const Text(
                            'Confirm Save',
                            style: TextStyle(
                              color: Color(0xffF31919),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          content: const Text(
                            '  Are You Sure Want to Delete \n         this Article as Draft',
                            style: TextStyle(
                                color: Color(0xff260446),
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0xffE4E7FC),
                                    border: Border.all(
                                        color: const Color(0xffE4E7FC),
                                        width: 1),
                                  ),
                                  height: 50,
                                  width: 120,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Discard',
                                        style: TextStyle(
                                          color: Color(0xff414ECA),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0xff414ECA),
                                    border: Border.all(
                                        color: const Color(0xff6F7BEC),
                                        width: 1),
                                  ),
                                  height: 50,
                                  width: 120,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Yes, Save',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 242, 245, 245),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xffC0C5F7),
                      borderRadius: BorderRadius.circular(40),
                      border:
                          Border.all(color: const Color(0xffC0C5F7), width: 1),
                    ),
                    height: 60,
                    width: 300,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Save as Draft',
                          style: TextStyle(
                            color: Color(0xff414eca),
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Newfile(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xff414eca),
                      borderRadius: BorderRadius.circular(40),
                      border:
                          Border.all(color: const Color(0xff414eca), width: 1),
                    ),
                    height: 60,
                    width: 300,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue to Publish',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
