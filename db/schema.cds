namespace books;
using { Currency, managed, cuid } from '@sap/cds/common';

entity Books : managed {
  
    key ID : Integer;
    
    @title : 'Book Title'
    title : String;

    @title : 'Description'
    descr : String;

    @title: 'Book Stock'
    stock : Integer;

    @title: 'Book Price'
    price : Decimal(6,2);

    @title : 'Currency'
    currency : Currency;

    authors : Association to one Authors;
}
entity Authors : managed{

    key ID : Integer;

    @title : 'Author Name'
     name : String;

}