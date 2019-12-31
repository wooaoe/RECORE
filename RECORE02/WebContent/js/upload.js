var feedback = function(res) {
    if (res.success === true) {
        var get_link = res.data.link.replace(/^http:\/\//i, 'https://');
        document.querySelector('.status').classList.add('bg-success');
          }
};

new Imgur({
    clientid: 'fac99c105facfd0', //You can change this ClientID
    callback: feedback
});