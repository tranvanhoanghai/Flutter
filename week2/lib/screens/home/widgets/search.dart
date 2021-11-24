import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.1,
      child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.75,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color(0xFFDDE5E9),
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFFDDE5E9),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Try search "Computer Table"',
                      hintStyle: const TextStyle(color: Color(0xFFDDE5E9))),
                ),
              ),
              Expanded(child: Container()),
              Image.asset('assets/images/auths/avt.png')
            ],
          )),
    );
  }
}
