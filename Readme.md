# Xml2Html plugin
Transforming xml file to html using xslt stylesheet

## Requirments:
Windows - dotnet core 2.0,powershell
Mac/Linux - xsltproc(bundled) or install using brew/apt-get

## Running sample:
### Windows
To run sample, simply execute ./sample.ps1 script
```powershell
 ./sample.ps1
```
###Mac/Linux
To run sample, simply execute
```bash
xsltproc sample.xml sample.xslt > sample.html
```

This will transform sample.xml to sample.html using sample.xslt stylesheet.
