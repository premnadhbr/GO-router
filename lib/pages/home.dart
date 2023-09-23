import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../project/routes/app_route_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text('Home'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.contactRouteName);
              },
              child: Text('About PAge')),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(
                    MyAppRouteConstants.profileRouteName,
                    pathParameters: {'username': 'premnadh', "userid": 'b.r'});
              },
              child: Text('Profile PAge')),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: () {}, child: Text('contact PAge')),
        ],
      ),
    );
  }
}
