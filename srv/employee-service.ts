import cds from '@sap/cds'
import { CreateEmployee } from './interfaces';
import { createEmployee } from '#cds-models/EmployeeService';
export = (srv: cds.Service) => {
    const { Employees } = srv.entities;

    srv.before('CREATE', 'Employees', async (req) => {
        const data = req.data as CreateEmployee, {firstName, lastName, email} = data;
        if (!data.email.includes("@")) {
            return req.error(400, "Not a valid email")
        }
    })


    srv.on('CREATE', 'Employees')
}