import 'package:flutter/material.dart';
import 'package:swypepay/services/navigation_service.dart';

class CustomListTile extends StatelessWidget {
 final IconData icon;
 final String text;
 final String route;


  CustomListTile(this.icon, this.text, this.route);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: (){
         NavigationService.instance.navigateTo(route);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(

            children: [
              Icon(icon, color: Colors.black45,),
              SizedBox(width: 30.0,),
              Text( text , style:  Theme.of(context).textTheme.headline2.copyWith(
                fontSize: 14
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
