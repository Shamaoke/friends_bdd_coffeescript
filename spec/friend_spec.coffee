describe 'Friend', ->
  describe 'get_name', ->
    it 'returns a friend\'s name', ->
      Friend = require('../src/friend')['Friend']
      friend = new Friend('Chandler')
      friend.get_name().should.eql 'Chandler'
