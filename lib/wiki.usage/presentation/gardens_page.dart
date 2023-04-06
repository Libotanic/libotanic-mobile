import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libotanic/common/domain/gardens/gardens_bloc.dart';
import 'package:libotanic/wiki.usage/presentation/widgets/gardens_page/gardens_list.dart';


class GardensPage extends StatelessWidget {
  const GardensPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: BlocBuilder<GardensBloc, GardensState>(
          builder: (context, state) {
            return state.when(initial: () => Container(),
                loading: () => Container(),
                loaded: (gardens) => GardensList(gardens: gardens));
          }
      ),
    );
  }
}
