# Haste Client

Haste-client is a simple client for uploading data to `Haste` server.  All you need to do is to pipe data in STDIN:

`cat file | HASTE_SERVER_TOKEN=mytoken haste`

And once the output makes it to the server, it will print the `Haste` share page URL to STDOUT.

This can be combined with `pbcopy`, like:

* mac osx: `cat file | haste | pbcopy`
* linux: `cat file | haste | xsel`

after which the contents of `file` will be accessible at a URL which has been copied to your pasteboard.

## Run on replit
[![Run on Replit](https://replit.com/badge/github/tucommenceapousser/hasteclient)](https://replit.com/github/tucommenceapousser/hasteclient)

```
gem build haste.gemspec
gem install
```

## Installation for use with my server

``` bash
git clone https://github.com/tucommenceapousser/hasteclient
gem build haste.gemspec
gem install haste
haste file.txt
```

## PS
ive modded this client for obtain url and raw url directly without use an option

## Configuration

Most of the configuration is controlled by env variables. Here is the all environment variables that you can use.

```
HASTE_SERVER: Haste server domain url
HASTE_SERVER_TOKEN: Github authentication token
HASTE_SHARE_SERVER: Haste share server domain url
HASTE_USER: Basic authentication user name
HASTE_PASS: Basic authentication user pass
HASTE_SSL_CERTS: SSL certs path
```

To add these environment variables, you should simply add them to your ~.bash_profile:

```bash
export VARIABLE="value"
```

### Authentication

If you are using default `HASTE_SERVER`, you need to have an GitHub authentication token.
You can get the information about authentication and how to generate token [here](https://www.toptal.com/developers/hastebin/documentation)

After you have generated your token, you should add it to your ~.bash_profile:

```bash
export HASTE_SERVER_TOKEN="mytoken"
```

or you can add token to your command:

```bash
cat file | HASTE_SERVER_TOKEN=mytoken haste`
```

If your `Haste` installation requires http authentication, add the following to your ~.bash_profile:

```bash
export HASTE_USER="myusername"
export HASTE_PASS="mypassword"
```

if you are using SSL, you will need to supply your certs path

```bash
export HASTE_SSL_CERTS="/System/Library/OpenSSL/certs"
```

## Usage

If you supply a valid file path as an argument to the client, it will be uploaded:

```bash
# equivalent
cat file | haste
haste file
```

### Different Haste server

By default, `Haste` share page will point at `https://hastebin.com`. 
If you have haste-server configured to serve bins on a separate domain, you also need to set ENV['HASTE_SHARE_SERVER'] value to that domain.

To set the value of share server, you can add the following to your ~.bash_profile:

```bash
export HASTE_SHARE_SERVER="myshareserver"
```

### Different Haste server

By default, haste server will point at `https://hastebin.com`. 
You can change this by setting the value of `ENV['HASTE_SERVER']` to the URL of your `Haste` server.  

To set the value of server, you can add the following to your ~.bash_profile:

```bash
export HASTE_SERVER="myserver"
```

### Use with alias

You can also use `alias` to make easy shortcuts if you commonly use a few hastes intermingled with each other. 
To do that, you'd put something like this into ~.bash_profile:

``` bash
alias work_haste="HASTE_SERVER=https://something.com HASTE_SERVER_TOKEN=mytoken haste"
```

or

``` bash
alias work_haste="HASTE_SERVER_TOKEN=mytoken haste"
```

After which you can use `work_haste` to send hastes to that server or with different tokens instead.


### Use as a library

You can also use `Haste` as a library to upload hastes:

``` ruby
require 'haste'
uploader = Haste::Uploader.new
uploader.upload_raw 'this is my data' # key
uploader.upload_path '/tmp/whaaaa' # key
```

## Contributor License Agreement

Licensed under the [MIT](https://github.com/toptal/haste-client/blob/master/LICENSE.txt 'https://github.com/toptal/haste-client/blob/main/LICENSE.txt') license.
