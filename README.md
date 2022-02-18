# phpenv xdebug plugin

This plugin will automatially enable Xdebug when you need it.

It works by adding `-dzend_extension=xdebug.so` to your `php` command when the `XDEBUG_MODE` environment variable is set to a non empty value.

## Install

```console
$ cd ~/.phpenv/plugins
$ git clone https://github.com/arnaud-lb/phpenv-xdebug.git

# Disable xdebug by default
$ sed -i 's/^zend_extension=.*xdebug/;&/' ~/.phpenv/versions/*/etc/conf.d/xdebug.ini
```

## Example

```console
# Xdebug is not loaded by default
$ php -m | grep Xdebug

# Xdebug is loaded when XDEBUG_MODE is non empty
$ XDEBUG_MODE=debug php -m | grep Xdebug
Xdebug
```
