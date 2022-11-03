import 'package:auto_route/auto_route.dart';
import 'package:bfilm/commons/data/spacing.dart';
import 'package:bfilm/commons/widgets/color_button.dart';
import 'package:bfilm/commons/widgets/outlined_button.dart';
import 'package:bfilm/gen/assets.gen.dart';
import 'package:bfilm/router/app_route.gr.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.backGround.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              verticalSpacing40,
              Assets.images.avatar.image(
                height: 200,
                width: 200,
              ),
              verticalSpacing60,
              const Text(
                "Đăng nhập",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                ),
              ),
              verticalSpacing32,
              BOutLineButton(
                lableText: "Đăng nhập với Facebook",
                icon: Assets.icons.facebook.svg(
                  width: 25,
                  height: 25,
                ),
              ),
              verticalSpacing16,
              BOutLineButton(
                lableText: "Đăng nhập với Google",
                icon: Assets.icons.google.svg(
                  width: 25,
                  height: 25,
                ),
              ),
              verticalSpacing32,
              _buildDivider(),
              verticalSpacing32,
              ColorButton(
                onTap: () {},
                child: const Text(
                  "Đăng nhập với mật khẩu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              verticalSpacing60,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Bạn chưa có tài khoản?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  horizontalSpacing8,
                  GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(const SignUpRoute());
                    },
                    child: const Text(
                      "Đăng ký",
                      style: TextStyle(
                        color: Color(0xFFFF35B8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Row(
      children: const [
        Expanded(
          child: Divider(
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Hoặc",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
