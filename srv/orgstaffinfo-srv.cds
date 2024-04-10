using staffinfo as org from '../db/orginfo';

service staffsrv {
    
    entity Staff      as projection on org.Staff;
    entity address    as projection on org.Address;
    entity salary     as projection on org.Salary;
    entity department as projection on org.Department;
}
