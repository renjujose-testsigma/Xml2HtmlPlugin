using namespace System;
using namespace System.IO;
using namespace System.Xml;
using namespace System.Xml.Xsl;

if ($args.count -lt 3) {
    Write-Error -Message "Required input files not found." -Category InvalidArgument
    Write-Error "For Example: ./sample.ps1 ./sample.xml ./sample.xslt ./sample.html"
    if (!$args[0]) {
        Write-Error "Please pass input XML file path as first input!";
    }
    if (!$args[1]) {
        Write-Error "Please pass XSLT file path as second input";
    }
    if (!$args[2]) {
        Write-Error "Please pass output HTML file path as third input";
    }
    Exit
}
elseif ($args.count -eq 3) {
    $xmlFile=$args[0];
    $xsltFile=$args[1];
    $htmlFile=$args[2];
    #(Test-Path $args[0] -PathType leaf) && (Test-Path $args[1] -PathType leaf) && (Test-Path $args[2] -PathType leaf)
    if((Test-Path $args[0] -PathType leaf) -And (Test-Path $args[1] -PathType leaf)){
        Write-Host "All input files loaded successfully. Output HTML file will be created at the end.";
    }
    else{
        Write-Error "Please check that all the input files exist at the given path!"
        Exit
    }
}

$transform = New-Object System.Xml.Xsl.XslCompiledTransform

Write-Host "Loading '$xsltFile' stylesheet..."
$xsltreader = [System.Xml.XmlReader]::Create($xsltFile);
try{
    $transform.Load($xsltreader)
}
catch{
    Write-Error "Failed to compile Stylesheet. Please check the contents."
    Exit
}

Write-Host "Transforming '$xmlFile' to HTML Format..."
$transform.Transform($xmlFile,$htmlFile);
Write-Host "Html saved to '$htmlFile'" -ForegroundColor Green
Write-Host -ForegroundColor White