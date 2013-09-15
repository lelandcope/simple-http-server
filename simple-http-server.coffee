## Simple Http Server
union     	= require 'union'
logfile     = require 'logfile-lc'
ecstatic    = require 'ecstatic'

SimpleHTTPServer = exports.SimpleHTTPServer = (options)->
	self = @

	options = options or {}
	self.root = options.root or './'
	self.cache = options.cache or 60 # In Seconds
	self.ext = options.ext or 'html'
	self.before = options.before or []
	self.verbose = options.verbose or true

	if self.verbose
		self.before.unshift logfile(self.root)

	self.server = union.createServer ({
		before: self.before.concat([
			ecstatic({
				root: self.root
				cache: self.cache
				defaultExt: self.ext
			})
		])
	})

SimpleHTTPServer.prototype.listen = ()->
	@server.listen.apply @server, arguments

exports.createServer = (options)->
	new SimpleHTTPServer options