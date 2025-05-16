import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
// ignore: unused_import
import 'package:shared_preferences/shared_preferences.dart';

class VersionCheck {
  // A versão mínima que você permite que rode
  // ignore: constant_identifier_names
  static const String MINIMUM_VERSION = "1.0.10";
  
  static Future<void> checkVersion(BuildContext context) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String currentVersion = packageInfo.version;
    
    // Se a versão atual for menor que a mínima
    if (currentVersion.compareTo(MINIMUM_VERSION) < 0) {
      // Não deixa fechar o diálogo (usuário deve atualizar)
      showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          // ignore: prefer_const_constructors
          title: Text('Atualização Necessária'),
          // ignore: prefer_const_constructors
          content: Text('Uma nova versão está disponível com fórmulas de Biologia. Por favor, atualize para continuar usando o aplicativo.'),
          actions: [
            TextButton(
              onPressed: () {
                // Aqui você pode adicionar o link para a loja ou instruções de atualização
                // Para teste fechado, pode ser um link para o arquivo APK ou instruções
                // Como é um teste fechado, provavelmente você distribuirá o APK diretamente
              },
              child: Text('Atualizar Agora'),
            ),
          ],
        ),
      );
    }
  }
}
