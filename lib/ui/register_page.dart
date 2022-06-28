import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1_for_algoriza/reusable_components/button_2.dart';
import 'package:task1_for_algoriza/reusable_components/my_image.dart';
import 'package:task1_for_algoriza/reusable_components/my_text.dart';
import 'package:task1_for_algoriza/reusable_components/text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  height: 80,
                  child: Image.network(
                      width: double.infinity,
                      fit: BoxFit.fill,
                      "https://imageresizer.static9.net.au/xxJnTO0AZFBrlW8k5c7FZ8K"
                      "XU48=/360x203/https%3A%2F%2Fprod.static9.net.au%2Ffs%2F098620f3-5d9d-49c0-98d1-4d5994b6d629"),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to Fashion Daily",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            "Help",
                            style: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          CircleAvatar(
                            radius: 12,
                            child: Icon(
                              Icons.question_mark,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.blue[600],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Email",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left),
                ),
                SizedBox(
                  height: 7,
                ),
                myTextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return " Email Required";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  label: "Eg.example@gmail.com",
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Phone Number",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left),
                ),
                SizedBox(
                  height: 7,
                ),

                Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          CountryCodePicker(
                            onChanged: print,
                            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                            initialSelection: 'IT',
                            favorite: ['+39', 'FR'],
                            // optional. Shows only country name and flag
                            showCountryOnly: false,
                            // optional. Shows only country name and flag when popup is closed.
                            showOnlyCountryWhenClosed: false,
                            // optional. aligns the flag and the Text left
                            alignLeft: false,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text("Eg.812345678"),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Password",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left),
                ),
                SizedBox(
                  height: 7,
                ),
                myTextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Password Required";
                      }
                    },
                    suffixIcon: Icon(Icons.visibility),
                    label: "Password"),
                SizedBox(
                  height: 15,
                ),
                Button_2(
                    size: 18,
                    textColor: Colors.white,
                    buttonText: "Register",
                    onClick: () {
                        if(formKey.currentState!.validate()){
                          print('validate');
                        }
                    },
                    color: Colors.blue),
                SizedBox(height: 10),
                Text(
                  "Or",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: MaterialButton(
                    onPressed: () {},
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Image.network(
                              "https://th.bing.com/th/id/OIP.y5-90P4SigvDX33G69psbwHaHa?pid=ImgDet&rs=1",
                            )),
                        SizedBox(width: 12),
                        Text(
                          "Sign with by google",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Has any account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    TextButton(
                      onPressed: (){},
                     child: TextButton(onPressed: (){},
                       child: Text("Register here",style: TextStyle(
                         color: Colors.blue,
                         fontWeight: FontWeight.bold,
                       ),),
                       ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                MyText(text: "By registering your account.you are agree to our terms and conditions",textColor: Colors.blue,size: 15,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
