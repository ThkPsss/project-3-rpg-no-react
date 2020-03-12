var connection = require("./connection.js");

var orm = {
    insert: function() {
        var queryString = "INSERT INTO ?? (??) VALUES (?)"
        connection.query(queryString, [tableInput, columnName, email], function(err, res){
            if (err){
                throw err
            }
            cb(res)
        })
    }
}
module.exports = orm;
