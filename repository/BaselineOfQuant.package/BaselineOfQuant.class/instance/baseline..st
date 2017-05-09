baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec 
			package: #'Quant-Core-Currencies';
			package: #'Quant-Core-Forex' with: [
				spec requires: #(#'Quant-Core-Currencies' ). ];
			package: #'Quant-Tests-Core-Currencies' with: [
				spec requires: #(#'Quant-Core-Currencies' ). ];
			package: #'Quant-Tests-Core-Forex' with: [
				spec requires: #(#'Quant-Core-Forex' ). ].
		spec 
			group: 'Core' with: #(#'Quant-Core-Currencies' #'Quant-Core-Forex' );
			group: 'Tests' with: #(#'Quant-Core-Forex' #'Quant-Tests-Core-Forex' );
			group: 'all' with: #('Core' 'Tests' );
			group: 'default' with: #('all' ). ].
