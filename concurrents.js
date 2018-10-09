

var http = require('http');

function wrapper (otherFunc) {
  var options = {
    host: 'turbine-web-prod-vir.indy.myomnigon.com',
    path: '/mvc/overview/health'
  };

  callback = function(response) {
    var str = '';

    response.on('data', function (chunk) {
      str += chunk;
    });

    response.on('end', function () {
      var parsed = JSON.parse(str)
      otherFunc(parsed.mainData["totalJMSUsers"])

    });
  }

  http.request(options, callback).end();

}

function wrapper2 (otherFunc) {
  var options = {
    host: 'turbine-web-prod-or.indy.myomnigon.com',
    path: '/mvc/overview/health'
  };

  callback = function(response) {
    var str = '';
    response.on('data', function (chunk) {
      str += chunk;
    });

    response.on('end', function () {
      var parsed = JSON.parse(str)
      otherFunc(parsed.mainData["totalJMSUsers"])

    });
  }
  http.request(options, callback).end();

}


let total = 0;
function getNumber(data){
  total += data
}

function timeout (){
  setTimeout(function(){ console.log(total); }, 1000);
}


wrapper(getNumber)
wrapper2(getNumber)
timeout()
