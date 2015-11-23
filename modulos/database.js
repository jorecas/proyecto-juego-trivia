"use strict";
var mysql = require('mysql'),
    conexion = 0;

exports.conectaDatabase = function()
{
    //Realizar la conexión a la base de datos Mysql...
    conexion = mysql.createConnection({
      host     	: 'localhost',
      user     	: 'root',
      password  : '',
      database  : 'juego_trivia'
    });
    conexion.connect();
};
exports.queryMysql = function(sql, callback)
{
	conexion.query(sql, function(err, rows, fields)
	{
		if (err) throw err;
		callback(err, rows);
	});
};
