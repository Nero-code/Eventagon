import 'package:flutter/material.dart';
import 'package:vollect/app/classes/user.dart';
import 'package:vollect/app/repos/user_controller.dart';
import 'package:vollect/app/widgets/version_bottom_sheet.dart';
import 'package:vollect/core/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.userController});

  final UserController userController;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nameCtlr = TextEditingController();
  final orgCtlr = TextEditingController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const VersionBottomSheet(),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: nameCtlr,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      label: Text("ما هو اسمك؟"),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: orgCtlr,
                    decoration: const InputDecoration(
                      label: Text("اسم المنظمة / الفريق"),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () async {
                      if (nameCtlr.text.isEmpty || orgCtlr.text.isEmpty) {
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("الرجاء تعبئة كل الحقول!"),
                            backgroundColor: Colors.red,
                          ),
                        );
                        return;
                      }
                      setState(() => isLoading = true);
                      await widget.userController.saveUser(
                          User(name: nameCtlr.text, org: orgCtlr.text));

                      if (context.mounted) {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.home);
                      }
                    },
                    child: const Text("دخول"),
                  ),
                ],
              ),
            ),
          ),
          if (isLoading)
            ColoredBox(
              color: Colors.black12,
              child: Center(
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
