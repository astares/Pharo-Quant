baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				package: #'Quant-Core-Currencies';
				package: #'Quant-Core-Forex' 
					with: [ spec requires: #(#'Quant-Core-Currencies') ];
				package: #'Quant-Core-Trading' 
					with: [ spec requires: #(#'Quant-Core-Forex') ];				
				package: #'Quant-Tests-Core-Currencies'
					with: [ spec requires: #(#'Quant-Core-Currencies') ];
				package: #'Quant-Tests-Core-Forex' 
					with: [ spec requires: #(#'Quant-Core-Forex') ];
				package: #'Quant-Tests-Core-Trading' 
					with: [ spec requires: #(#'Quant-Core-Trading') ];
				package: #'Quant-Tools-Pharo'
					with: [ spec requires: #(#'Quant-Core-Trading') ].
			spec
				group: 'Core' with: #(#'Quant-Core-Currencies' #'Quant-Core-Forex' 'Quant-Core-Trading');
				group: 'Tests' with: #(#'Quant-Tests-Core-Currencies' #'Quant-Tests-Core-Forex' 'Quant-Tests-Core-Trading');
				group: 'Tools' with: #(#'Quant-Tools-Pharo');
				group: 'all' with: #('Core' 'Tests' 'Tools');
				group: 'default' with: #('all') ]