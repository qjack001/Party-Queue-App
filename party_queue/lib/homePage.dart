import 'package:flutter/material.dart';
import 'partyCode.dart';
import 'uiElements.dart';
import 'hostPage.dart';
import 'server.dart';
import 'partyPage.dart';

///
/// Home page for app
/// 
/// @title HomePage
/// @author Jack Guinane
/// @company Wolfhaus
/// @date 2018-05-18
///

/// Stateful Widget that calls the HomePageState
class HomePage extends StatefulWidget 
{
	HomePage({Key key, this.title}) : super(key: key);
	final String title;

	@override
	HomePageState createState() => new HomePageState();
}

/// Builds the home page scaffold
class HomePageState extends State<HomePage> 
{
	@override
	Widget build(BuildContext context) 
	{
		return new Scaffold
		(
			appBar: getAppBar
			(
				title: "Spotify For Parties", //TODO: come up with name
				leading: new Icon(Icons.bubble_chart) //TODO: add logo icon
			),

			body: new ListView
			(
				physics: new ClampingScrollPhysics(),
				children: <Widget>
				[
					new SizedBox(height: 100.0,),

					getTitle(text: "Join a party"),

					new Container //party code input
					(
						alignment: Alignment.center,
						decoration: new BoxDecoration 
						(
							borderRadius: new BorderRadius.all(new Radius.circular(40.0)),
							color: Colors.grey[200],
						),
						margin: new EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0,),
						padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
						child: new TextFormField
						(
							style: new TextStyle
							(
								color: Colors.grey[800],
								fontSize: 20.0, 
							),
							decoration: new InputDecoration
							(
								fillColor: Colors.grey[200],
								filled: true,
								border: InputBorder.none,
								hintText: 'Enter Party Code',
								hintStyle: new TextStyle
								(
									color: Colors.grey,
									fontSize: 20.0,
								)
							),
							onFieldSubmitted: (input)
							{
								int address = PartyCode.getAddress(input);
								if (Server.exists(address))
								{
									Navigator.push
									(
										context, 
										new MaterialPageRoute(builder: (context) => new PartyPage(address))
									);
								}
								else
								{
									showDialog(context: context, child: new SimpleDialog
									(
										title: getTitle(text: "No party found"),
										semanticLabel: "Incorrect code entered",
										children: <Widget>
										[
											getText(text: "Make sure the inputted code is correct."),

											getFlatButton(text: "OK", onPressed: (){Navigator.pop(context);})
										],
									));
								}
							},

						)
					),

					new SizedBox(height: 180.0,), //TODO: shrink on resize
					
					getText(text: "Want to host your own?"),

					getButton //host button
					(
						text: "HOST A PARTY",
						onPressed: ()
						{
							Navigator.push
							(
								context,
								new MaterialPageRoute(builder: (context) => new HostPage())
							);
						}
					),

					new SizedBox(height: 10.0,),
				],
			)
		);
	}
}
