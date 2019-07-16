// https://docs.mongodb.com/manual/tutorial/write-scripts-for-the-mongo-shell/
// var conn = new Mongo();
// var db = conn.getDB("testdb");
db.testdb.insert({
	"test": true,
	"date": new Date()
});
