import 'package:flutter/material.dart';
import 'package:schoolapp/core/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Hallo ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                    color: kTextWhiteColor,
                                  ),
                            ),
                            Text(
                              'Upii',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: kTextWhiteColor,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Text(
                          'Teknologi Informasi',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontSize: 16,
                                    color: kTextWhiteColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Container(
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            color: kOtherColor,
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding),
                          ),
                          child: Center(
                            child: Text(
                              'Semester 4',
                              style: TextStyle(
                                color: kTextBlackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding / 6,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        minRadius: 50,
                        maxRadius: 50,
                        backgroundColor: kSecondaryColor,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          color: kOtherColor,
                          borderRadius: BorderRadius.circular(kDefaultPadding),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Attendance',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: kTextBlackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                            Text(
                              '90%',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: kTextBlackColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300,
                                  ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          color: kOtherColor,
                          borderRadius: BorderRadius.circular(kDefaultPadding),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Fees Due',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: kTextBlackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                            Text(
                              '50%',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: kTextBlackColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
