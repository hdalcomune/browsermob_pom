# README #

This is a sample framework using Browsermob proxy to test a fallback API on recommendation service.

### USAGE ###

You can start it using:
```
bundle exec cucumber features/ProductPageRecommendations.feature URL=http://www.qa13codemacys.fds.com PROXY=true PROXY_PATH=/opt/browsermob/bin/browsermob-proxy BROWSER=firefox
```

The following execution variables can be used:
* PROXY - Set as true if you're using browsermob proxy to test
* PROXY_PATH - Inform the path of browsermob binary file in your OS
* BROWSER(Optional) - Use firefox, chrome or ie. Firefox is the default option