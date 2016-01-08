compile = require('wisp/compiler').compile

module.exports = class WispCompiler
  brunchPlugin: yes
  type: 'javascript'
  extension: 'wisp'

  constructor: (@config) ->
    return

  compile: (data, path, callback) ->
    try
      res = compile(data, {'source-uri': path})
      result =
        data: res['code']
    catch err
      error = err
    finally
      callback error, result
