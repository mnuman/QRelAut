xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://xmlns.qualogy.com/greeting/xsd";
(:: import schema at "../xsd/GreetingService.xsd" ::)

declare variable $pn as element() (:: schema-element(ns1:PersonName) ::) external;

declare function local:func($pn as element() (:: schema-element(ns1:PersonName) ::)) as element() (:: schema-element(ns1:Greeting) ::) {
    <ns1:Greeting>{fn:concat($pn/ns1:FirstName, ' ', $pn/ns1:LastName)}</ns1:Greeting>
};

local:func($pn)
