/**
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* This is part of the framework implementation for Apex Triggers.
*
* Developed by Cognizant on behalf of Lockton UK. This class intended to allow a developer to
* control suppression (bypass) of a specified trigger, and set the maximum execution count so as
* to prevent updates to other records causing triggers to run too many times.
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
public class TriggerExecutionMediator {
	
    private static TriggerExecutionMediator instance;

    private Set<String> bypass = new Set<String>();
	private Map<String, Integer> maxCounts = new Map<String, Integer>();
	private Map<String, Integer> currentCounts = new Map<String, Integer>();
    
    public static TriggerExecutionMediator getInstance() {
        if(instance == null) {
            instance = new TriggerExecutionMediator();
        }
        return instance;
    }
    
    public void addBypass(String handlerName) {
		bypass.add(handlerName);
	}

	public void clearBypass(String handlerName) {
		bypass.remove(handlerName);
	}

	public Boolean shouldBypass(String handlerName) {
		return bypass.contains(handlerName);
	}

	public void setMaxCount(String handlerName, Integer max) {
		maxCounts.put(handlerName, max);
		currentCounts.put(handlerName, 0);
	}

	public Boolean shouldExecute(String handlerName) {
		//return true if no max set
		if(!maxCounts.containsKey(handlerName)) {
			return true;
		}
	
		//if max not yet reached, increment count and return true
		if(currentCounts.get(handlerName) != maxCounts.get(handlerName)) {
			currentCounts.put(handlerName, currentCounts.get(handlerName) + 1);
			return true;
		}
		
		//otherwise return false
		return false;
	}
    
}