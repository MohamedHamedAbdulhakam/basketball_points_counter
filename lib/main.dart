
import 'package:basketball_points_counter/constants.dart';
import 'package:basketball_points_counter/cubit/counter_state.dart';
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
            title: Center(child:  Text("points counters",style: TextStyle(fontWeight: FontWeight.bold),)),
          ),
        
          body: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                        style: const TextStyle(fontSize: 140),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.kPrimaryColor),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'A', buttonnumber: 1);
                          },
                          child: const Text('add 1 point')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.kPrimaryColor),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'A', buttonnumber: 2);
                          },
                          child: const Text('add 2 point')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.kPrimaryColor),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'A', buttonnumber: 3);
                          },
                          child: const Text('add 3 point'))
                    ],
                  ),
                  const SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      color: Color(0xff617d8a),
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                        style: const TextStyle(fontSize: 140),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.kPrimaryColor),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'B', buttonnumber: 1);
                          },
                          child: const Text('add 1 point')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.kPrimaryColor),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'B', buttonnumber: 2);
                          },
                          child: const Text('add 2 point')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.kPrimaryColor),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'B', buttonnumber: 3);
                          },
                          child: Text('add 3 point'))
                    ],
                  )
                ],
              ),
              Spacer(),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Constants.kPrimaryColor),
                  onPressed: () {
                    
                  },
                  child: const Text('reset',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              const Spacer()
            ],
          ),
        );
      },
    );
  }
}
