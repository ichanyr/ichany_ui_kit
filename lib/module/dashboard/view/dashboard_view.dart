import 'package:flutter/material.dart';
import 'package:ichany_ui_kit/core.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/button/info_button.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/button/primary_button%20copy.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/button/success_button.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/button/warning_button%20copy.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/form/checkfield/checkfield.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/form/dropdown/dropdown.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/form/imagepicker/imagepicker.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/form/radiofield/radiofield.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/form/textfield/textarea.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/form/textfield/textfield.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/form/textfield/textfield_numeric.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/form/textfield/textfield_password.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/outline_button/danger_outline_button.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/outline_button/info_outline_button.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/outline_button/primary_outline_button.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/outline_button/success_outline_button.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/outline_button/secondary_outline_button.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/outline_button/warning_outline_button%20copy%202.dart';
import '../../shared/util/widget/button/danger_button.dart';
import '../../shared/util/widget/button/disabled_button.dart';
import '../../shared/util/widget/button/secondary_button.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
        backgroundColor: Color(0XFFF1F6F9),
        appBar: AppBar(
          backgroundColor: Color(0XFF917FB3),
          title: Text("Ichany UI KIT"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30.0))),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //BUTTON
                  const Text(
                    "Button Widget",
                    style: TextStyle(
                      color: Color(0XFF917FB3),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 7.5,
                  ),
                  SuccessButton(label: "Success", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  InfoButton(label: "Info", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  DangerButton(
                    label: "Danger",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WarningButton(label: "Warning", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  DisabledButton(label: "Disabled", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  PrimaryButton(label: "Primary", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  SecondaryButton(label: "Secondary", onPressed: () {}),

                  //OUTLINE BUTTON
                  SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Outline Button Widget",
                    style: TextStyle(
                      color: Color(0XFF917FB3),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InfoOutlineButton(label: "Info", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  DangerOutlineButton(label: "Danger", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  WarningOutlineButton(label: "Warning", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  SuccessOutlineButton(label: "Success", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  PrimaryOutlineButton(label: "Primary", onPressed: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  SecondaryOutlineButton(label: "Secondary", onPressed: () {}),

                  SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Form Widget",
                    style: TextStyle(
                      color: Color(0XFF917FB3),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  QTextField(label: "Name", value: "", onChanged: (value) {}),
                  SizedBox(
                    height: 15,
                  ),
                  PasswordField(label: "Password", onChanged: (value) {}),
                  SizedBox(
                    height: 15,
                  ),
                  NumberField(label: "Phone Number", onChanged: (value) {}),
                  SizedBox(
                    height: 15,
                  ),
                  MemoField(label: "Address", onChanged: (value) {}),
                  SizedBox(
                    height: 15,
                  ),
                  QImagePicker(
                      label: "Upload Your Profile", onChanged: (value) {}),
                  SizedBox(
                    height: 15,
                  ),
                  DropdownField(
                      label: "Status",
                      items: const [
                        {
                          "label": "Belum Bekerja",
                          "value": 1,
                        },
                        {
                          "label": "Sudah Bekerja",
                          "value": 2,
                        }
                      ],
                      onChanged: (value, label) {}),
                  SizedBox(
                    height: 15,
                  ),
                  CheckField(
                    label: "Minat",
                    // validator: Validator.atLeastOneitem,
                    items: const [
                      {
                        "label": "Coding",
                        "value": 1,
                        "checked": true,
                      },
                      {
                        "label": "Desain",
                        "value": 2,
                        "checked": true,
                      },
                      {
                        "label": "Jaringan",
                        "value": 3,
                        "checked": true,
                      }
                    ],
                    onChanged: (values, ids) {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RadioField(
                    label: "Gender",
                    items: const [
                      {
                        "label": "Female",
                        "value": 1,
                      },
                      {
                        "label": "Male",
                        "value": 2,
                      }
                    ],
                    onChanged: (value, label) {},
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
