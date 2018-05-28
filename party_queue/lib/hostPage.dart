import 'package:flutter/material.dart';
import 'partyCode.dart';
import 'uiElements.dart';
import 'server.dart';

///
/// The page for hosting a party
/// 
/// @title HostPage
/// @author Jack Guinane
/// @company Wolfhaus
/// @date 2018-05-19
///

/// Stateful Widget that calls the HostPageState
class HostPage extends StatefulWidget 
{
	HostPage({Key key, this.title}) : super(key: key);
	final String title;

	@override
	HostPageState createState() => new HostPageState();
}

/// Builds the host page scaffold
class HostPageState extends State<HostPage> 
{
	String partyCode;
	int address;

	@override
	void initState() 
	{
		super.initState();
		address = Server.newServer();
  		partyCode = PartyCode.getCode(address);
	}

	@override
	Widget build(BuildContext context) 
	{
		return new Scaffold
		(
			appBar: getAppBar(title: "Host A Party",),

			body: new ListView
			(
				physics: new ClampingScrollPhysics(),
				children: <Widget>
				[
					new SizedBox(height: 100.0,),

					getTitle(text: "Your party code is"),

					getTitle(text: partyCode, size: 48.0),

					new SizedBox(height: 150.0,), //TODO: shrink on resize

					getButton //configure button
					(
						text: "CONFIGURE",
						onPressed: ()
						{
							//TODO: goto configure page
						}
					),

					getButton //end button
					(
						text: "END PARTY",
						color: Colors.red[300],
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