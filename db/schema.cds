using { cuid, managed } from '@sap/cds/common';
namespace dk.immersenit.employees; 

/**
* Customers entitled to create support Incidents.
*/
entity Employees : cuid, managed { 
firstName     : String(80);
lastName      : String(80);
name          : String = trim(firstName ||' '|| lastName);
email         : String(255);
}