import 'package:flutter/material.dart';
import 'partyCode.dart';
import 'uiElements.dart';
import 'server.dart';

/*
 * Copyright 2018 - 2018 Wolfhaus, Wolfhaus
 * 
 * File: hostPage.dart
 * Project: partyhaus
 * File Created: Saturday, 19th May 2018 4:23:34 pm
 * Author: Jack Guinane (jackguinane@gmail.com)
 * -----
 * Last Modified: Wednesday, 27th June 2018 3:53:13 pm
 * Modified By: Jack Guinane (jackguinane@gmail.com>)
 * -----
 * Description: The page for hosting a party
 */

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
			body: getFrame
			(
				children: <Widget>
				[
					getAppBar(title: "Host a Party"),

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
