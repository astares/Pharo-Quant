baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.

			"Projects"
			spec project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: #'stable';
					repository: 'http://mc.stfx.eu/Neo/'
			].
			spec
				package: #'Quant-Core-Currencies';
				package: #'Quant-Core-Forex' 
					with: [ spec requires: #(#'Quant-Core-Currencies') ];
				package: #'Quant-Core-Trading' 
					with: [ spec requires: #(#'Quant-Core-Forex') ];				

				"DataImport"
				package: #'Quant-DataImport-Trading-NASDAQ-Import'
					with: [ spec requires: #(#'Quant-Core-Trading' 'NeoCSV') ];

				"Tests"					
				package: #'Quant-Tests-Core-Currencies'
					with: [ spec requires: #(#'Quant-Core-Currencies') ];
				package: #'Quant-Tests-Core-Forex' 
					with: [ spec requires: #(#'Quant-Core-Forex') ];
				package: #'Quant-Tests-Core-Trading' 
					with: [ spec requires: #(#'Quant-Core-Trading') ];
				package: #'Quant-Help-Tools';	
				package: #'Quant-Tools-Pharo'
					with: [ spec requires: #(#'Quant-Core-Trading' 'Quant-DataImport-Trading-NASDAQ-Import' 'Quant-Help-Tools') ].
			spec
				group: 'Core' with: #(#'Quant-Core-Currencies' #'Quant-Core-Forex' 'Quant-Core-Trading');
				group: 'DataImport' with: #(#'Quant-DataImport-Trading-NASDAQ-Import');
				group: 'Tests' with: #(#'Quant-Tests-Core-Currencies' #'Quant-Tests-Core-Forex' 'Quant-Tests-Core-Trading');
				group: 'Help' with: #(#'Quant-Help-Tools');
				group: 'Tools' with: #(#'Quant-Tools-Pharo');
				group: 'all' with: #('Core' 'Tests' 'DataImport' 'Tools');
				group: 'default' with: #('all') ]