using { books as bo} from '../db/schema';

@path : 'service/books'
service BooksService {
    entity Books as projection on bo.Books;
    
}