describe 'Friend', ->
  describe 'get_name', ->
    it 'returns a friend\'s name', ->
      { Friend } = require '../src/friend'
      (new Friend 'Chandler').get_name().should.eql 'Chandler'
