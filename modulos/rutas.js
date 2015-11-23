    db   		    = 	require('./database'),
    db.conectaDatabase();

//Crear un token único relacionado al ID de la tarea...

//trae preguntas
var getQuestions =  function(req, res)
{
	db.queryMysql("SELECT numpregunta, pregunta, opcion1, opcion2, opcion3, opcion4 FROM preguntas ORDER BY rand();", function(err, data){
		if (err) throw err;
		res.json(data);
	});
		
};
//valida
var isValid =  function(req, res)
{
	db.queryMysql("SELECT correcta FROM preguntas WHERE numpregunta= " + req.body.numPregunta , function(err, data){
	if (err) throw err;
	
	res.json({
					respuestaCorrecta : data[0].correcta,
					correcto	:       data[0].correcta == req.body.respuesta ? true : false
		});
	});

};

//Para cualquier url que no cumpla la condición...
var notFound404 = function(req, res)
{
	res.status(404).send("Página no encontrada :( en el momento");
};

//Crear o edita un usuario...

//Exportar las rutas...
module.exports.getQuestions = getQuestions;
module.exports.isValid = isValid;
module.exports.notFound404 = notFound404;
