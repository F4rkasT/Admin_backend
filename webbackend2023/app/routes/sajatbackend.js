const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  
  var connection
  function kapcsolat(){
    var mysql = require('mysql')

    connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'library'
    })
    
    connection.connect()
    
  }
  
  
  app.get('/iro', (req, res) => {
    kapcsolat()
    connection.query('SELECT * FROM iro_profil ORDER BY `iro_profil`.`iro_neve` ASC', (err, rows, fields) => {
      if (err) throw err
      res.send(rows)
    })
    connection.end()
  })
  
  
  app.get('/kotelezo', (req, res) => {
    
    kapcsolat()
    
    connection.query('SELECT `konyv_cime`,`kp_kep`,`kp_id` FROM `konyv_profil` WHERE `kotelezoolvasmany` = 1 ', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  })


  app.get('/osszes', (req, res) => {
    
    kapcsolat()
    
    connection.query('SELECT `kp_kep`,`konyv_cime`,`kp_id` FROM `konyv_profil`', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  })

  app.post('/osszeskereso', (req, res) => {
    kapcsolat()
    let parancs = 'SELECT * FROM `konyv_profil` INNER JOIN iro_profil ON iro_profil.iro_id = konyv_profil.iro_id INNER JOIN mufaj ON konyv_profil.mufaj1 = mufaj.mufaj_id WHERE iro_profil.iro_neve LIKE "%'+req.body.bevitel1+'%%" OR mufaj.mufaj_nev LIKE "%'+req.body.bevitel1+'%%" OR konyv_profil.konyv_cime LIKE "%'+req.body.bevitel1+'%%"'
    connection.query(parancs, function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
  
  
  })
  

  app.post('/kereso', (req, res) => {
    
    kapcsolat()
    let parancs = 'SELECT * FROM konyv_profil WHERE kotelezoolvasmany = 1 AND konyv_cime LIKE "%'+req.body.bevitel1+'%"'
    connection.query(parancs, function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  })



  app.post('/konyvprofil', (req, res) => {
    kapcsolat()
        connection.query('SELECT * FROM konyv_profil WHERE konyv_profil.kp_id =  '+req.body.konyvid, function (err, rows, fields) {
          if (err) 
            console.log( err)
          else{
          console.log(rows)
          res.send(rows)}
          
        })
        
        connection.end()
        
      })



      app.post('/ujkolcsonzes', (req, res) => {

        kapcsolat()
        let parancs = "INSERT INTO kolcsonzes VALUES (NULL, '"+req.body.bevitel2+"', '1', '" + req.body.bevitel1  + "', '" + req.body.bevitel1  + "'+INTERVAL 14 DAY)";
        connection.query(parancs, function (err, rows, fields) {
          if (err) throw err
        
          console.log(rows)
          res.send(rows)
        })
        
        connection.end()
    
    
      })

      app.delete('/torles', (req, res) => {
        kapcsolat()
        let parancs = 'DELETE FROM kolcsonzes WHERE kolcsonzes.k_id = '+req.body.bevitel1
        connection.query(parancs, function (err, rows, fields) {
          if (err) throw err
        
          res.send("Sikeres törlés!")
        })
        
        connection.end()
      
      
      })
      
      app.get('/kolcsonzesek', (req, res) => {
    
        kapcsolat()
        
        connection.query('SELECT * FROM kolcsonzes INNER JOIN tag_profil ON kolcsonzes.tp_id = tag_profil.tp_id INNER JOIN konyv_profil ON kolcsonzes.kp_id = konyv_profil.kp_id ', function (err, rows, fields) {
          if (err) throw err
        
          console.log(rows)
          res.send(rows)
        })
        
        connection.end()
    
    
      })

};
