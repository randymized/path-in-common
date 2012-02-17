## Information

<table>
<tr> 
<td>Package</td><td>file-common-dirs</td>
</tr>
<tr>
<td>Description</td>
<td>Finds the path commmon to all given paths</td>
</tr>
</table>

## Usage

```coffee-script
inCommon = require('..')
result= inCommon('/a/b/c/d','/a/b/c/e','/a/b/d/e','/a/b/f/e','/a/c/c/e')
#(result equals '/a')
```
Given any number of filesystem paths, this function determines which path is
common to all.  It is assumed that all paths are fully-qualified and normalized.

This function assumes POSIX paths.  If run on Windows, for example, a wrapper
function would need to lowercase the paths to assure that the comparison is
not case-sensitive, replace backslashes with forward slashes and replace
drive letters with a name that starts with a leading slash.  It would then
have to do a similar reverse conversion (or slice off the start of one of the
original paths to arrive at a comparable result).

## LICENSE

(MIT License)

Copyright (c) 2012 Randy McLaughlin <8b629a9884@snkmail.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
