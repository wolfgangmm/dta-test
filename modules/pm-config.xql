
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-dta-web="http://www.tei-c.org/pm/models/dta/web/module" at "../transform/dta-web-module.xql";
import module namespace pm-dta-print="http://www.tei-c.org/pm/models/dta/fo/module" at "../transform/dta-print-module.xql";
import module namespace pm-dta-latex="http://www.tei-c.org/pm/models/dta/latex/module" at "../transform/dta-latex-module.xql";
import module namespace pm-dta-epub="http://www.tei-c.org/pm/models/dta/epub/module" at "../transform/dta-epub-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "dta.odd" return pm-dta-web:transform($xml, $parameters)
    default return pm-dta-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "dta.odd" return pm-dta-print:transform($xml, $parameters)
    default return pm-dta-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "dta.odd" return pm-dta-latex:transform($xml, $parameters)
    default return pm-dta-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "dta.odd" return pm-dta-epub:transform($xml, $parameters)
    default return pm-dta-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    