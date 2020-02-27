const express = require('express'),
    router = express.Router();

router.get('/', (req, res) => {
    res.render('template', {
        locals: {
            title: 'Page 1'
        },
        partials: {
            partial: 'partial-page1'
        }
    });
});

module.exports = router;