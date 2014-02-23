module.exports = function(sequelize, DataTypes) {
  var UserLeague = sequelize.define('user_league', {}, {
    classMethods: {
      associate: function(models) {
        UserLeague.hasOne(models.league, { name: 'league_name' });
      }
    }
  });

  return UserLeague;
};