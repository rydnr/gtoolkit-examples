"
I only add new examples methods on the instance side without overriding any existing ones.
"
Class {
	#name : #GtDummyExamplesWithInheritanceSubclassB,
	#superclass : #GtDummyExamplesWithInheritanceRoot,
	#category : #'GToolkit-Examples-Dummies-Data'
}

{ #category : #examples }
GtDummyExamplesWithInheritanceSubclassB >> exampleF [
	<gtExample>
	^ 'ff'
]

{ #category : #examples }
GtDummyExamplesWithInheritanceSubclassB >> exampleG [
	<gtExample>
	^ 'gg'
]
