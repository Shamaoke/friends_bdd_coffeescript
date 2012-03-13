module.exports = ->
  @World = require('../support/env')['World']

  @When /^I create a friend with a name "([^"]*)"/, (name, callback) ->
    @friend = new @Friend(name)
    callback()

  @Then /^the friend should have a name "([^"]*)"/, (name, callback) ->
    @friend.get_name().should.eql name
    callback()
