({
	retrieveAccounts: function(component) {
		var action = component.get("c.getLimitedAccounts");
		var componentLimiter = component.get("v.limiter");
		action.setParams({
			limiter : componentLimiter
		});
		action.setCallback(this, function(response) {
			var state = response.getState();

			if(state === "SUCCESS") {
				var data = response.getReturnValue();
				console.log("accounts", data);
				component.set("v.accounts", data);
			} else {
				// Handle Error
			}
		});
		$A.enqueueAction(action);
	}
})