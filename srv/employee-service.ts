import cds from "@sap/cds";


export default class EmployeeService extends cds.ApplicationService {
    async init() {
       // Messsaging connection abstract from the actual messaging service.
       // Local-messaging uses node process
       const messaging = await cds.connect.to("messaging")
       
       this.after('CREATE', 'Employees', async (data) => {
        await messaging.emit('employee/created', {
            firstName: data.firstName,
            lastName: data.lastName,
            email: data.email
        })
       })

       messaging.on('employee/created', async (msg) => {
            console.log('Received employee/created', msg.data)
       })

       return super.init()
    }
}