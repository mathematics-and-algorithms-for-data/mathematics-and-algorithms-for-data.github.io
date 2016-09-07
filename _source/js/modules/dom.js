/*global $, window, document, console */
"use strict";

module.exports = function () {
    return {
        document:               $(document),
        html:                   $('html'),
        head:                   $('head'),
        metaViewport:           $('meta[name="viewport"]'),
        body:                   $('body'),
    };
};
