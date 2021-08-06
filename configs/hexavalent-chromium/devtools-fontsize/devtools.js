var x = new XMLHttpRequest();
x.open('GET', 'style.css');
x.onload = function() {
    chrome.devtools.panels.applyStyleSheet(x.responseText);
};
x.send();
