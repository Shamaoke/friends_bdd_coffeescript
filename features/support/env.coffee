require 'should'

@World = (callback) ->
  @Friend = require('../../src/friend')['Friend']
  callback @
