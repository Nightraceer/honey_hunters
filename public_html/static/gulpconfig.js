var fs = require('fs');

module.exports.name = "main";

module.exports.compress = false;

module.exports.hash = false;

module.exports.static = {
    dst: {
        js: 'dist/js',
        scss: 'css',
        css: 'dist/css',
        images: 'dist/images',
        fonts: 'dist/fonts'
    },
    src: {
        js: [
            'js/ajax_validation.js',
            'js/modal.js',
            'js/main.js'
        ],
        scss: [
            'scss/**/*.scss'
        ],
        css: [
            'css/*',
            'fonts/GothamPro/css/GothamPro.css',
            'fonts/Awesome/css/Awesome.css',
        ],
        images: [
            'images/**/*.*'
        ],
        fonts: [
            'fonts/GothamPro/fonts/**/*',
            'fonts/Awesome/fonts/*'
        ],
        scss_include: [
            'node_modules/bootstrap/scss',
        ]
    },
    vendors: {
        jquery: {
            js: [
                'node_modules/jquery/dist/jquery.min.js'
            ]
        },
        flow: {
            js: [
                'node_modules/@flowjs/flow.js/dist/flow.js'
            ]
        },
        fancybox: {
            js: [
                'node_modules/@fancyapps/fancybox/dist/jquery.fancybox.js'
            ],
            css: [
                'node_modules/@fancyapps/fancybox/dist/jquery.fancybox.css'
            ]
        },
        jquery_form: {
            js: [
                'node_modules/jquery-form/dist/jquery.form.min.js'
            ]
        }
    }
};