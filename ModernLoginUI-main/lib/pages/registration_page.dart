import 'package:flutter/material.dart';
import '../components/my_textfield.dart';
import 'home_page.dart';

class Register extends StatelessWidget {
   Register({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final locationController = TextEditingController();
  final confirmationController = TextEditingController();
  final nameController = TextEditingController();

  void registerUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario de registro"),
        backgroundColor: const Color.fromARGB(255, 47, 230, 126)
        
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
const Text(
                'Bienvenido Usuario, porfavor registrate',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                ),
              ),
              // name textfield
               const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 17, 255, 0),
                      ),
                    ),
                  ],
                ),
              ),
              MyTextField(
                controller: nameController,
                hintText: 'Nombre completo',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // username textfield
              MyTextField(
                controller: nameController,
                hintText: 'Nombre de usuario',
                obscureText: false,
              ),

              const SizedBox(height: 10),

               // location textfield
              MyTextField(
                controller: locationController,
                hintText: 'Asociancion',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Contraseña',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //password textfield
              MyTextField(
                controller: confirmationController,
                hintText: 'Confirme su contraseña',
                obscureText: true,
              ),

              const SizedBox(height: 10),
             

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿Todos tus datos son correctos?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 10


                  
                  ),
                ],
              ),
 const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 17, 255, 0),
                      ),
                    ),
                  ],
                ),
              ),
          Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                    child: const Text('Iniciar sesión'),
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                    
              );
            },
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