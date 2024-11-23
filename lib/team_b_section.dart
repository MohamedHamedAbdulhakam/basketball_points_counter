import 'package:basketball_points_counter/constants.dart';
import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamBsection extends StatelessWidget {
  const TeamBsection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          "Team B",
          style: TextStyle(color: Constants.kPrimaryColor,fontSize: 30,fontWeight: FontWeight.bold),
        ),
        Text(
          '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
          style: TextStyle(fontSize: 140,color: Constants.kPrimaryColor),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Constants.kPrimaryColor),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .teamIncreament(team: 'B', buttonnumber: 1);
            },
            child: const Text('add 1 point',style: TextStyle(color: Colors.white,),)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Constants.kPrimaryColor),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .teamIncreament(team: 'B', buttonnumber: 2);
            },
            child: const Text('add 2 point',style: TextStyle(color: Colors.white,),)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Constants.kPrimaryColor),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .teamIncreament(team: 'B', buttonnumber: 3);
            },
            child:const  Text('add 3 point',style: TextStyle(color: Colors.white,),))
      ],
    );
  }
}

