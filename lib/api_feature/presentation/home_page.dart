import 'package:dev_api/api_feature/bloc/api_bloc.dart';
import 'package:dev_api/api_feature/data/dataprovider/api_provider.dart';
import 'package:dev_api/api_feature/data/repositories/api_repository.dart';
import 'package:dev_api/api_feature/presentation/widgets/api_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiBloc(
        RepositoryProvider.of<ApiRepository>(context),
      )..add(LoadEntryEvent()),
      child: Scaffold(
        backgroundColor: const Color(0xffF9F9F9),
        appBar: AppBar(
          leading: IconButton(
            icon: SvgPicture.asset(
              "assets/menu.svg",
              height: 18.h,
              width: 18.w,
              color: Colors.white54,
            ),
            onPressed: () {},
          ),
          title: const Text(
            "Free Api List",
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff554994),
          elevation: 0,
        ),
        body: BlocBuilder<ApiBloc, ApiState>(
          builder: (context, state) {
            if (state is LoadedApiState) {
              var entries = state.apiModel.entries;
              return ListView.builder(
                itemCount: entries.length,
                itemBuilder: (context, index) {
                  return ApiListItem(
                    entry: entries[index],
                  );
                },
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
