FirstIddle = include "music/builders/allocators/firstIddle"
noteDictionary = include "music/converters/noteDictionary"
include "utils/arrayUtils"
module.exports =

#------------------------------------------------------------------------------------------
#Algorithm that reserves the first channel for the notes higher than the *max* note.
#For the other notes is the FirstIddle algorithm.
class HighChannel extends FirstIddle
	constructor: (@max) ->

	#allocate a melody for this note request.
	alloc: (melodies, request) =>
		if noteDictionary.positionOf(request.note) > noteDictionary.positionOf(@max)
			melodies.first()
		else super melodies.slice(1), request
#------------------------------------------------------------------------------------------