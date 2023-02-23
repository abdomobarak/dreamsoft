

import 'package:dream_soft/common/presentation/view/home/vm/car_type_vm.dart';
import 'package:dream_soft/common/presentation/view/home/widget/car_cell.dart';
import 'package:dream_soft/common/presentation/view/home/widget/car_type_list.dart';
import 'package:dream_soft/common/presentation/view/home/widget/cars_widget.dart';
import 'package:dream_soft/common/presentation/view/home/widget/home_app_bar_action.dart';
import 'package:dream_soft/common/presentation/view/home/widget/home_app_bar_leading.dart';
import 'package:dream_soft/common/presentation/view/home/widget/home_story_widget.dart';
import 'package:dream_soft/common/presentation/widget/sliver_header_widget.dart';
import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/languages.dart';
import 'package:dream_soft/common/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CarHomeView extends StatelessWidget {
   CarHomeView({Key? key}) : super(key: key);

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).colorScheme.primary
    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        flexibleSpace: Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Theme.of(context).colorScheme.primary,
                  const Color(0xFF6e7080)]),
          ),
        ),
        leading: const HomeAppBarLeading(),
        actions: const [
           HomeAppBarAction()
        ],
      ),
      body: Stack(
        children: [

          CustomScrollView(
            key: const PageStorageKey('homeCarsList'),
            controller: scrollController,
            slivers: [

              SliverPersistentHeader(
                delegate: SliverHeaderWidget(const StoryWidget(),
                  height: 120, ),
              ),

              SliverPersistentHeader(
                delegate: SliverHeaderWidget(const SizedBox(),
                    height: MySizes.defaultPadding),
              ),

              SliverPersistentHeader(
                delegate: SliverHeaderWidget( SizedBox(
                  width: double.infinity,
                  child: Image.asset(Images.banner,
                    fit: BoxFit.cover,),
                ),
                  height: 200,),
              ),

              SliverPersistentHeader(
                delegate: SliverHeaderWidget(const SizedBox(),
                    height: MySizes.defaultPadding),
              ),

              SliverPersistentHeader(
                delegate: SliverHeaderWidget( Container(
                  margin: const EdgeInsets.symmetric(horizontal: MySizes.defaultPadding ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: LangEnum.searchCar.tr(),
                      prefixIcon:Container(
                        margin: const EdgeInsets.all(13),
                        child: SvgPicture.asset(
                          Images.search,
                          fit: BoxFit.scaleDown,
                          height: 5, width: 5,
                        ),
                      ),
                    ),
                  ),
                )),
              ),


              SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: Theme.of(context).colorScheme.background,
                title: CarTypeList(),
              ),


              SliverGrid(

                delegate: SliverChildBuilderDelegate(
                      (context,index){
                        return GetBuilder<CarTypeVM>(
                          builder: (vm){
                            if(vm.isLoading){
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }else {
                              return const CarCell();
                            }

                          },
                        );

                  },
                  childCount: 6,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                  crossAxisSpacing: 1.3
                ),
              ),

              SliverPersistentHeader(
                delegate: SliverHeaderWidget(const SizedBox(),
                    height: 10),
              ),


              SliverPersistentHeader(
                delegate: SliverHeaderWidget( SizedBox(
                  width: double.infinity,
                  child: Image.asset(Images.image5,
                    fit: BoxFit.cover,),
                ),
                  height: 130,),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
