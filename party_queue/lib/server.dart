import 'dart:math';

/// 
/// communicates with the server
/// 
/// curenntly a placeholder
/// 

class Server
{
	/// Return random 4 digit number as a String.
	/// will be used in the future to setup a new party on the server, and return the address
	static String newServer()
	{
		Random ran = new Random();
		String out = ran.nextInt(10).toString() + ran.nextInt(10).toString() + ran.nextInt(10).toString() + ran.nextInt(10).toString();
		return out;
	}

	/// Returns "Jack's Banger", followed by the inputted address
	/// will be used to get the name of the party associated with the inputted address
	static String getPartyName(String address)
	{
		return "Jack's Banger (#$address)";
	}

	/// the following are placeholders, that may or may not be implemented in the future,
	/// depending on how useful they are
	static bool exists(String address) => true;
	static void end(String address){}
	

}