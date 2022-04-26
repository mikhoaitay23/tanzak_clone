import 'package:flutter/material.dart';
import 'package:tanzak_clone/fake_data.dart';
import 'package:tanzak_clone/utils/strings.dart';

import '../../widget/ktext.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: Strings.search,
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0,
        bottom: PreferredSize(
          child: Container(
              color: Colors.white,
              height: 50.0,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      fillColor: Colors.grey[300],
                      prefixIcon: const Icon(Icons.search, color: Colors.black),
                      suffixIcon: const Icon(
                        Icons.cancel,
                        color: Colors.black,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      hintStyle: const TextStyle(color: Colors.black38),
                      hintText: Strings.search),
                ),
              )),
          preferredSize: const Size.fromHeight(50.0),
        ),
      ),
      body: ListView.builder(
        itemCount: fakeItemSearch.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(
                        text: fakeItemSearch[index].name,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          KText(
                            text:
                                fakeItemSearch[index].numberOfPages.toString(),
                            color: Colors.black,
                          ),
                          const Icon(Icons.arrow_right),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
