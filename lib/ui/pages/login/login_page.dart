import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:unitask/core/extensions/sized_box_extension.dart';
import 'package:unitask/core/extensions/build_context_extension.dart';
import 'package:unitask/app/router/app_page.dart';
import 'package:unitask/core/models/result.dart';
import 'package:unitask/ui/common/label_text_field.dart';
import 'package:unitask/ui/common/text_divider.dart';
import 'package:unitask/features/auth/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _onLogin() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    // 이메일/비밀번호 빈 값 검증
    if (email.isEmpty || password.isEmpty) {
      return context.showSnackbar(
        '이메일 또는 비밀번호를 입력해주세요.',
        isError: true,
      );
    }

    final result = await ref.read(authProvider.notifier).login(
          email: email,
          password: password,
        );

    switch (result) {
      case Success():
        if (mounted) {
          context.goNamed(AppPage.home.name);
        }
      case Failure(:final exception):
        if (mounted) {
          context.showSnackbar(exception.toString(), isError: true);
        }
    }
  } // _onLogin 끝

  @override
  Widget build(BuildContext context) {
    final loading = ref.watch(authProvider).isLoading;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(LucideIcons.graduationCap, size: 50),
                const Text(
                  'UniTask',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Text('과제 관리를 스마트하게'),
                50.heightBox,

                // 이메일
                LabelTextField(
                  controller: _emailController,
                  label: '이메일',
                  hintText: 'example@university.edu',
                  icon: LucideIcons.mail,
                ),

                20.heightBox,

                // 비밀번호
                LabelTextField(
                  controller: _passwordController,
                  label: '비밀번호',
                  hintText: '000000',
                  icon: LucideIcons.lockKeyhole,
                  enableObscure: true,
                ),

                // 비밀번호 찾기
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      context.showSnackbar('곧 기능을 출시합니다!');
                    },
                    child: const Text('비밀번호를 잊으셨나요?'),
                  ),
                ),

                20.heightBox,

                // 로그인 버튼
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: loading ? null : _onLogin,
                    icon: loading 
                      ? const SizedBox.square(
                          dimension: 20,
                          child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                      ): const Icon(LucideIcons.logIn),
                      
                    label: const Text(
                      '로그인',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),

                20.heightBox,
                const TextDivider(text: '또는'),
                20.heightBox,

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('계정이 없으신가요?'),
                    TextButton(
                      onPressed: () {
                        context.pushNamed(AppPage.signup.name);
                      },
                      child: const Text("회원가입"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } // build 끝
} // _LoginPageState 끝