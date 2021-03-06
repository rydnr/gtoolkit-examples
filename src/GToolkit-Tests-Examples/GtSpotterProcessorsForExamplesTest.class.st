Class {
	#name : #GtSpotterProcessorsForExamplesTest,
	#superclass : #Object,
	#category : #'GToolkit-Tests-Examples-SUnit'
}

{ #category : #deprecation }
GtSpotterProcessorsForExamplesTest class >> isDeprecated [
	^true
]

{ #category : #running }
GtSpotterProcessorsForExamplesTest >> setUp [
	super setUp.
]

{ #category : #running }
GtSpotterProcessorsForExamplesTest >> tearDown [
	super tearDown.
]

{ #category : #tests }
GtSpotterProcessorsForExamplesTest >> testEachProcessor [
	| examples |
	(examples := Smalltalk gtExamplesContained) 
		do: [ :exampleToTest |
			exampleToTest ignoreTest ifFalse: [ 
				self 
					shouldnt: [
						| step |
						(step := GTSpotterStep new)
							spotter: (GTSpotter new
								exceptionHandler: GTSpotterDebuggingExceptionHandler new; " we want to know whether one of the processors is raising an exception "
								yourself);
							origin: exampleToTest " do don't use #result here anymore, because it is not our responsibility to check whether an example runs sucessfully or not ";
							processContext: (step newContextForQuery: 'a') ] 
					raise: Error ] ]
		displayingProgress: 'Running ', examples size asString, ' Examples for GTSpotter-Processors'
]
