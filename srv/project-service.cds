using { tddb } from '../db/schema';


service ProjectService {
     entity Teachers as projection on tddb.Teachers;
     entity Departments as projection on tddb.Departments;

     function getTopProducts() returns String;
}