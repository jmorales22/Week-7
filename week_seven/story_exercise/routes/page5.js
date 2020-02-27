const express = require('express'),
    router = express.Router();

router.get('/', (req, res) => {
    res.render('template', {
        locals: {
            title: 'Page 5'
        },
        partials: {
            partial: 'partial-page5'
        }
    });
});

module.exports = router;