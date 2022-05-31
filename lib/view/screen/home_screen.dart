import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/model/model.dart';
import 'package:template/src/settings/settings_view.dart';
import 'package:template/view/widget/cost_widget.dart';
import 'package:template/view/widget/divider.dart';
import 'package:template/view/widget/icon_text.dart';
import 'package:template/view/widget/slider.dart';

class HomeScreen extends StatelessWidget {
  final Advertisement advertisement;
  const HomeScreen({Key? key, required this.advertisement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    floating: true,
                    elevation: 0,
                    expandedHeight: 190.0,
                    foregroundColor: Colors.grey.shade500,
                    leading: IconButton(
                      onPressed: () => Get.to(() => const SettingsView()),
                      icon: const Icon(
                        Icons.settings,
                        size: 25,
                      ),
                    ),
                    actions: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Icon(
                            Icons.share,
                            size: 22,
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.star_border,
                            size: 25,
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ],
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    flexibleSpace: FlexibleSpaceBar(
                      background: ImageSlider(),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            advertisement.interest,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            advertisement.title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(height: 10),
                          IconAndValue(
                            title: advertisement.date.toString(),
                            icon: Icons.calendar_today,
                          ),
                          const SizedBox(height: 10),
                          IconAndValue(
                            title: advertisement.address,
                            icon: Icons.push_pin_outlined,
                          ),
                          const KDivider(),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: CachedNetworkImageProvider(
                                  'https://www.allprodad.com/wp-content/uploads/2021/03/05-12-21-happy-people.jpg',
                                  errorListener: () => const Placeholder(),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                advertisement.trainerName,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            advertisement.trainerInfo,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          const KDivider(),
                          Text(
                            advertisement.occasionDetail,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          const KDivider(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "تكلفة الرحلة",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              CostWidget(text: "الحجز العادي", value: advertisement.price.toString()),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "قم بالحجز الان",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
