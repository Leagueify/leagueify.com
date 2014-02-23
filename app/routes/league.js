var db = require('../models');

exports.list = exports.list = function(req, res){
	db.user.find({ user_id: 'zo0o0ot' })
		.complete(function(err, user) {
			if (err) {
				return console.error(err);
			}

			res.render('leagues/index.html', { user: user });
		});
};