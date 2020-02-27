const express = require('express');
es6Renderer = require('express-es6-template-engine'),
app = express();

app.engine('html', es6Renderer);
app.set('views', 'views');
app.set('view engine', 'html');

app.listen(3333, () => {
    console.log('Server running on port 3333')
})

const rootController = require('./routes/index'),
page1Controller = require('./routes/page1'),
page2Controller = require('./routes/page2'),
page3Controller = require('./routes/page3'),
page4Controller = require('./routes/page4'),
page5Controller = require('./routes/page5');

app.use('/', rootController);
app.use('/page1', page1Controller);
app.use('/page2', page2Controller);
app.use('/page3', page3Controller);
app.use('/page4', page4Controller);
app.use('/page5', page5Controller);