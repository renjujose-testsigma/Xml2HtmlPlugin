# Xml2Html plugin
Transforming xml file to html using xslt stylesheet

## Requirments:
- Windows - .Net Core 2.0, Powershell 5+(tested on pwsh 7.1.3)
- Mac/Linux - xsltproc(usually bundled in OS). If not, install using brew/apt-get.

## Running sample:
### Windows
To run sample, simply execute
```powershell
 ./sample.ps1
```

### Mac/Linux
To run sample, simply execute
```bash
xsltproc sample.xml sample.xslt > sample.html
```

This will transform sample.xml to sample.html using sample.xslt stylesheet.
