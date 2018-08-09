"
Welcome page
"
Class {
	#name : #QNTQuantWelcomePage,
	#superclass : #Object,
	#category : 'Quant-Help-Tools'
}

{ #category : #opening }
QNTQuantWelcomePage class >> open [
	<script>
	| group welcome about window |

	welcome := QNTWelcomeHelp open.
				
	about := TextModel new
			text: Smalltalk systemInformationString withCRs;
			title: 'About Pharo-Quant';
			beForText;
			openWithSpec.

	group := GroupWindowMorph new.
	group addWindow: welcome window.
	group addWindow: about window.
	window := (group openInWindowLabeled: self title translated)
		extent: welcome window extent;
		yourself.
		
	group tabGroup selectedPageIndex: 1.

	^ window
]

{ #category : #accessing }
QNTQuantWelcomePage class >> title [
	^ 'Welcome to Pharo-Quant'
]
