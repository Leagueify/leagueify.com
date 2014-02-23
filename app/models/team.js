module.exports = function(sequelize, DataTypes) {
  var Team = sequelize.define('Team', {
    username: DataTypes.STRING
  }, {
    classMethods: {
      // associate: function(models) {
      //   Team.hasMany(models.Task);
      // }
    }
  });
 
  return Team;
};
