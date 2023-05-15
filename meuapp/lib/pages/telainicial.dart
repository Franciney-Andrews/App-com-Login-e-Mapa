import 'package:flutter/material.dart';


class TelaLogin extends StatefulWidget {
  static var routeName = '/login';

  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}


class _TelaLoginState extends State<TelaLogin> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Login'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, informe um e-mail válido';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _senhaController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, informe uma senha';
                  }
                  //return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //TODO: Fazer a validação do usuário/senha
                    Navigator.pop(context);
                  }
                },
                child: const Text('ENTRAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}