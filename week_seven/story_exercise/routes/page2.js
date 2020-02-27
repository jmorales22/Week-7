const express = require('express'),
    router = express.Router();

router.get('/', (req, res) => {
    res.render('template', {
        locals: {
            title: 'Page 2'
        },
        partials: {
            partial: 'partial-page2'
        }
    });
});

module.exports = router;