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
			body: getFrame
			(
				children: <Widget>
				[
					getAppBar
					(
						context: context, 
						title: "Spotify For Parties", //TODO: come up with name
						leading: new Icon(Icons.bubble_chart, color: Colors.white,)
					),

					new SizedBox(height: 100.0,),

					getTitle(text: "Join a party"),

					getTextInput
					(
						hintText: "Enter Party Code", 
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
								getDialogBox
								(
									context: context,
									semanticLabel: "invalid party code",
									title: "No party found",
									line1: "Make sure the inputted code",
                  line2: "is correct.",
								);
							}
						}
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
