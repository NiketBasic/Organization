public with sharing class Utility {

	/*	Display INFO Message	*/
	public static void addMessage( String message )
	{
		addMessageSeverity( ApexPages.Severity.INFO, message);
	}
	
	/*	Display ERROR Message	*/
	public static void addError( String message )
	{
		addMessageSeverity( ApexPages.Severity.ERROR, message);
	}
	
	/*	Display WARNING Message	*/
	public static void addWarning( String message )
	{
		addMessageSeverity( ApexPages.Severity.WARNING, message);
	}
	
	/*	Display FATAL Message	*/
	public static void addFatal( String message )
	{
		addMessageSeverity( ApexPages.Severity.FATAL, message);
	}
	
	/*	Display CONFIRM Message	*/
	public static void addConfirm( String message )
	{
		addMessageSeverity( ApexPages.Severity.CONFIRM, message);
	}
	
	/*	Add various Page Messages	*/
	private static void addMessageSeverity( ApexPages.Severity severity, String message )
	{
		ApexPages.Message newMessage = new ApexPages.Message(severity, message);
		ApexPages.addMessage(newMessage);
		return; 
	}
	
	/*	Test method	*/
	/*@isTest
	static void Test_Utility() {
		String strMessage = '';
		Utility.addMessage(strMessage);
		Utility.addError(strMessage);
		Utility.addWarning(strMessage);
		Utility.addFatal(strMessage);
		Utility.addConfirm(strMessage);
	}*/
}