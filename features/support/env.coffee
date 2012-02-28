require 'should'

@World = (callback) ->
  friend  = require '../../src/friend'
  @Friend = friend['Friend']
  callback(@)
