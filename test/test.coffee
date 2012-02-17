inCommon = require('..')

describe 'Common path', ->
  it 'should return the whole path if only one path is given', ->
    inCommon('/a/b/c').should.equal '/a/b/c'
  it 'should return the path, if two paths are the same', ->
    inCommon('/a/b/c','/a/b/c').should.equal '/a/b/c'
  it 'should return the common path', ->
    inCommon('/a/b/c','/a/b/x').should.equal '/a/b'
  it 'should return the common path', ->
    inCommon('/a/b/c','/a/y/x').should.equal '/a'
  it 'should return the common path', ->
    inCommon('/a/b/c','/a/y').should.equal '/a'
  it 'should return the common path', ->
    inCommon('/a/b/c','/a').should.equal '/a'
  it 'should return the root path if the paths are disjoint', ->
    inCommon('/a/b/c','/d/e').should.equal '/'
  it 'should work with multiple paths', ->
    inCommon('/a/b/c/d','/a/b/c/e','/a/b/d/e','/a/b/f/e','/a/c/c/e').should.equal '/a'
