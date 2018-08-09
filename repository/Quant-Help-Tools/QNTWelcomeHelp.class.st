"
Welcome help
"
Class {
	#name : #QNTWelcomeHelp,
	#superclass : #CustomHelp,
	#category : 'Quant-Help-Tools'
}

{ #category : #accessing }
QNTWelcomeHelp class >> bookName [
	^'Quant Welcome'
]

{ #category : #utilities }
QNTWelcomeHelp class >> open [
	<script>
	^ (HelpBrowser openOn: self) next
]

{ #category : #accessing }
QNTWelcomeHelp class >> pages [
	^ #(welcome)
]

{ #category : #pages }
QNTWelcomeHelp class >> welcome [
	^ HelpTopic 
		title: 'Welcome to Quant'
		contents: (self heading: 'Quant'), 
		
'Welcome to Quant, a sample platform for finance calculations and technical stock analysis.

For more information, please visit here: 

', (self url: 'https://github.com/astares/Pharo-Quant'),
(self subheading: 'Some market data'),
'Some initial browsable market data from

NASDQ: ', (self doItFrom: 'QNTStockMarketBrowser open. ')
]
