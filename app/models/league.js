module.exports = function(sequelize, DataTypes) {
  var League = sequelize.define('league', {
    name: DataTypes.STRING,
    logo: DataTypes.STRING,
    motto: DataTypes.STRING
  }, {
    classMethods: {
      associate: function(models) {
        League.hasMany(models.user, { through: models.user_league });
      }
    }
  });

  return League;
};