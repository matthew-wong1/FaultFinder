const puppeteer = require('puppeteer');
const path = require('path');
const {
    create,
    globals
} = require('../../dawn_newest/out/Debug/Debug/dawn.node');
Object.assign(globalThis, globals);
let navigator = {
    gpu: create([]),
};

if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

async function main() {
    const browser = await puppeteer.launch({
        dumpio: true
    });
    const page = await browser.newPage();

    page.on('console', msg => {
        const text = msg.text();
        console.log(text);
    });
    await page.goto(`file://${path.resolve(__dirname, '../rsrcs/html/index.html')}`);
    await page.waitForSelector('canvas'); // Ensure the canvas is loaded

    // Run JS in context of browser instead of node environment
    await page.evaluate(async () => {
        console.log("hi");
        await browser.close()
    });
    main().catch(console.error);
}