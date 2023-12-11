using { books as bo} from '../db/schema';

service BooksService {
  entity Books @(restrict: [
        {
            grant: [
                'READ',
                'POST',
                'PUT',
                'PATCH'
            ],
            to   : 'Admin'
        },
        {
            grant: ['READ'],
            to   : 'Viewer'
        }
    ]) as projection on bo.Books;
  entity Authors@(restrict: [
        {
            grant: [
                'READ',
                'POST',
                'PUT',
                'PATCH'
            ],
            to   : 'Admin'
        },
        {
            grant: ['READ'],
            to   : 'Viewer'
        }
    ]) as projection on bo.Authors;
}
