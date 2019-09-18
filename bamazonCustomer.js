var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'rubani2018',
    database: 'bamazon_db',
    port: 3306
});

connection.connect();


function allItems() {
    connection.query('SELECT * FROM products', function(error,results,fields){
        if (error) throw error;
        console.log(results);

        productIdYouWant();
    });
}

function findItemBasedOnId(cid) {
    connection.query('SELECT * FROM products WHERE id = ?',[cid], function(error, results, fields){
        if (error) throw error;
        console.log(results);
    });
}

function insertProductId(product_id) {
    connection.query('INSERT INTO products (product_id) VALUES (?)', [product_id], function(error, results, fields) {
        if (error) throw error;
        console.log(results);
    })
}

function productIdYouWant(){
    inquirer
    .prompt([{
        type: "list",
        message: "what is the ID of the product you would like to buy?",
        name: "product_id"
    }
])
.then(function(resp) {

})



connection.end();





