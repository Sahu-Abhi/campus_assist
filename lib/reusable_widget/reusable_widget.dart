import 'package:flutter/material.dart';
Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 288,
    height: 303,

  );
}

TextField reusableTextField(String text, IconData icon,bool isPasswordType,
    TextEditingController controller){
  return TextField(
    controller: controller,

    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black,
    style: TextStyle(color:Colors.grey.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.grey,
      ),
      labelText: text,
      labelStyle: TextStyle(color:Colors.grey.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(width:0.5,style: BorderStyle.none,),

      )
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,

  );
}

Container loginSignupButton(
  BuildContext context, bool isLogin, Function onTap){
  return Container(
      padding: const EdgeInsets.fromLTRB(30,5,30,0),
    width: MediaQuery.of(context).size.width,
    height: 60,
    margin: const EdgeInsets.fromLTRB(0,10,0,20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: (){
        onTap();
      },
      child: Text(
        isLogin? 'LOG IN' : 'SIGN UP',
        style: const TextStyle(
          color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 16),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if(states.contains(MaterialState.pressed)){
            return Colors.blueAccent;
          }
          return Colors.blue;
        }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      )
      ),
    )
  );
}




