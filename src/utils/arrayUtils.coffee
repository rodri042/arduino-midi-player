_ = require "lodash"

[
	"at", "compact", "contains", "countBy", "difference"
	"find", "findIndex", "findLast", "findLastIndex", "first"
	"flatten", "forEachRight", "groupBy", "indexBy", "initial"
	"intersection", "invoke", "last", "lastIndexOf", "max"
	"min", "pluck", "pull", "range", "reduceRight"
	"reject", "remove", "rest", "sample", "shuffle"
	"size", "sortBy", "sortedIndex", "union", "uniq"
	"where", "without", "xor", "zip", "zipObject"
	"cloneDeep"
].forEach (functionName) ->
	Array::[functionName] = ->
		args = Array::slice.call arguments
		_[functionName].apply @, [@].concat args

Array::isEmpty = -> @length is 0

Array::sum = (mapper) ->
	@
		.map(mapper)
		.reduce(
			(sum, num) -> sum + num,
			0
		)