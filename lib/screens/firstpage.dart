import "package:flutter/material.dart";

class FirstPageView extends StatefulWidget {
  const FirstPageView({Key? key}) : super(key: key);

  @override
  State<FirstPageView> createState() => _FirstPageViewState();
}

class _FirstPageViewState extends State<FirstPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 300, left: 40, right: 40),
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    "Spent analyser",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.blue,
                      fontFamily: 'Aboreto',
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Midtext(),
            Login(),
            RegisterUser(),
            Footer()
          ],
        ));
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 22),
      alignment: Alignment.center,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {
                  logInBtn(context);
                },
                elevation: 9,
                child: const Text("SignIn")),
          ),
        ],
      ),
    );
  }

  void logInBtn(BuildContext context) {
    var popup = const AlertDialog(
      title: Text('You are welcome'),
      content: Text('Proceed further'),
    );
    showDialog(context: context, builder: (BuildContext) => popup);
  }
}

class RegisterUser extends StatelessWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
                color: Colors.white,
                onPressed: () {
                  regusterBtn(context);
                },
                elevation: 9,
                child: const Text("Create Account")),
          ),
        ],
      ),
    );
  }

  void regusterBtn(BuildContext context) {
    var popup = const AlertDialog(
      title: Text('You are welcome'),
      content: Text('Please create your account'),
    );
    showDialog(context: context, builder: (BuildContext) => popup);
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 250),
      alignment: Alignment.center,
      child: Row(
        children: const <Widget>[
          Expanded(
            child: Text(
              "By using SA, you agree and consent to our: Terms of Service - Cookie Policy - Privacy Plicy",
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Aboreto',
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Midtext extends StatelessWidget {
  const Midtext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: Row(
        children: const <Widget>[
          Expanded(
            child: Text(
              "Best app for maintaing your income and expendature",
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Aboreto',
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
