import 'package:bfilm/commons/layout/b_layout.dart';
import 'package:bfilm/commons/data/spacing.dart';
import 'package:bfilm/commons/widgets/color_button.dart';
import 'package:bfilm/commons/widgets/outlined_button.dart';
import 'package:bfilm/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BLayout(
      child: Column(
        children: [
          const Text(
            "Tạo tài khoản",
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
            textBaseline: TextBaseline.alphabetic,
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
                onTap: () {},
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
