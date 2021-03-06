"
Baseline of Quant
"
Class {
	#name : #BaselineOfQuant,
	#superclass : #BaselineOf,
	#category : 'BaselineOfQuant'
}

{ #category : #baseline }
BaselineOfQuant >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.

			"Projects"
			spec project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV; versionString: #'stable'; repository: 'http://mc.stfx.eu/Neo/' ].
			spec project: 'WebBrowser' with: [
				spec
					className: #ConfigurationOfWebBrowser; versionString: #'stable'; repository: 'http://smalltalkhub.com/mc/TorstenBergmann/WebBrowser/main' ].	
			"Packages"
			spec
				package: #'Quant-Core-Currencies';
				package: #'Quant-Core-Forex' 
					with: [ spec requires: #(#'Quant-Core-Currencies') ];
				package: #'Quant-Core-Trading' 
					with: [ spec requires: #(#'Quant-Core-Forex') ];				

				"DataImport"
				package: #'Quant-DataImport-Trading'
					with: [ spec requires: #(#'Quant-Core-Trading' 'NeoCSV') ];

				"Tests"					
				package: #'Quant-Tests-Core-Currencies'
					with: [ spec requires: #(#'Quant-Core-Currencies') ];
				package: #'Quant-Tests-Core-Forex' 
					with: [ spec requires: #(#'Quant-Core-Forex') ];
				package: #'Quant-Tests-Core-Trading' 
					with: [ spec requires: #(#'Quant-Core-Trading') ];
				"Help"
				package: #'Quant-Help-Tools'
					with: [ spec requires: #(#'WebBrowser')];	
				"Tools"
				package: #'Quant-Tools-Core-Trading'
					with: [ spec requires: #(#'Quant-Core-Trading' #'Quant-DataImport-Trading') ];
				package: #'Quant-Tools-Pharo'
					with: [ spec requires: #(#'Quant-Core-Trading' #'Quant-Help-Tools' #'Quant-Tools-Core-Trading') ].
			"Groups"
			spec
				group: 'Core' with: #(#'Quant-Core-Currencies' #'Quant-Core-Forex' 'Quant-Core-Trading');
				group: 'DataImport' with: #(#'Quant-DataImport-Trading');
				group: 'Tests' with: #(#'Quant-Tests-Core-Currencies' #'Quant-Tests-Core-Forex' 'Quant-Tests-Core-Trading');
				group: 'Help' with: #(#'Quant-Help-Tools');
				group: 'Tools' with: #(#'Quant-Tools-Core-Trading' #'Quant-Tools-Pharo');
				group: 'all' with: #('Core' 'Tests' 'DataImport' 'Tools');
				group: 'default' with: #('all') ]
]
