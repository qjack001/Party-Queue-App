import 'package:flutter/material.dart';
import 'partyCode.dart';
import 'uiElements.dart';
import 'server.dart';
import 'package:flutter/services.dart';

/*
 * Copyright 2018 - 2018 Wolfhaus, Wolfhaus
 * 
 * File: hostPage.dart
 * Project: partyhaus
 * File Created: Saturday, 19th May 2018 4:23:34 pm
 * Author: Jack Guinane (jackguinane@gmail.com)
 * -----
 * Last Modified: Thursday, 27th September 2018 3:34:13 pm
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
		final key = new GlobalKey<ScaffoldState>();
		return new Scaffold
		(
			key: key,
			body: getFrame
			(
				children: <Widget>
				[
					getAppBar(title: "Host a Party"),

					new SizedBox(height: 80.0,),

					getTitle(text: "Open Partyhaus on your computer to continue.", size: 24.0),

					// instructional image
					new Padding
					(
						padding: const EdgeInsets.all(32.0),
						child: new Container
						(
							height: 200.0,
							child: Image.network
							(
								'https://raw.githubusercontent.com/Matthew-Pollock/PartyHost/master/comp.png',
							),
						),
					),

					new SizedBox(height: 50.0,), //TODO: shrink on resize

					// copy link button
					getButton
					(
						text: "COPY LINK",
						onPressed: () 
						{
							Clipboard.setData(new ClipboardData(text: "https://partyha.us"));
							key.currentState.showSnackBar
							(
                    			new SnackBar(content: new Text("Copied to Clipboard"),)
							);
						},
					),

					new SizedBox(height: 10.0,),
				],
			)
		);
	}
}
