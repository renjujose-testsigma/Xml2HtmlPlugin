# Xml2Html plugin
Transforming xml file to html using xslt stylesheet

## Requirments:
- Windows - .Net Core 2.0, Powershell 5+(tested on pwsh 7.1.3)
- Mac/Linux - Powershell(install using Homebrew)


## Usage:
1. Clone the Repo or download the zip - 
`git clone https://github.com/renjujose-testsigma/Xml2HtmlPlugin.git`
2. Navigate to the Repo directory - 
`cd Xml2HtmlPlugin`
3. Execute the below command

#### Windows
`./Xml2Html.ps1 <inputxml-filepath> <stylesheet-filepath> <outputhtml-filepath>`

Example:
```powershell
./Xml2Html.ps1 ./sample.xml ./sample.xslt ./sample.html
```

#### Mac/Linux
In *sh shells - `pwsh ./Xml2Html.ps1 <inputxmlfilepath> <stylesheetfilepath> <outputhtmlfilepath>`

Example:
```sh
pwsh ./Xml2Html.ps1 ./sample.xml ./sample.xslt ./sample.html
```

In pwsh shell - `./Xml2Html.ps1 <inputxmlfilepath> <stylesheetfilepath> <outputhtmlfilepath>`

Example:
```powershell
./Xml2Html.ps1 ./sample.xml ./sample.xslt ./sample.html
```

## Alternatives
Also, if you prefer other non-proprietary solutions in Mac/Linux rather than Powershell, 

you can use `xsltproc`(usually bundled in OS, if not, install using brew/apt-get)
```bash
xsltproc sample.xml sample.xslt > sample.html
```

All of the above will transform sample.xml to sample.html using sample.xslt stylesheet.
