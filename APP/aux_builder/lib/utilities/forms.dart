import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aux_builder/controllers/login_controller.dart';

class Forms{


  Widget formLogin(LoginController controllerLogin){
    
    return Form(
      child: Column(
        children: [
          TextFormField(
            onChanged: controllerLogin.setUser,
            decoration: InputDecoration(
              filled: true,
              labelText: "Email",
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: "digite seu emal",
              isDense: true,
              contentPadding: const EdgeInsets.all(15),
            ),
          ),

          const SizedBox(height: 10,),

          TextFormField(
            onChanged: controllerLogin.setPass,
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              labelText: "Senha",
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: "digite sua senha",
              isDense: true,
              contentPadding: const EdgeInsets.all(15),
            ),
          ),
        ],
      ),
    );
  }

}