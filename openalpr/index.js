var exec = require('child_process').exec;
exec('alpr -c eu -p lv -j h786poj.jpg',function(error, stdout, stderr){
    var plateOutput = JSON.parse(stdout.toString());
    console.log(plateOutput.results[0].plate);
})
