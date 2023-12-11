namespace books;
using { Currency, managed, cuid } from '@sap/cds/common';

entity Books : managed,cuid{
    @title : 'Book Title'
    key title : String;

    @title : 'Description'
    descr : String;

    @title: 'Book Stock'
    stock : Integer;

    @title: 'Book Price'
    price : Decimal;

    @title : 'Currency'
    currency : Currency;

    authors : Association to one Authors;
}
entity Authors : managed,cuid{
    @title : 'Author Name'
    key name : String;

}