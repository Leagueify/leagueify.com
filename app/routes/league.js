var db = require('../models');

exports.list = exports.list = function(req, res){
	db.user.find({ id: 1 })
		.complete(function(err, user) {
			if (err) {
				return console.error(err);
			}

			user.getLeagues().success(function(leagues) {
				res.render('leagues/index.html', { user: user.values, leagues: leagues });
			});

		});
};