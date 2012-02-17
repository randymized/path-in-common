trim= (arr) ->
  name for name in arr when name.length > 0

# Given any number of filesystem paths, this function determines which path is
# common to all.  It is assumed that all paths are fully-qualified and normalized.
#
# This function assumes POSIX paths.  If run on Windows, for example, a wrapper
# function would need to lowercase the paths to assure that the comparison is
# not case-sensitive, replace backslashes with forward slashes and replace
# drive letters with a name that starts with a leading slash.
module.exports = inCommon= ()->
  if arguments.length == 1
    return arguments[0]
  common= null
  reduce= (path) ->
    parts= trim(path.split('/'))
    if common
      length = Math.min(parts.length, common.length)
      i= 0
      i++ while i < length and parts[i] == common[i]
      common= common[0...i]
    else
      common= parts
  reduce path for path in arguments
  '/'+common.join('/')