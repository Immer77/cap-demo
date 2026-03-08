using {
    cuid,
    managed
} from '@sap/cds/common';

namespace dk.immersenit.employees;

/**
* Customers entitled to create support Incidents.
*/
entity Employees : cuid, managed {
    firstName : String(80) @mandatory;
    lastName  : String(80) @mandatory;
    name      : String = trim(firstName || ' ' || lastName);
    @mandatory 
    @assert.format : '.+@.+'
    @assert.format.message: 'Please enter a valid email!'
    email     : String(255) ;
}
