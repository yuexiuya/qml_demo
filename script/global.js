.pragma library // Shared game state
.import QtQuick 2.0 as QQ

var width = 1280;
var height = 720;

var gloader = null;
var lastUrl = null;
var curUrl = null;

function setGlobalLoader(loader) {
    gloader = loader;
}

function link(url, properties) {
    console.log("[start]");
    if(curUrl === url) {
        return;
    }
    lastUrl = curUrl;
    curUrl = url;
    if(properties === undefined) {
        gloader.source = curUrl;
    } else {
        gloader.setSource(curUrl,properties);
    }
    console.log("[end]");
}
