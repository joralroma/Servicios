import 'package:flutter/material.dart';
import 'package:prueba/models/service/service.dart';
import 'package:prueba/utils/responsive.dart';
import 'package:prueba/utils/style.dart';


class ServiceItem extends StatelessWidget {

  final bool loader;
  final Service service;

  ServiceItem({
    Key key,
    this.loader = false,
    this.service
  }) : super(key: key);

  Responsive responsive;

  @override
  Widget build(BuildContext context) {

    responsive = Responsive(context);

    Widget item = Container(
      width: responsive.wp(80),
      height: 130,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Style.Border
        )
      ),
      child: _buildContent(),
    );

    return item;

  }


  Widget _buildContent() {
    if(loader || (service == null)) {
      return Container();
    }
    return _buildDataItem();
  }

  Widget _buildDataItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.directions_car,
            size: 70,
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '${service.user.firstName} ${service.user.lastName}',
                style: Style.StyleTitle,
              ),
              Text(
                '${service.vehicle.brand} ${service.vehicle.model} ${service.vehicle.colour}',
                style: Style.StyleSubtitle,
              ),
              Text(
                '${service.vehicle.licensePlate}',
                style: Style.StyleTitle,
              )              
            ],
          )
        ],
      ),
    );
  }

}