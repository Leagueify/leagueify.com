
/**
 * Module dependencies.
 */

var express = require('express');
var routes = require('./routes');
var user = require('./routes/user');
var leagues = require('./routes/league');
var http = require('http');
var path = require('path');
var nunjucks = require('nunjucks');
var db = require('./models');

var app = express();
var env = new nunjucks.Environment(new nunjucks.FileSystemLoader(path.join(__dirname, 'views')));
env.express(app);

// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

app.get('/', routes.index);
app.get('/about', routes.about);
app.get('/users', user.list);
app.get('/leagues', leagues.list);

db.sequelize
	.sync()
	.complete(function(err) {
		if (err) {
			throw err;
		}
		else {
			http.createServer(app).listen(app.get('port'), function(){
				console.log('Express server listening on port ' + app.get('port'));
			});
		}
	});
