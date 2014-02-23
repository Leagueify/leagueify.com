module.exports = function(sequelize, DataTypes) {
  var User = sequelize.define('user', {
    user_id: DataTypes.STRING,
    taunt: DataTypes.STRING
  }, {
    classMethods: {
      associate: function(models) {
        User.hasMany(models.league, { through: models.user_league });
      }
    }
  });
 
  return User;
};