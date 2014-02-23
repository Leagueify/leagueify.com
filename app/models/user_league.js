module.exports = function(sequelize, DataTypes) {
  var UserLeague = sequelize.define('user_league', {
    user_id: DataTypes.STRING,
    league_name: DataTypes.STRING
  }, {
    classMethods: {
      associate: function(models) {
        UserLeague.hasOne(models.league, { name: 'league_name' });
      }
    }
  });

  return UserLeague;
};