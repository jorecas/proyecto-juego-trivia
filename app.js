var express 		= 	require("express"),
	app				= 	express(),
	cons 			=	require("consolidate"),
	puerto 			= 	process.env.PORT || 3000,
	db   			= 	require('./modulos/database'),
	rutas			=	require('./modulos/rutas'),
	bodyParser  	=   require('body-parser');

	db.conectaDatabase();
	app.engine("html", cons.swig); 
	app.set("view engine", "html");
	app.set("views", __dirname + "/vistas");
	app.use(express.static('public'));
	app.use(bodyParser.json());
	app.use(bodyParser.urlencoded({extended: true}));
	app.get("/", function(req, res)
	{
		res.render("index", {
			titulo 	:  	"Proyecto final"
		});
	});
	app.get('/getQuestions', rutas.getQuestions);
	app.post('/isValid', rutas.isValid);
	app.get("*", rutas.notFound404);
	var server = app.listen(puerto, function(err) {
	   if(err) throw err;
	   console.log('Servidor corriendo en @ http://localhost:' + server.address().port);
	});
