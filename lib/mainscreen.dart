import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  var items = ['Working a lot harder', 'Being a lot smarter', 'Being a self-starter', 'Placed in charge of trading charter'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Get Price')),
      body:
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: TextField(controller: _controller,obscureText: true,)
                              ),
                              PopupMenuButton<String>(
                                icon: const Icon(Icons.arrow_drop_down),
                                onSelected: (String value) {
                                  _controller.text = value;
                                },
                                itemBuilder: (BuildContext context) {
                                  return items.map<PopupMenuItem<String>>((String value) {
                                    return PopupMenuItem(child: Text(value), value: value);
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: TextField(controller: _controller)
                              ),
                              PopupMenuButton<String>(
                                icon: const Icon(Icons.arrow_drop_down),
                                onSelected: (String value) {
                                  _controller.text = value;
                                },
                                itemBuilder: (BuildContext context) {
                                  return items.map<PopupMenuItem<String>>((String value) {
                                    return PopupMenuItem(child: Text(value), value: value);
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: TextField(controller: _controller)
                              ),
                              PopupMenuButton<String>(
                                icon: const Icon(Icons.arrow_drop_down),
                                onSelected: (String value) {
                                  _controller.text = value;
                                },
                                itemBuilder: (BuildContext context) {
                                  return items.map<PopupMenuItem<String>>((String value) {
                                    return PopupMenuItem(child: Text(value), value: value);
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: TextField(controller: _controller)
                              ),
                              PopupMenuButton<String>(
                                icon: const Icon(Icons.arrow_drop_down),
                                onSelected: (String value) {
                                  _controller.text = value;
                                },
                                itemBuilder: (BuildContext context) {
                                  return items.map<PopupMenuItem<String>>((String value) {
                                    return PopupMenuItem(child: Text(value), value: value);
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
    );
  }
}