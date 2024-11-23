
import 'package:basketball_points_counter/constants.dart';
import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:basketball_points_counter/team_a_section.dart';
import 'package:basketball_points_counter/team_b_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // int teamAPoints = 0;
  // int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // if (state is CounterAIncreamentState) {
        //   teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoint;
        // } else {
        //   teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoint;
        // }
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Constants.kPrimaryColor,
            title:const  Center(child:  Text("points counters",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
          ),
        
          body: Column(
            children: [
              const Spacer(),
            const   Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 TeamAsection(),
                  SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      color: Color(0xff617d8a),
                      thickness: 1,
                    ),
                  ),
                  TeamBsection()
                ],
              ),
             const  Spacer(),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Constants.kPrimaryColor),
                  onPressed: () {
                    
                  },
                  child: const Text('reset',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
              const Spacer()
            ],
          ),
        );
      },
    );
  }
}

