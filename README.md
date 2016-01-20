# README #

This is a sample framework using Browsermob proxy to test a fallback API on recommendation service.

### USAGE ###

You can start it using:
```
bundle exec cucumber features/ProductPageRecommendations.feature URL=http://url.com PROXY=true PROXY_PATH=/opt/browsermob/bin/browsermob-proxy BROWSER=firefox
```

The following execution variables can be used:
1. PROXY - Set as true if you're using browsermob proxy to test
2. PROXY_PATH - Inform the path of browsermob binary file in your OS
3. BROWSER(Optional) - Use firefox, chrome or ie. Firefox is the default option

### Browsermob installation ###
Browsermob is on this, just unzip it somewhere in your system. On mac it can be also installed from 'brew' app manager.