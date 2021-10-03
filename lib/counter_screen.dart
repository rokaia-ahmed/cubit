
import 'package:cubit/cubit/cubit.dart';
import 'package:cubit/cubit/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=> CounterCubit(InitialState()),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener:(context , state){} ,
        builder:(context ,state ){
        return Scaffold(
            appBar: AppBar(),
            body:Center(
              child: Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Text(
                    '${CounterCubit.get(context).counter}',
                    style:TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ) ,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: (){
                        CounterCubit.get(context).minus();
                        },
                        child: Icon(Icons.minimize_outlined),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          CounterCubit.get(context).add();
                        },
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ) ,
          );
        },
      ),
    );
  }
}
