const express = require('express'),
    router = express.Router();

router.get('/', (req, res) => {
    res.render('template', {
        locals: {
            title: 'Page 4'
        },
        partials: {
            partial: 'partial-page4'
        }
    });
});

module.exports = router;