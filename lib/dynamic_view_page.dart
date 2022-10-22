import 'package:dynamic_ui/cubits/dynamic_views_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model/input_model.dart';

class DynamicView extends StatefulWidget {
  const DynamicView({Key? key}) : super(key: key);

  @override
  State<DynamicView> createState() => _DynamicViewState();
}

class _DynamicViewState extends State<DynamicView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DynamicViewsCubit, DynamicViewsState>(
        builder: (context, state) {
          if (state is DynamicViewsInProgress) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DynamicViewsInSuccess) {
            List<InputModel> views = state.views;
            return ListView(
              children: List.generate(
                  views.length,
                  (index) {
                    int color = int.parse(views[index].color.replaceAll('#', '0xFF'));
                    return Container(
                      height: views[index].height.toDouble(),
                      width: views[index].width.toDouble(),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15), boxShadow:  [
                        BoxShadow(
                          color: Color(color),
                          offset: Offset(0, 0),
                          blurRadius: 10,
                        )
                      ]),
                      child: Text(views[index].title),
                    );
                  }),
            );
          } else if (state is DynamicViewsInFailure) {
            return Center(
              child: Text(
                state.errorText,
                style: const TextStyle(color: Colors.black, fontSize: 24),
              ),
            );
          }
          return const Center(
            child: Text("else holatt"),
          );
        },
      ),
    );
  }
}
