import 'package:flutter/material.dart';
import 'package:whatapp_mobile_frontend/logger_config.dart';

class Authscreen extends StatefulWidget {
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true, automaticallyImplyLeading: false),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const SizedBox(height: 36),
              Text(
                "Đăng nhập tài khoản",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 12),
              Text("Nhập thông tin đăng nhập của bạn để tiếp tục"),
              const SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  hintText: " Nhập Username",
                  labelText: "Username",
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  hintText: "Nhập password",
                  labelText: "Password",
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(child: Text("Quên mật khẩu"), onTap: () {}),
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.all(12)),
                  onPressed: () {},
                  child: Text("Đăng nhập"),
                ),
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Chưa có tài khoản? "),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return _ResigerBottomSheet();
                        },
                      );
                    },
                    child: Text(
                      "Đăng ký ngay",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResigerBottomSheet extends StatefulWidget {
  const _ResigerBottomSheet({super.key});

  @override
  State<_ResigerBottomSheet> createState() => _ResigerBottomSheetState();
}

class _ResigerBottomSheetState extends State<_ResigerBottomSheet> {
  late final TextEditingController fullname_textedit_controller;
  late final TextEditingController email_textedit_controller;
  late final TextEditingController username_textedit_controller;
  late final TextEditingController password_textedit_controller;
  late final TextEditingController password_replace_textedit_controller;

  String? fullname_error_msg;
  String? email_error_msg;
  String? username_error_msg;
  String? password_error_msg;
  String? password_replace_error_msg;

  @override
  void initState() {
    super.initState();
    fullname_textedit_controller = TextEditingController();
    email_textedit_controller = TextEditingController();
    username_textedit_controller = TextEditingController();
    password_textedit_controller = TextEditingController();
    password_replace_textedit_controller = TextEditingController();
  }

  @override
  void dispose() {
    fullname_textedit_controller.dispose();
    email_textedit_controller.dispose();
    username_textedit_controller.dispose();
    password_textedit_controller.dispose();
    password_replace_textedit_controller.dispose();
    super.dispose();
  }

  bool check_input_text_is_valid() {
    bool is_valid = true;

    // Regex kiểm tra định dạng email chuẩn
    final email_regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    // Regex kiểm tra username (không chứa khoảng trắng)
    final contains_space = RegExp(r'\s');

    setState(() {
      // 1. Validate Fullname
      if (fullname_textedit_controller.text.trim().isEmpty) {
        fullname_error_msg = "Không để trống họ và tên";
        is_valid = false;
      } else {
        fullname_error_msg = null;
      }

      // 2. Validate Email
      final email_text = email_textedit_controller.text.trim();
      if (email_text.isEmpty) {
        email_error_msg = "Không để trống email";
        is_valid = false;
      } else if (!email_regex.hasMatch(email_text)) {
        email_error_msg = "Email không đúng định dạng (ví dụ: abc@gmail.com)";
        is_valid = false;
      } else {
        email_error_msg = null;
      }

      // 3. Validate Username
      final username_text = username_textedit_controller.text.trim();
      if (username_text.isEmpty) {
        username_error_msg = "Không để trống tên tài khoản";
        is_valid = false;
      } else if (contains_space.hasMatch(username_text)) {
        username_error_msg = "Tên tài khoản không được chứa khoảng cách";
        is_valid = false;
      } else if (username_text.length < 4) {
        username_error_msg = "Tên tài khoản phải từ 4 ký tự trở lên";
        is_valid = false;
      } else {
        username_error_msg = null;
      }

      // 4. Validate Password
      final pass_text = password_textedit_controller.text;
      if (pass_text.isEmpty) {
        password_error_msg = "Không để trống password";
        is_valid = false;
      } else if (pass_text.length < 6) {
        password_error_msg = "Password phải có ít nhất 6 ký tự";
        is_valid = false;
      } else {
        password_error_msg = null;
      }

      // 5. Validate Password Replace
      final pass_replace_text = password_replace_textedit_controller.text;
      if (pass_replace_text.isEmpty) {
        password_replace_error_msg = "Vui lòng nhập lại password";
        is_valid = false;
      } else if (pass_replace_text != pass_text) {
        password_replace_error_msg = "Mật khẩu nhập lại không khớp";
        is_valid = false;
      } else {
        password_replace_error_msg = null;
      }
    });

    return is_valid;
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Container(
                height: 3,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Tạo tài khoản mới",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 6),
              const Text("Nhập thông tin đăng nhập của bạn để tiếp tục"),
              const SizedBox(height: 24),

              // Fullname
              TextField(
                controller: fullname_textedit_controller,
                decoration: InputDecoration(
                  hintText: "Nhập Họ và Tên",
                  labelText: "Họ và Tên",
                  errorText: fullname_error_msg,
                ),
              ),
              const SizedBox(height: 16),

              // Email
              TextField(
                controller: email_textedit_controller,
                decoration: InputDecoration(
                  hintText: "Nhập email",
                  labelText: "Email",
                  errorText: email_error_msg,
                ),
              ),
              const SizedBox(height: 16),

              // Username
              TextField(
                controller: username_textedit_controller,
                decoration: InputDecoration(
                  hintText: "Nhập tên tài khoản",
                  labelText: "Username",
                  errorText: username_error_msg,
                ),
              ),
              const SizedBox(height: 16),

              // Password
              TextField(
                controller: password_textedit_controller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Nhập password",
                  labelText: "Password",
                  errorText: password_error_msg,
                ),
              ),
              const SizedBox(height: 16),

              // Password Replace
              TextField(
                controller: password_replace_textedit_controller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Nhập lại password",
                  labelText: "Nhập lại password",
                  errorText: password_replace_error_msg,
                ),
              ),
              const SizedBox(height: 24),

              // Button Đăng ký
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {
                    if (check_input_text_is_valid()) {
                      // Logic xử lý khi đăng ký hợp lệ
                    }
                  },
                  child: const Text("Đăng Ký"),
                ),
              ),
              const SizedBox(height: 12),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Đã có tài khoản? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Đăng nhập ngay",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
