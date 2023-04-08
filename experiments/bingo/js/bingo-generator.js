'use strict';

const zip = (...rows) => [...rows[0]].map((_, c) => rows.map(row => row[c]));

const getEditable = () => document.getElementById('editable').checked
const setEditable = (v) => document.getElementById('editable').checked = v

function updateEditable() {
    const editable = getEditable()
    const title = document.querySelector('#memeTitle')
    title.contentEditable = editable

    const cells = document.querySelectorAll('.memeTable > tr > td')
    for (const cell of cells) {
        cell.contentEditable = editable
    }
}

function getTextMetrics(text, font, fontSize) {
    const canvas = getTextMetrics.canvas || (getTextMetrics.canvas = document.createElement('canvas'))
    const ctx = canvas.getContext('2d')
    ctx.font = fontSize + 'px ' + font
    return ctx.measureText(text)
}

function fitWidthForLine(text, font, startingFontSize, maxWidth) {
    let currentSize = startingFontSize
    for (let i = 0; i < 20; ++i) {
        let metrics = getTextMetrics(text, font, currentSize)
        let actualWidth = metrics.width

        if (actualWidth < maxWidth) {
            break
        }
        currentSize *= 0.99
    }
    return currentSize
}

function findFittingFontSize(text, font, startingFontSize, maxWidth, maxHeight) {
    // Assumption: The longest line will continue to be the longest if we reduce
    //             everything in size
    const lines = text.split('\n')
    let longest = ['', 0]
    for (let line of lines) {
        const metrics = getTextMetrics(line, font, startingFontSize)

        if (metrics.width > longest[1]) {
            longest = [line, metrics.width]
        }
    }

    return fitWidthForLine(longest[0], font, startingFontSize, maxWidth)
}

function updateFontSize(elem) {
    /// Returns a closure that updates the font size of an element to the maximum
    /// that fits
    return () => {
        let size = findFittingFontSize(
            elem.innerText,
            'Comic Sans MS',
            25,
            120,
            120
        )
        elem.style.fontSize = size + 'px'
        // FIXME: what the fuck does this do
        // for (let i = 0; i < 1000; ++i) {
        //     let box = elem.getBoundingClientRect()
        //     // if the box is out of square it is because it overflowed vertically
        //     if (Math.abs(box.width - box.height) <= 5) {
        //         break
        //     }
        //     size *= 0.99
        //     elem.style.fontSize = size + 'px'
        // }
    }
}

function onLoad() {
    createTable()
    if (document.location.hash) {
        setEditable(false)
        load(document.location.hash.toString().replace('#', ''))
    }
    updateEditable()
}

function createTable() {
    // generate the table
    const tableDom = document.createElement('table')
    tableDom.classList.add('memeTable')

    for (let i = 0; i < 5; ++i) {
        const row = document.createElement('tr')
        //row.classList.add('memeRow')
        for (let j = 0; j < 5; ++j) {
            const cell = document.createElement('td')

            cell.oninput = updateFontSize(cell)
            cell.onclick = () => {
                if (!cell.isContentEditable) cell.toggleAttribute('struck')
            }
            row.appendChild(cell)
        }
        tableDom.appendChild(row)
    }
    document.querySelector('#bingoContainer').appendChild(tableDom)
}

const deserialize = (s) => JSON.parse(atob(s))

function load(s) {
    let state = deserialize(s)

    document.querySelector('#memeTitle').textContent = state.title

    const textRows = state.cells

    const table = document.querySelector('.memeTable')
    for (const [tableRow, textRow] of zip(table.children, textRows)) {
        for (const [cell, cellText] of zip(tableRow.children, textRow)) {
            cell.innerText = cellText
            updateFontSize(cell)()
        }
    }
}

function grabTableContents() {
    const tableContents = [];
    const table = document.querySelector('.memeTable')
    for (const row of table.children) {
        const rowText = [];
        for (const cell of row.children) {
            // this is probably terrible. roast me in github issues if you want
            rowText.push(cell.innerText)
        }
        tableContents.push(rowText)
    }
    return tableContents
}

const serialize = (tableContents) =>
    btoa(JSON.stringify({
        'title': document.querySelector('#memeTitle').textContent,
        'cells': tableContents,
    }))

function save() {
    document.location.hash = serialize(grabTableContents())
    navigator.clipboard.writeText(document.location.toString())
        .then(() => console.log('saved to clipboard!'))
}

function screenshot() {
    const MIME_TYPE = 'image/png'
    html2canvas(document.getElementById('bingoContainer')).then(canvas => {
        const url = canvas.toDataURL(MIME_TYPE)
        const link = document.createElement('a')
        link.download = 'bingo-meme.png'
        link.href = url
        link.dataset.downloadurl = [MIME_TYPE, link.download, link.href].join(':')

        document.body.appendChild(link)
        link.click()
        document.body.removeChild(link)
    })
}
