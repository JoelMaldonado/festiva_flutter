import 'package:festiva_flutter/presentation/pages/login/login_provider.dart';
import 'package:festiva_flutter/presentation/theme/theme.dart';
import 'package:festiva_flutter/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);
    final state = provider.state;
    return Scaffold(
      backgroundColor: AppColors.colorB1,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 48),
                Image.asset(
                  "assets/images/logo_large.png",
                  width: 200,
                ),
                const SizedBox(height: 48),
                SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.colorB3,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/icons/ic_mail.png",
                            width: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Continuar con Google",
                            style: AppTextStyles.headline.copyWith(
                              color: AppColors.colorT1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Continuar como invitado",
                    style: AppTextStyles.subhead.copyWith(
                      color: AppColors.colorT2,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Divider(
                  color: AppColors.colorB3,
                  thickness: 1,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: state.userController,
                  placeholder: "Usuario",
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: state.passwordController,
                  placeholder: "Contraseña",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.eyeSlash,
                      size: 18,
                      color: AppColors.colorT2,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    IconButton(
                      onPressed: provider.toggleRememberMe,
                      icon: Icon(
                        state.rememberMe
                            ? Icons.check_circle
                            : Icons.circle_outlined,
                        color: state.rememberMe
                            ? AppColors.colorP1
                            : AppColors.colorT2,
                      ),
                    ),
                    Text(
                      "Recordarme",
                      style: AppTextStyles.footnote.copyWith(
                        color: AppColors.colorT2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                CustomButton(
                  label: "Iniciar Sesión",
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                Text(
                  "¿Olvidaste tu contraseña?",
                  style: AppTextStyles.footnote.copyWith(
                    color: AppColors.colorT2,
                  ),
                ),
                const SizedBox(height: 48),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "¿No tienes cuenta?",
                      style: AppTextStyles.footnote,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      " Regístrate",
                      style: AppTextStyles.footnote.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.colorP1,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
