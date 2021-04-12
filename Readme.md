# Xml2Html plugin
Transforming xml file to html using xslt stylesheet

## Requirments:
- Windows - .Net Core 2.0, Powershell 5+(tested on pwsh 7.1.3)
- Mac/Linux - Powershell(install using Homebrew)

## Usage:
### Windows
```powershell
./Xml2Html.ps1 ./sample.xml ./sample.xslt ./sample.html
```

### Mac/Linux
In *sh shells,
```sh
pwsh ./Xml2Html.ps1 ./sample.xml ./sample.xslt ./sample.html
```

In pwsh shell,
```powershell
./Xml2Html.ps1 ./sample.xml ./sample.xslt ./sample.html
```

## Alternatives
Also, if you prefer other non-proprietary solutions in Mac/Linux rather than Powershell
- you can use `xsltproc`(usually bundled in OS, if not, install using brew/apt-get)
```bash
xsltproc sample.xml sample.xslt > sample.html
```

All of the above will transform sample.xml to sample.html using sample.xslt stylesheet.