simple-http-server
==================

A Simple HTTP Server for NodeJS similar to Pythons SimpleHTTPServer

## Installiation

Installation via `npm`. If you don't have `npm` yet:

    curl https://npmjs.org/install.sh | sh

Once `npm` is installed:

**Global**:

    [sudo] npm install simple-http-server-lc -g
    
This will install simple-http-server-lc globaly so it can be used in any project
    
**Standard**:

    npm install simple-http-server-lc
    
## Usage

	simple-http-server [port] [options]

`[port]` defaults to `8080`

## Options

`-c` Allows you to set the cache time in seconds. For example `-c 3600` will set the cache-control max-age header to 1 hour.

`-h` Displays a list of all commands and arguments for simple-http-server

`-v` Allows you to set whether all requested files should be output to the console. Useful for tracking files that are coming up with 404 errors. Values can be `true` or `false`.
