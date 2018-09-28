import 'package:flutter/material.dart';
import 'server.dart';

import 'package:flutter/material.dart';
import 'partyCode.dart';
import 'uiElements.dart';
import 'server.dart';

///
/// The page for attending a party
/// 
/// @title PartyPage
/// @author Jack Guinane
/// @company Wolfhaus
/// @date 2018-05-21
///

/// Stateful Widget that calls the PartyPageState
class PartyPage extends StatefulWidget 
{
	PartyPage(this.address, {Key key, this.title}) : super(key: key);
	final String title;
	final int address;

	@override
	PartyPageState createState() => new PartyPageState(address);
}

/// Builds the party page scaffold
class PartyPageState extends State<PartyPage> 
{
	String partyName;
	int address;

	PartyPageState(int addressIn)
	{
		address = addressIn;
		partyName = Server.getPartyName(address);
	}

	@override
	Widget build(BuildContext context) 
	{
		return new Scaffold
		(
			body: getFrame
			(
				children: <Widget>
				[
					getAppBar(title: partyName,),

					new SizedBox(height: 100.0,),

					getTitle(text: "You're at"),

					getTitle(text: partyName, size: 48.0),

					new SizedBox(height: 150.0,), //TODO: shrink on resize

					getButton //configure button
					(
						text: "REQUEST",
						onPressed: ()
						{
							Navigator.push
							(
								context,
								new MaterialPageRoute(builder: (context) => new RequestPage())
							);
						}
					),

					getButton //leave button
					(
						text: "LEAVE PARTY",
						color: Colors.red[200],
						onPressed: ()
						{
							Navigator.pop(context);
						}
					),

					new SizedBox(height: 10.0,),
				],
			)
		);
	}
}
