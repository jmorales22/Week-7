const express = require('express'),
    router = express.Router();

router.get('/', (req, res) => {
    res.render('template', {
        locals: {
            title: 'Page 3'
        },
        partials: {
            partial: 'partial-page3'
        }
    });
});

module.exports = router;