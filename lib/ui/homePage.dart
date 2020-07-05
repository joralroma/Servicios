import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba/bloc/home/homeBloc.dart';
import 'package:prueba/models/service/service.dart';
import 'package:prueba/ui/homeLoader.dart';
import 'package:prueba/ui/widgets/serviceWidget.dart';
import 'package:prueba/utils/responsive.dart';
import 'package:prueba/utils/style.dart';


class HomePage extends StatefulWidget {

  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Responsive responsive;

  List<Service> _listServices = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _initData());
  }

  @override
  Widget build(BuildContext context) {

    responsive = Responsive(context);


    Widget titlePage = Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Text(
        'Servicios activos',
        style: Style.StyleTitle.copyWith(
          fontSize: responsive.ip(2.3),
        ),
      )
    );    

    Widget body = Expanded(
      child: BlocBuilder<HomeBloc, HomeState>(
        condition: (HomeState previous, HomeState current) {
          return previous != current;
        },
        builder: (context, state) {
          return _doState(state);
        },
      )
    );

    return Scaffold(
      appBar: AppBar( backgroundColor: Style.AppbarColor ),
      body: Column(
        children: <Widget>[
          titlePage,
          body
        ],
      )
    );

  }

  void _initData() {
    BlocProvider.of<HomeBloc>(context).add(GetDataEvent());
  }

  Widget _doState(HomeState state) {
    if(state is GettingData) {
      return HomeLoader();
    } else if(state is GotData) {
      _listServices = state.services;
      return _buildListServices();
    } else if(state is ErrorData) {
      return _buildAlertError();
    } else {
      return Container();
    }
  }

  Widget _buildListServices() {
    return ListView.builder(
      padding: EdgeInsets.only(top: 0, right: 20, bottom: 0, left: 20),
      itemCount: _listServices.length,
      itemBuilder: (_, int i) => ServiceItem(service: _listServices[i])
    );
  }

  Widget _buildAlertError() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.error,
            color: Style.Error,
            size: 50,
          ),
          Text(
            'Error al traer los datos.',
            style: Style.StyleTitle.copyWith(
              color: Style.Error,
              fontSize: responsive.ip(2.0)
            ),
          ),
        ],
      ),
    );
  }


}