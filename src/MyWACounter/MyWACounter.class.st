Class {
	#name : 'MyWACounter',
	#superclass : 'WAComponent',
	#instVars : [
		'count'
	],
	#category : 'MyWACounter',
	#package : 'MyWACounter'
}

{ #category : 'accessing' }
MyWACounter >> decrement [
	count := count - 1
]

{ #category : 'accessing' }
MyWACounter >> increment [
	count := count + 1
]

{ #category : 'initialization' }
MyWACounter >> initialize [
	super initialize.
	count := 0
]

{ #category : 'rendering' }
MyWACounter >> renderContentOn: html [

	html form: [
		html textInput
			class: 'edit';
			value: count.
		html submitButton
			text: 'Count';
			callback: [ self increment ] ]
]
