using {dk.immersenit.employees as db} from '../db/schema';

@path
service EmployeeService {
    entity Employees as projection on db.Employees;
}
