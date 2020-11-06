import 'package:flutter/material.dart';
import 'package:flutter_auths/pages/task2.dart';
import 'package:flutter_auths/pages/tasks.dart';
import 'package:google_sign_in/google_sign_in.dart';


import 'package:flutter_auths/pages/detail_screen.dart';
import 'package:flutter_auths/pages/Ajustes.dart';
import 'package:flutter_auths/pages/Perfil.dart';




class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
        children: <Widget>[
          Container(
            width:double.infinity,
            padding: EdgeInsets.all(20),
            color:Theme.of(context).primaryColor,
            child:Center(
              child:Column(
                children:<Widget>[
                  Container(
                    width:100,
                    height:100,
                    margin:EdgeInsets.only(
                      top:30,
                    ),
                    decoration:BoxDecoration(
                      shape:BoxShape.circle,
                      image:DecorationImage(
                          image:NetworkImage(
                              'https://eloutput.com/app/uploads-eloutput.com/2020/04/Batman.jpg'
                          ),
                          fit:BoxFit.fill
                      ),
                    ),

                  ),
                  Text('Alertas Tampico', style:TextStyle(color:Colors.white,
                  )

                  )

                ],
              ),
            ),
          ),
          ListTile(
            leading:Icon(Icons.android),
            title:Text(
              'Noticias Internacionales',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> HomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.person),
            title:Text(
              'Perfil',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> PerfilScreen(),
                ),
              );
            },
          ),
          ListTile(

            leading:Icon(Icons.schedule),
            title:Text(
              'Reportes',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> DetailsScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title:Text(
              'Quejas',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> TasksPage(),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}
