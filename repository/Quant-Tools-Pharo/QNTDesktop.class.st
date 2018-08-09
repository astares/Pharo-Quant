"
Desktop
"
Class {
	#name : #QNTDesktop,
	#superclass : #Object,
	#category : 'Quant-Tools-Pharo'
}

{ #category : #'private - accessing' }
QNTDesktop class >> desktopForm [

	^ZnEasy 
		getJpeg: self imageURL 
]

{ #category : #'private - accessing' }
QNTDesktop class >> imageURL [

	^'https://images.unsplash.com/photo-1463096351051-3cf0a64d4079?ixlib=rb-0.3.5&q=100&fm=jpg&crop=entropy&cs=tinysrgb&dl=khara-woods-91772.jpg&s=86ec783bb18134c8c78fee2ed74df874'
]

{ #category : #'private - initialization' }
QNTDesktop class >> initDesktop [

	PharoLightTheme beCurrent.	
	Display fullscreen: true.
	World color: Color white.
	 
]

{ #category : #'private - initialization' }
QNTDesktop class >> initDesktopPicture [

	World backgroundImage: QNTDesktop desktopForm layout: #scaled
]

{ #category : #'private - initialization' }
QNTDesktop class >> initWelcome [

	QNTQuantWelcomePage open
]

{ #category : #initialization }
QNTDesktop class >> initialize [
	
	self 
		initDesktop;
		initDesktopPicture;
		initWelcome
]
