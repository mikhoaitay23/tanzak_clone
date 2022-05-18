import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/fake_data.dart';
import 'package:tanzak_clone/widget/ktext.dart';

import '../../utils/images.dart';

class SearchResultScreen extends StatelessWidget {
  static const String routeName = '/SearchResultScreen';

  const SearchResultScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: KText(
            text: 'Search Result',
            color: Colors.white,
            fontSize: 18,
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Image(
              image: ExactAssetImage(Images.icBtnGoBack),
              width: 24,
              height: 24,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.imgBackgroundHeader),
                    fit: BoxFit.fill)),
          ),
          elevation: 0,
          bottom: PreferredSize(
            child: Container(
                color: Colors.white,
                height: 50.0,
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: KText(
                      text: 'Test',
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Image.asset(
                        Images.icDropdown,
                        width: 12,
                        height: 12,
                      ),
                    ),
                    style:
                        TextButton.styleFrom(backgroundColor: Colors.grey[350]),
                  ),
                )),
            preferredSize: const Size.fromHeight(50.0),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 160,
                            height: 200,
                            child: Image.network(
                              fakeItemHome[index].urlImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            children: [
                              KText(
                                text: fakeItemHome[index].name,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                              KText(
                                text: fakeItemHome[index].name,
                                color: Colors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                    ));
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: fakeItemHome.length),
        ));
  }
}
