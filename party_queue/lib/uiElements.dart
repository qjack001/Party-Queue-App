import 'package:flutter/material.dart';

/// 
/// A class for getting simple material design
/// elements, styilized to match the look and feel of the app
/// 
/// @title Main
/// @author Jack Guinane
/// @company Wolfhaus
/// @date 2018-05-18
/// 

/// Returns a styilized AppBar
/// If no leading parameter is entered,
/// defaults to a back button
AppBar getAppBar({leading: const BackButton(color: Colors.black), title: ""})
{
	return new AppBar
	(
		iconTheme: new IconThemeData
		(
			color: Colors.black,
		),
		elevation: 0.0,
		title: new Text
		(
			title,
			style: new TextStyle
			(
				fontWeight: FontWeight.bold,
				color: Colors.black,
			)
		),
		leading: leading,
		bottomOpacity: 0.0,
		backgroundColor: Colors.transparent,
	);
}

/// Returns a styilized button
/// Is green by default
Widget getButton({text: "", color: Colors.green, Function onPressed})
{
	return new Center
	(
		child: new RawMaterialButton
		(
			constraints: new BoxConstraints(minWidth: 250.0),
		  	fillColor: color,
		  	padding: new EdgeInsets.symmetric(vertical: 20.0),
		  	elevation: 4.0, 
		  	child: new Text
		  	(
		  		text,
		  		style: new TextStyle
		  		(
		  			fontSize: 20.0,
		  			fontWeight: FontWeight.bold,
		  			color: Colors.white,
		  		)
		  	),
		  	onPressed: onPressed,
		  	shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
		),
	);
}

/// Returns a large title
Widget getTitle({String text, size: 32.0})
{
	return new Padding
	(
		padding: EdgeInsets.all(8.0),
		child: new Text
		(
			text,
			textAlign: TextAlign.center,
			style: new TextStyle
			(
				color: Colors.black,
				fontWeight: FontWeight.bold,
				fontSize: size,
			),
		),
	);
}