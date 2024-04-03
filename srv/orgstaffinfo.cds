using staffinfo as org from '../db/orginfo';

service staffsrv {
    entity staff as projection on org.Staff;
    entity address as projection on org.Address; 
    entity salary as projection on org.Salary;
}