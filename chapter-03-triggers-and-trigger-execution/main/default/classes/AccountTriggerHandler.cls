/**
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* This is part of the framework implementation for Apex Triggers.
*
* Developed by Cognizant on behalf of Lockton UK. This class is intended to be extended by
* additional apex classes to implement various standard/custom object trigger handlers.
* It is the intention 
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
public class AccountTriggerHandler extends TriggerHandler {

	private Map<Id, Account> oldMap() {
		return  (Map<Id, Account>)Trigger.oldMap;
	}

	private Map<Id, Account> newMap() {
		return  (Map<Id, Account>)Trigger.newMap;
	}

	private List<Account> oldList() {
		return  (List<Account>)Trigger.oldMap.values();
	}

	private List<Account> newList() {
		return  (List<Account>)Trigger.newMap.values();
	}

	public override void handleBeforeInsert() {
		// implementation...
		
		System.debug('got here into before insert');
	}
	public override void handleAfterInsert() {
		// implementation...
		System.debug('got here into after insert');
		System.debug(oldMap());
	}
	public override void handleBeforeUpdate() {
		// implementation...
	}
	public override void handleAfterUpdate() {
		// implementation...
	}
	public override void handleBeforeDelete() {
		// implementation...
	}
	public override void handleAfterDelete() {
		// implementation...
	}
	public override void handleAfterUndelete() {
		// implementation...
	}
}