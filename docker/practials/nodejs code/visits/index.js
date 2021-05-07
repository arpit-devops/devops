const express =  require('express'); // including package
const redis = require('redis');

const app = express();   // creatting express app
const client =  redis.createClient({
    host: 'redis-server', 
    port: 6379
}); // create client of redis server
client.set('visits',0);    // setting inital visit value in redis server


app.get('/', (req, res) => {      // this shows when some hit root URI when what will happen
client.get('visits', (err,visits) => { // client (redis to get no of visits)
    res.send('number of visits is ' + visits); // send visit as response
    client.set('visits',parseInt(visits) + 1 ); // by default visit comes in string we need to parse it to int
   });
});

// this () => {} repesent call back function

app.listen(8081, () => {   // we are creating listerning port for out app

    console.log('Listering to port 8081');

});