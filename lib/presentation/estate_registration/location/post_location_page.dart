import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kellid/application/post_registration/location/post_location_bloc.dart';
import 'package:kellid/core/service_locator.dart';
import 'package:kellid/data/register_estate/register_estate_repo_impl.dart';
import 'package:kellid/domain/core/enums.dart';
import 'package:kellid/domain/register_estate/register_estate_repo.dart';
import 'package:kellid/presentation/core/consts/colors.dart';
import 'package:kellid/presentation/core/consts/routes.dart';

import 'package:kellid/presentation/core/consts/string_values.dart';
import 'package:kellid/presentation/core/failure_widget.dart';
import 'package:kellid/presentation/core/loading_widget.dart';
import 'package:kellid/presentation/core/pages/item_selector_page.dart';
import 'package:kellid/presentation/core/widgets/custom_app_bar.dart';
import 'package:kellid/presentation/core/widgets/field_container.dart';

class PostLocationPage extends StatelessWidget {
  const PostLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool a = false;
    return BlocProvider(
      create: (context) =>PostLocationBloc(registerEstateRepo: getIt<RegisterEstateRepo>())..add(PostLocationInitial()),
      child: BlocConsumer<PostLocationBloc, PostLocationState>(
        listener: (context,state){},
        builder: (context, state) {
          final currentState = state as PostLocationMainState;
          late Widget widget;
          // if(!a){
          //   context.read<PostLocationBloc>();
          // }
          if(currentState.isLoading!){}else if(currentState.getLocationDataResponse!.response is Failure){
            widget = const Center(child: FailureWidget(),);
          }else if (currentState.getLocationDataResponse!.response is Success){
            widget = Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/skyscraper-modern-tree.png',
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            StringValues.postLocationPageBodyText,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ),
                Container(
                  color: StaticColors.darkGreyColor,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 15,
                  ),
                  child: Column(
                    children: [
                      FieldContainer(
                        hint: StringValues.pickCityHint,
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            Routes.itemSelectorPage,
                            arguments: ItemSelectorPageArguments(
                              data: [],
                              onSelectedItem: (String value) {},
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          }else{
            widget= Center(child: Text('hello'),);
          }
          return SafeArea(
            child: Scaffold(
              appBar: customAppBar(
                context: context,
                titleString: StringValues.postLocationPageTitle,
              ),
              body: widget,
            ),
          );
        },
      ),
    );
  }
}

