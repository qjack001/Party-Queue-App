import 'package:flutter/material.dart';
import 'homePage.dart';

///
/// Main file for app, is run at start
/// 
/// @title Main
/// @author Jack Guinane
/// @company Wolfhaus
/// @date 2018-05-18
///

/// The title of the application
const String APP_NAME = "Spotify for Parties";
ThemeData theme;

/// Main method, runs app
void main()
{
	theme = new ThemeData(primarySwatch: Colors.blue);
	runApp(new App());
}

class App extends StatelessWidget 
{
	@override
	Widget build(BuildContext context) 
	{
		return new MaterialApp
		(
			title: APP_NAME,
			theme: theme,
			home: new HomePage(title: APP_NAME),
		);
	}
}