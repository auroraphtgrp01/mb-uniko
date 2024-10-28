import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/profile_cubit.dart';
import '../../application/profile_state.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('asDasfafssafasdasd'),
          SizedBox(
            height: 222,
          ),
          BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) => InkWell(
              onTap: () => context.read<ProfileCubit>().test(),
              child: Column(
                children: [
                  Text(state.title ?? 'no'),
                  Text(state.error ?? 'err'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
