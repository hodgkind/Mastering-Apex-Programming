public class AccountTriggerHandler extends TriggerHandler {
	
	private Map<Id, Account> oldMap;
	private Map<Id, Account> newMap;
	private List<Account> oldList;
	private List<Account> newList;

	public override void setupReferences() {
		try { oldMap = (Map<Id, Account>)Trigger.oldMap; } catch (NullPointerException ex) {}
		try { newMap = (Map<Id, Account>)Trigger.newMap; } catch (NullPointerException ex) {}
		try { oldList = (List<Account>)oldMap.values(); } catch (NullPointerException ex) {}
		try { newList = (List<Account>)newMap.values(); } catch (NullPointerException ex) {}
	}
	
	public override void handleBeforeInsert() {
		// implementation...
		System.debug('got here into before insert');
	}
	public override void handleAfterInsert() {
		// implementation...
		System.debug('got here into after insert');
		System.debug(oldMap);
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