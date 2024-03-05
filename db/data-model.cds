namespace my.bookshop;

using
{
    managed,
    cuid
}
from '@sap/cds/common';

entity Books
{
    key ID : Integer;
    title : String;
    stock : Integer;
    employee : Association to one Employee;
}

entity Employee
{
    key Eid : Integer;
    Ename : String(100);
    Elocation : String(100);
    Eband : String(100);
    books : Composition of many Books on books.employee = $self;
}
