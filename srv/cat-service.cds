using my.bookshop as my from '../db/data-model';

service CatalogService {
     entity Books as projection on my.Books;
     entity Employee as projection on my.Employee;
     //entity Org as projection on my.Org excluding{createdAt,createdBy};

}
