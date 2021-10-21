var axios = require("axios").default;
var options = {
  method: 'GET',
  url: 'https://www.allocine.fr/_/showtimes/theater-P0196/[d-0/][p-1/]',
};

axios.request(options).then(function (response) {
    console.log(response.data);
}).catch(function (error) {
    console.error(error);
});