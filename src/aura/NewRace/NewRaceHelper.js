({
   loadOptions	: function(component) {
		 var types= [{class: "optionclass",label: "5K",value: "5K"},
         {class: "optionclass",label: "10K",value: "10K"},
         {class: "optionclass",label: "Half-Marathon",value: "Half-Marathon"}];
        
        component.find("type").set("v.options",types);
	}
})