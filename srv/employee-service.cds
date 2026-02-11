using { dk.immersenit.employees as db } from '../db/schema';

@path
service EmployeeService {
//    entity Employees @(restrict : [
//        {
//            grant: ['READ'],
//            to: ['viewer']
//        }, 
//        {
//            grant: ['*'],
//            to : ['admin']
//        }
//    ]) as projection on db.Employees;
//

    entity Employees as projection on db.Employees;

    entity CreatedEmployeeResponse {
       message : String(30);
       statusCode: Int16;
    }
    
    //@require : 'admin'
    action createEmployee(firstName: String, lastName: String, email: String) returns CreatedEmployeeResponse;
}