/**
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* This is part of the framework implementation for Apex Triggers.
*
* Developed by Cognizant on behalf of Lockton UK. This trigger is an example of how to use the 
* new trigger framework, It is intended to be the one and only trigger for Account object.
* If you are modifying it, other than to register new triggers in the arguments, you need to think
* again.
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @author         Daniel Hodgkins	<daniel.hodgkins@cognizant.com>
* @modifiedBy     Daniel Hodgkins	<daniel.hodgkins@cognizant.com>
* @maintainedBy   Shatrughna Salunke, Varun Saxena, Lakshmana Rao
* @version        0.1
* @created        2021-02-01
* @modified       2021-02-01
* @systemLayer    Triggers
* @see            classes/TriggerHandler.cls for concrete implementation
* @see			  triggers/AccountTrigger.trigger for invocation example
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @changes
* v0.1            daniel.hodgkins@cognizant.com
* 2021-02-01      Implemented.
*
* v0.? 
* yyyy-MM-dd	  ??
* ─────────────────────────────────────────────────────────────────────────────────────────────────┘
*/
trigger AccountTrigger on Account (before insert, after insert) {
	TriggerHandler.run(AccountTriggerHandler.class);
}