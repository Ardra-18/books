const cds = require('@sap/cds');
module.exports = cds.service.impl(async function () {

    const { Books } = this.entities;
    this.after('READ', Books, (data) => {
        const books = Array.isArray(data) ? data : [data]

        books.forEach((books) => {
            if (books.stock >= 15) {
                books.criticality = 1;
            } else if(books.stock<15){
                books.criticality = 2;
            }
            else{
                books.criticality = 3;
            }
            
        });
    })
});