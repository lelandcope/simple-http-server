#!/usr/bin/env coffee

SimpleHTTPServer    = require './simple-http-server'
argv                = require('optimist').default('v', true).default('c', 3600).argv
colors				= require 'colors'

port    = argv._[0]
verbose = argv.v
cache   = argv.c



server = SimpleHTTPServer.createServer({
	port: port
	verbose: verbose
	cache: cache
})

server.listen port

console.log 'Simple HTTP Server Started on Port %d'.green, port