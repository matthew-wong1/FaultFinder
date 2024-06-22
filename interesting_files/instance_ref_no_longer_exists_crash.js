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
        const canvas = document.querySelector('canvas');
        const context = canvas.getContext('webgpu');

        const devicePixelRatio = window.devicePixelRatio;
        canvas.width = canvas.clientWidth * devicePixelRatio;
        canvas.height = canvas.clientHeight * devicePixelRatio;

        const dIIZprSBnMekz = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const WjbQobvD = await dIIZprSBnMekz.requestDevice();
        const VXUjJMFsP = WjbQobvD.createCommandEncoder({
            label: "CsGHaWDvs"
        });
        const qYwySRtVjCiwPXLb = WjbQobvD.createTexture({
            dimension: "1d",
            format: "r32uint",
            label: "WiHNzVYmLpyCjABmiA",
            sampleCount: 1,
            size: {
                width: 538,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
            viewFormats: ["r32uint"]
        });
        const SeXZAmMVaHJqM = qYwySRtVjCiwPXLb.createView({
            aspect: "all",
            dimension: "cube",
            arrayLayerCount: 3,
            baseArrayLayer: 2557200794,
            baseMipLevel: 1299087274,
            mipLevelCount: 3915577990,
            format: "r16sint",
            label: "aYOJvWiyjGSloJndu"
        });
        const ragdoL = WjbQobvD.createQuerySet({
            count: 2074,
            label: "MAgioWlDLHgpppR",
            type: "occlusion"
        });
        const EGQrkbHy = VXUjJMFsP.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.32587243376705555,
                    g: 0.7622507258991406,
                    b: 0.05144246991313106,
                    a: 0.24414671168990643
                },
                loadOp: "clear",
                storeOp: "discard",
                resolveTarget: SeXZAmMVaHJqM,
                view: SeXZAmMVaHJqM
            }],
            depthStencilAttachment: {
                depthClearValue: 0.7043270156820376,
                depthReadOnly: false,
                depthStoreOp: "store",
                stencilClearValue: 1286800851,
                stencilLoadOp: "load",
                stencilReadOnly: false,
                stencilStoreOp: "discard",
                view: SeXZAmMVaHJqM
            },
            label: "IOlZDujsJP",
            maxDrawCount: 831666850,
            occlusionQuerySet: ragdoL
        });
        const OnEOIMtx = navigator.gpu.wgslLanguageFeatures
        const SDZMbeC = ragdoL.count
        context.configure({
            alphaMode: "opaque",
            colorSpace: "display-p3",
            device: WjbQobvD,
            format: "rgba16float",
            usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING
        });
        const gwRCBlag = WjbQobvD.features
        const fneqHtNmGmChDDw = SeXZAmMVaHJqM.label
        const cUfaje = await dIIZprSBnMekz.requestDevice();
        ragdoL.destroy();
        const sybPqAOAXhBA = await dIIZprSBnMekz.requestAdapterInfo();
        const RqKEJuo = sybPqAOAXhBA.device
        const zEjfkZvJh = cUfaje.limits
        const YPiergNtExvMltAYPp = WjbQobvD.label
        const gkRuJgpzUqJSpmDfsAm = cUfaje.createQuerySet({
            count: 2470,
            label: "vodKMRBBgqbhtcohW",
            type: "occlusion"
        });
        gkRuJgpzUqJSpmDfsAm.destroy();
        const HqcfdbWRGB = WjbQobvD.features
        const jMClSarxLhUxxoAKIted = cUfaje.createQuerySet({
            count: 2409,
            label: "wmtBXfGu",
            type: "occlusion"
        });
        const IbqlNmSJ = jMClSarxLhUxxoAKIted.count
        const subxyXhX = WjbQobvD.createQuerySet({
            count: 748,
            label: "dFTmzmE",
            type: "occlusion"
        });
        const COqZnu = VXUjJMFsP.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.360899275392352,
                    g: 0.6483880425631057,
                    b: 0.10868773925251785,
                    a: 0.312017861482796
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: SeXZAmMVaHJqM,
                view: SeXZAmMVaHJqM
            }],
            depthStencilAttachment: {
                depthClearValue: 0.9436552144016713,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 791913785,
                stencilLoadOp: "load",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: SeXZAmMVaHJqM
            },
            label: "gDjvgZeGgKMRwPEwG",
            maxDrawCount: 892205872,
            occlusionQuerySet: jMClSarxLhUxxoAKIted
        });
        const fyJLwsSARIgBypKa = cUfaje.features
        const nrDDT = context.canvas
        context.unconfigure();
        const XZKJYyP = cUfaje.label
        const UioQheDsWYpsBKr = await dIIZprSBnMekz.requestAdapterInfo();
        const BJwsVsGvIhvOOFB = WjbQobvD.createCommandEncoder({
            label: "UVdyzJJpstH"
        });
        const zILFiHe = cUfaje.createCommandEncoder({
            label: "JvSIwOaBGFGKQRljyFh"
        });
        const guyTjpRilyLCCWBhTCEm = UioQheDsWYpsBKr.device
        const lHSDuDqL = VXUjJMFsP.label
        const SNATXnwwbeWClXsMSFpK = dIIZprSBnMekz.isFallbackAdapter
        const xHYJTMPCPhhrIciVxq = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const BVwvYed = navigator.gpu.wgslLanguageFeatures
        const ISsJPcUll = BJwsVsGvIhvOOFB.label
        const sQOFoGdqEIq = UioQheDsWYpsBKr.description
        const BpxnH = cUfaje.queue
        const vMbmvLIEcOYGOVlbHqi = jMClSarxLhUxxoAKIted.type
        const OghEMZvZ = xHYJTMPCPhhrIciVxq.features
        qYwySRtVjCiwPXLb.destroy();
        subxyXhX.destroy();
        const SMKkZeKJJhbyvLnzgPhe = dIIZprSBnMekz.isFallbackAdapter
        const aroKYvn = jMClSarxLhUxxoAKIted.label
        const QtbiblDUwrmQxYna = VXUjJMFsP.label
        const caQkEaOH = sybPqAOAXhBA.vendor
        jMClSarxLhUxxoAKIted.destroy();
        const sAMUBKcrkNORLQEKQ = WjbQobvD.label
        const lXFTegPowqAb = WjbQobvD.createCommandEncoder({
            label: "uwJLaVVwOWk"
        });
        context.unconfigure();
        const jjkadiqvHcOToIqkLHe = xHYJTMPCPhhrIciVxq.limits
        const eRfqOMXAdZijtg = await dIIZprSBnMekz.requestDevice();
        const RgfHHwXIYIjBwv = UioQheDsWYpsBKr.architecture
        const GgkexolwLZRYEDlAh = UioQheDsWYpsBKr.vendor
        const IzzAPswpvTYvoYsUb = eRfqOMXAdZijtg.createCommandEncoder({
            label: "IdnvYbhsNUcxqLpDa"
        });
        const MbaFIx = eRfqOMXAdZijtg.createQuerySet({
            count: 4014,
            label: "yWgQpJb",
            type: "occlusion"
        });
        const vOtgWerWvpNUzOT = MbaFIx.type
        MbaFIx.destroy();
        const uABIWDKPXkDLYlf = WjbQobvD.createQuerySet({
            count: 1305,
            label: "ezaLmpQydjrbCRi",
            type: "occlusion"
        });
        uABIWDKPXkDLYlf.destroy();
        const XSxQaWAkzrZV = navigator.gpu.wgslLanguageFeatures
        context.unconfigure();
        const xuuyQnTX = await xHYJTMPCPhhrIciVxq.requestDevice();
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: WjbQobvD,
            format: "rgba16float",
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST
        });
        const kGmPGRD = WjbQobvD.createQuerySet({
            count: 3169,
            label: "WLoUlEjeuczwf",
            type: "occlusion"
        });
        const IcPJpmyexhY = cUfaje.createQuerySet({
            count: 1941,
            label: "dclKfTGTzEdJBaxSV",
            type: "occlusion"
        });
        const rGKuZZtjtzux = dIIZprSBnMekz.limits
        const CKbVvNfRQzQIRE = eRfqOMXAdZijtg.createTexture({
            dimension: "1d",
            format: "rg16uint",
            label: "MUPofEoFeflpxgvP",
            sampleCount: 1,
            size: {
                width: 925,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
            viewFormats: ["rg16uint"]
        });
        CKbVvNfRQzQIRE.destroy();
        const nJcLJHfL = IcPJpmyexhY.label
        const uuTiZv = await navigator.gpu.getPreferredCanvasFormat();
        kGmPGRD.destroy();
        const ukSYCdY = eRfqOMXAdZijtg.createTexture({
            dimension: "3d",
            format: "depth16unorm",
            label: "EiUeJmAjAJOmEHSbqIv",
            sampleCount: 1,
            size: {
                width: 1199,
                height: 1371,
                depthOrArrayLayers: 422
            },
            mipLevelCount: 6,
            usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT,
            viewFormats: ["depth16unorm"]
        });
        ukSYCdY.destroy();
        const yscpjjDlbXaKONzXxw = context.canvas
        const xTQBZBkeNNwdnjvV = SeXZAmMVaHJqM.label
        const FMptGUxLtuYNt = xHYJTMPCPhhrIciVxq.features
        const NJRNmpLVHnR = eRfqOMXAdZijtg.features
        const nLijekvVQUlUPorSnMY = IcPJpmyexhY.type
        IcPJpmyexhY.destroy();
        const AbXxYHINIaNpyAkesgTT = cUfaje.limits
        const KzPlJcJUKayEhXOWmLaJ = context.getCurrentTexture();
        const NoBfYDZLCdhWFidGvg = xuuyQnTX.createQuerySet({
            count: 3654,
            label: "UKqAbYTXQB",
            type: "occlusion"
        });
        NoBfYDZLCdhWFidGvg.destroy();
        const gBtNn = KzPlJcJUKayEhXOWmLaJ.createView({
            aspect: "all",
            dimension: "3d",
            arrayLayerCount: 1,
            baseArrayLayer: 3490632939,
            baseMipLevel: 2687184810,
            mipLevelCount: 2304001191,
            format: "rgba16float",
            label: "xaceHOXlqDOXfvS"
        });
        const UYUrVVK = await dIIZprSBnMekz.requestDevice();
        const VSSgSeiHuTkyvEO = cUfaje.createQuerySet({
            count: 2858,
            label: "HHCphfIqqAL",
            type: "occlusion"
        });
        const oogGTwLyGlkqfBJRnO = VSSgSeiHuTkyvEO.type
        const wuFYg = UYUrVVK.createBuffer({
            label: "xnXnPUCIBXq",
            mappedAtCreation: false,
            size: 474724,
            usage: GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE
        });
        const FUywO = context.getCurrentTexture();
        const OkrEZ = WjbQobvD.queue
        const kqnPyacNFf = VXUjJMFsP.label
        const wzhtltil = VSSgSeiHuTkyvEO.type
        const uQQXFCdvUFvFUCiA = context.canvas
        const IeMMJbJQcMPbyFFKHjO = eRfqOMXAdZijtg.createTexture({
            dimension: "2d",
            format: "r32sint",
            label: "KsqCZpphx",
            sampleCount: 1,
            size: {
                width: 6547,
                height: 2237,
                depthOrArrayLayers: 111
            },
            mipLevelCount: 11,
            usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
            viewFormats: ["r32sint"]
        });
        const RMOXd = UYUrVVK.features
        const yTVexCpSFBYFAsVDa = IzzAPswpvTYvoYsUb.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.37128660386989365,
                    g: 0.10977514695854951,
                    b: 0.5281380687219055,
                    a: 0.7372386395049183
                },
                loadOp: "clear",
                storeOp: "discard",
                resolveTarget: gBtNn,
                view: gBtNn
            }],
            depthStencilAttachment: {
                depthClearValue: 0.07205444999789878,
                depthReadOnly: true,
                depthStoreOp: "store",
                stencilClearValue: 3295103337,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: gBtNn
            },
            label: "xMZaByqEXDKXVRhHynO",
            maxDrawCount: 3073049064,
            occlusionQuerySet: VSSgSeiHuTkyvEO
        });
        const HlaTviVstl = context.canvas
        const ehIxEHtVtANd = xuuyQnTX.createBuffer({
            label: "AFwzh",
            mappedAtCreation: true,
            size: 251742512,
            usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT
        });
        const kzACOQBDBcCmF = await xHYJTMPCPhhrIciVxq.requestDevice();
        const cFibQpdWGofpalq = IzzAPswpvTYvoYsUb.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.5064761792544078,
                    g: 0.5033735382168857,
                    b: 0.8293774248122074,
                    a: 0.22867234088677368
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: SeXZAmMVaHJqM,
                view: SeXZAmMVaHJqM
            }],
            depthStencilAttachment: {
                depthClearValue: 0.9744988885717719,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 4136989885,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: gBtNn
            },
            label: "yegEhbcZtEPjTvIXqLQ",
            maxDrawCount: 2033736292,
            occlusionQuerySet: VSSgSeiHuTkyvEO
        });
        const dvfpxvkYDJrNEDacU = context.getCurrentTexture();
        const SVhoPOyFAdPQuLeQmvJ = xuuyQnTX.queue
        const LwLWsKfwmpV = VSSgSeiHuTkyvEO.type
        const qbzIlXkVkXLQAZNy = eRfqOMXAdZijtg.queue
        const VqxaB = UYUrVVK.createCommandEncoder({
            label: "ipruyr"
        });
        const rsKRup = xuuyQnTX.limits
        const kHbXJMofiIcxALakUa = UioQheDsWYpsBKr.architecture
        const CImPORGHkiXAGHX = UioQheDsWYpsBKr.architecture
        const BrzMZqcQVhxGonArukDW = IzzAPswpvTYvoYsUb.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.826656975050403,
                    g: 0.26826956977285676,
                    b: 0.061764191425090154,
                    a: 0.25356130868527216
                },
                loadOp: "load",
                storeOp: "store",
                resolveTarget: gBtNn,
                view: SeXZAmMVaHJqM
            }],
            depthStencilAttachment: {
                depthClearValue: 0.4399314921382387,
                depthReadOnly: false,
                depthStoreOp: "store",
                stencilClearValue: 1557161224,
                stencilLoadOp: "clear",
                stencilReadOnly: false,
                stencilStoreOp: "discard",
                view: SeXZAmMVaHJqM
            },
            label: "ofBqOaEygK",
            maxDrawCount: 3005916170,
            occlusionQuerySet: VSSgSeiHuTkyvEO
        });
        const nFKxeTfgsOoOp = UioQheDsWYpsBKr.vendor
        const RBpVINnGSc = await xHYJTMPCPhhrIciVxq.requestDevice();
        const wsCkVTEFMBqibDtaHf = await dIIZprSBnMekz.requestDevice();
        const QJgQKDhIlnb = await dIIZprSBnMekz.requestDevice();
        const KDhOkwGQmC = kzACOQBDBcCmF.createBuffer({
            label: "dAVlRhqidREN",
            mappedAtCreation: false,
            size: 147330740,
            usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
        });
        const EMxhhSjJrVNOS = UioQheDsWYpsBKr.architecture
        const fwQbL = WjbQobvD.label
        const iEniFyo = context.canvas
        VSSgSeiHuTkyvEO.destroy();
        const itPLAnL = context.canvas
        const ewEJkUsQeHvwxuud = context.canvas
        const DgvNfCJnOSTdyjPaCGq = context.canvas
        const IOrQNUDVNmDsPqIlXbB = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        context.unconfigure();
        const xLSRFS = cUfaje.createBuffer({
            label: "cBWWijcLDCjYQXdGt",
            mappedAtCreation: false,
            size: 88598812,
            usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM
        });
        const kPgDCENDqg = await xHYJTMPCPhhrIciVxq.requestAdapterInfo();
        const pVXvihStFv = await dIIZprSBnMekz.requestDevice();
        const wjavCDYGTH = xHYJTMPCPhhrIciVxq.limits
        context.configure({
            alphaMode: "opaque",
            colorSpace: "srgb",
            device: QJgQKDhIlnb,
            format: "rgba8unorm",
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT
        });
        const dUMbt = dIIZprSBnMekz.limits
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "srgb",
            device: pVXvihStFv,
            format: "rgba8unorm",
            usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING
        });
        const BqMSJvG = kzACOQBDBcCmF.features
        const QpnIOUhpxTcHZQCJ = context.getCurrentTexture();
        const fvTWdHoC = await dIIZprSBnMekz.requestAdapterInfo();
        const gflwNIsAYeNrvLl = gBtNn.label
        const eleZXQ = pVXvihStFv.queue
        const vHuaeHBIn = cUfaje.createQuerySet({
            count: 1536,
            label: "fsaRx",
            type: "occlusion"
        });
        const chTQXFEvgVwftN = VXUjJMFsP.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.22443839458473325,
                    g: 0.9095063355413748,
                    b: 0.8854277796347347,
                    a: 0.047064918507752296
                },
                loadOp: "clear",
                storeOp: "discard",
                resolveTarget: SeXZAmMVaHJqM,
                view: gBtNn
            }],
            depthStencilAttachment: {
                depthClearValue: 0.23618886022582575,
                depthReadOnly: true,
                depthStoreOp: "store",
                stencilClearValue: 492763160,
                stencilLoadOp: "load",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: SeXZAmMVaHJqM
            },
            label: "TByFfrqTZzDeToajI",
            maxDrawCount: 1768741811,
            occlusionQuerySet: vHuaeHBIn
        });
        const VyoFetMQDONwwcNv = WjbQobvD.label
        const rZaDrJFOpzNRM = lXFTegPowqAb.label
        const oCrTJzIGDWbK = RBpVINnGSc.createQuerySet({
            count: 2709,
            label: "SudemeRzdwV",
            type: "occlusion"
        });
        const UlLyHPVFFPn = await dIIZprSBnMekz.requestAdapterInfo();
        const uuRBJcpCYPi = pVXvihStFv.limits
        vHuaeHBIn.destroy();
        const ujyTKABgWwdTGvHolVL = context.canvas
        context.unconfigure();
        const DMaMSoobwEuwMc = UioQheDsWYpsBKr.vendor
        const plEABFLr = context.canvas
        const RNjmmpHVzccas = BJwsVsGvIhvOOFB.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.8028592139834572,
                    g: 0.6337906201366016,
                    b: 0.9816486955706719,
                    a: 0.5749429674680173
                },
                loadOp: "clear",
                storeOp: "store",
                resolveTarget: SeXZAmMVaHJqM,
                view: gBtNn
            }],
            depthStencilAttachment: {
                depthClearValue: 0.2069027710697483,
                depthReadOnly: false,
                depthStoreOp: "store",
                stencilClearValue: 1966578049,
                stencilLoadOp: "clear",
                stencilReadOnly: false,
                stencilStoreOp: "store",
                view: SeXZAmMVaHJqM
            },
            label: "NimYJgYCydVOblMCZeI",
            maxDrawCount: 4074113466,
            occlusionQuerySet: oCrTJzIGDWbK
        });
        const EoGoayYkg = QJgQKDhIlnb.features
        const UOYMZozdo = eRfqOMXAdZijtg.queue
        const ktVAHQiasn = kzACOQBDBcCmF.label
        QpnIOUhpxTcHZQCJ.destroy();
        const POBtc = wsCkVTEFMBqibDtaHf.label
        context.configure({
            alphaMode: "opaque",
            colorSpace: "display-p3",
            device: kzACOQBDBcCmF,
            format: "rgba16float",
            usage: GPUTextureUsage.RENDER_ATTACHMENT
        });
        const WhmvDVTiLNnCNqzZYcG = context.getCurrentTexture();
        const dpDHixUbTboLGBRHp = kPgDCENDqg.vendor
        const ifEnEKsSlHCoXmcn = await dIIZprSBnMekz.requestDevice();
        const rXsVndNcptOPGuVmQBw = context.canvas
        oCrTJzIGDWbK.destroy();
        const XVmzVYiWaccY = wsCkVTEFMBqibDtaHf.createQuerySet({
            count: 3150,
            label: "zZDcuNs",
            type: "occlusion"
        });
        const YUTsybg = VqxaB.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.6825951759409223,
                    g: 0.07097551353427967,
                    b: 0.5124316678985544,
                    a: 0.008957678435659644
                },
                loadOp: "load",
                storeOp: "store",
                resolveTarget: SeXZAmMVaHJqM,
                view: gBtNn
            }],
            depthStencilAttachment: {
                depthClearValue: 0.9056600473666889,
                depthReadOnly: false,
                depthStoreOp: "store",
                stencilClearValue: 230801488,
                stencilLoadOp: "load",
                stencilReadOnly: false,
                stencilStoreOp: "store",
                view: gBtNn
            },
            label: "oeCVuBHXaWgmwWuqGF",
            maxDrawCount: 835271934,
            occlusionQuerySet: XVmzVYiWaccY
        });
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: eRfqOMXAdZijtg,
            format: "rgba8unorm",
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT
        });
        const pFLivRsa = sybPqAOAXhBA.device
        const onqmWzK = cUfaje.createCommandEncoder({
            label: "NTbdZxVgRTmXiYkFYv"
        });
        const GKpxZd = BJwsVsGvIhvOOFB.label
        const XAIEv = IOrQNUDVNmDsPqIlXbB.isFallbackAdapter
        const nKiDXDYRe = await navigator.gpu.getPreferredCanvasFormat();
        const EaiImNVtrYX = context.canvas
        context.configure({
            alphaMode: "opaque",
            colorSpace: "display-p3",
            device: kzACOQBDBcCmF,
            format: "rgba8unorm",
            usage: GPUTextureUsage.STORAGE_BINDING
        });
        const omBLt = ifEnEKsSlHCoXmcn.features
        const CHOzrvNHBOSbHWG = pVXvihStFv.features
        const YRnNqKAxTjtXhaw = context.canvas
        const ndyhPhYy = UYUrVVK.limits
        const ZOlpR = UYUrVVK.limits
        const fWapjteWnZRKrbVB = UlLyHPVFFPn.architecture
        const dtcKHOySDfqI = SeXZAmMVaHJqM.label
        const viJRFEMvp = UYUrVVK.createTexture({
            dimension: "1d",
            format: "rgb10a2unorm",
            label: "EhpLantfIhE",
            sampleCount: 1,
            size: {
                width: 6338,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
            viewFormats: ["rgb10a2unorm"]
        });
        const sPrbyspJVOrdwpYccJbq = context.getCurrentTexture();
        const ImvsJFtMnFKBQu = context.getCurrentTexture();
        const BtSFmLkFK = RBpVINnGSc.createTexture({
            dimension: "3d",
            format: "depth32float",
            label: "SLzHxXvORJCZAo",
            sampleCount: 1,
            size: {
                width: 1377,
                height: 1609,
                depthOrArrayLayers: 261
            },
            mipLevelCount: 9,
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT,
            viewFormats: ["depth32float"]
        });
        const mEHbxoenCENinSZ = zILFiHe.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.024478680922056295,
                    g: 0.48813794248141784,
                    b: 0.9089207189144587,
                    a: 0.7172224612550512
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: gBtNn,
                view: SeXZAmMVaHJqM
            }],
            depthStencilAttachment: {
                depthClearValue: 0.6436617664690573,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 1980059884,
                stencilLoadOp: "load",
                stencilReadOnly: false,
                stencilStoreOp: "store",
                view: gBtNn
            },
            label: "PYXtWtBiWVXnA",
            maxDrawCount: 922419646,
            occlusionQuerySet: XVmzVYiWaccY
        });
        const XhkKUFtXEDhmtoKmL = UlLyHPVFFPn.description
        XVmzVYiWaccY.destroy();
        const PxNhlhhMBaf = xuuyQnTX.createQuerySet({
            count: 3636,
            label: "AgGUCO",
            type: "occlusion"
        });
        const WVyjq = lXFTegPowqAb.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.7642033923897782,
                    g: 0.05987917585369407,
                    b: 0.0726647299443256,
                    a: 0.35346402835177804
                },
                loadOp: "clear",
                storeOp: "store",
                resolveTarget: gBtNn,
                view: gBtNn
            }],
            depthStencilAttachment: {
                depthClearValue: 0.5823070970542883,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 1071438678,
                stencilLoadOp: "clear",
                stencilReadOnly: false,
                stencilStoreOp: "discard",
                view: gBtNn
            },
            label: "mgROfxmk",
            maxDrawCount: 2856041121,
            occlusionQuerySet: PxNhlhhMBaf
        });
        const pkrpRyhYQewZtYvTf = cUfaje.queue
        const ZlKCIqo = fvTWdHoC.vendor
        const oaUBegkiJusHw = pVXvihStFv.createTexture({
            dimension: "1d",
            format: "rg8sint",
            label: "OshbgsvFCeHvuJmAgZF",
            sampleCount: 1,
            size: {
                width: 4282,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.TEXTURE_BINDING,
            viewFormats: ["rg8sint"]
        });
        const QiJsLBYsYbakvlG = xHYJTMPCPhhrIciVxq.isFallbackAdapter
        const UObyGFXutxnOFpBrr = UlLyHPVFFPn.device
        const IuXELPkoCPU = ifEnEKsSlHCoXmcn.queue
        const XhvgkNL = SeXZAmMVaHJqM.label
        const qTfBjsQ = eRfqOMXAdZijtg.limits
        const YonogLjPryeDHHRY = FUywO.createView({
            aspect: "all",
            dimension: "2d-array",
            arrayLayerCount: 512175445,
            baseArrayLayer: 3518955267,
            baseMipLevel: 3564514998,
            mipLevelCount: 1874884228,
            format: "rg16float",
            label: "uXqFISTZbBBzAdmTBxD"
        });
        const dMyneNgdPzAr = IOrQNUDVNmDsPqIlXbB.limits
        const zUjMpoSNQSbIkQlmdg = BJwsVsGvIhvOOFB.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.0830732628169738,
                    g: 0.47142932452876585,
                    b: 0.5596331390136015,
                    a: 0.8926897203687444
                },
                loadOp: "clear",
                storeOp: "store",
                resolveTarget: SeXZAmMVaHJqM,
                view: gBtNn
            }],
            depthStencilAttachment: {
                depthClearValue: 0.3899615340057455,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 2467249009,
                stencilLoadOp: "load",
                stencilReadOnly: false,
                stencilStoreOp: "store",
                view: SeXZAmMVaHJqM
            },
            label: "SskTsGIFx",
            maxDrawCount: 920492680,
            occlusionQuerySet: PxNhlhhMBaf
        });
        const DWLDJS = navigator.gpu.wgslLanguageFeatures
        const zqpKIHejjjL = dIIZprSBnMekz.limits
        const UgFGnjcrqSgIZbmAc = UioQheDsWYpsBKr.architecture
        const eptMZPrLUCqJZ = fvTWdHoC.device
        const pyanIyoqbEwb = context.getCurrentTexture();
        const BABknv = fvTWdHoC.vendor
        const oExQTWtDOsaWAUfzoF = IOrQNUDVNmDsPqIlXbB.limits
        const ZDGREuXnKzv = UYUrVVK.createQuerySet({
            count: 2712,
            label: "YIdZKdSAhm",
            type: "occlusion"
        });
        const HBDQnPoLOVgaBTtQKsmR = sybPqAOAXhBA.vendor
        const ajCLx = kzACOQBDBcCmF.queue
        const tEJfInVMcmnGIxbzUAo = RBpVINnGSc.createQuerySet({
            count: 3399,
            label: "ZwnCHzFvWYoXWOxmVq",
            type: "occlusion"
        });
        const RfDkbkoFqiFdfYoT = wsCkVTEFMBqibDtaHf.createTexture({
            dimension: "1d",
            format: "rgba32float",
            label: "VhmdItHGVQRGOHV",
            sampleCount: 1,
            size: {
                width: 4545,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC,
            viewFormats: ["rgba32float"]
        });
        const yiqYil = UlLyHPVFFPn.device
        context.unconfigure();
        const XzSKvZMewnG = kzACOQBDBcCmF.createCommandEncoder({
            label: "ypjKmMv"
        });
        tEJfInVMcmnGIxbzUAo.destroy();
        const wJjKCwTFcPULSv = IOrQNUDVNmDsPqIlXbB.limits
        const CYcCXGxeNKjRpGe = eRfqOMXAdZijtg.createBuffer({
            label: "PzbISRXT",
            mappedAtCreation: true,
            size: 39052216,
            usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
        });
        const qTQGuSKOLhhRfYpNABnY = context.canvas
        const SKcNdqb = IOrQNUDVNmDsPqIlXbB.features
        const DtlIzvEjxLjBmGJqS = fvTWdHoC.architecture
        ZDGREuXnKzv.destroy();
        const TGultbhXygfAmjZP = WjbQobvD.createTexture({
            dimension: "2d",
            format: "depth24plus",
            label: "XHTOatogickLOFRBXeP",
            sampleCount: 4,
            size: {
                width: 6180,
                height: 6548,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.RENDER_ATTACHMENT,
            viewFormats: ["depth24plus-stencil8"]
        });
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "srgb",
            device: ifEnEKsSlHCoXmcn,
            format: "rgba16float",
            usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT
        });
        const TnLlsGJUlHozGOTyYET = context.getCurrentTexture();
        const mrcMYhtnaEhGKlK = WhmvDVTiLNnCNqzZYcG.createView({
            aspect: "all",
            dimension: "cube-array",
            arrayLayerCount: 3959200482,
            baseArrayLayer: 1849184739,
            baseMipLevel: 2227510572,
            mipLevelCount: 2075321108,
            format: "r32uint",
            label: "KmpTcRvzNgxaWQ"
        });
        const hxPZkg = eRfqOMXAdZijtg.createTexture({
            dimension: "1d",
            format: "rgb9e5ufloat",
            label: "rIFyoWOWnxhKYVXeRDf",
            sampleCount: 1,
            size: {
                width: 4849,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_SRC,
            viewFormats: ["rgb9e5ufloat"]
        });
        const jNDGUgipFEUTzKZcx = context.getCurrentTexture();
        PxNhlhhMBaf.destroy();
        const fnOyOA = await IOrQNUDVNmDsPqIlXbB.requestDevice();
        const ClIeWEILkWMgbfnilQ = kzACOQBDBcCmF.createQuerySet({
            count: 2772,
            label: "mxfIEvHiYEZYtb",
            type: "occlusion"
        });
        const iWVhW = IzzAPswpvTYvoYsUb.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.1952586729898268,
                    g: 0.819793624625605,
                    b: 0.8435337924049762,
                    a: 0.5757849549103082
                },
                loadOp: "clear",
                storeOp: "discard",
                resolveTarget: gBtNn,
                view: gBtNn
            }],
            depthStencilAttachment: {
                depthClearValue: 0.622365709259972,
                depthReadOnly: true,
                depthStoreOp: "store",
                stencilClearValue: 3725467710,
                stencilLoadOp: "load",
                stencilReadOnly: false,
                stencilStoreOp: "discard",
                view: YonogLjPryeDHHRY
            },
            label: "kaoPT",
            maxDrawCount: 2407260436,
            occlusionQuerySet: ClIeWEILkWMgbfnilQ
        });
        const HrNZcCXaqQVFBKv = cUfaje.createTexture({
            dimension: "3d",
            format: "rg8uint",
            label: "YUfIMTKLrEU",
            sampleCount: 1,
            size: {
                width: 844,
                height: 1812,
                depthOrArrayLayers: 315
            },
            mipLevelCount: 4,
            usage: GPUTextureUsage.COPY_DST,
            viewFormats: ["rg8uint"]
        });
        const zBwtPgzpfuaVfakykBU = context.canvas
        const AGtBvIokvz = context.canvas
        const XWzJZAikAdWKVAwx = UioQheDsWYpsBKr.architecture
        const xwJTNweebUbylMNZZWW = fvTWdHoC.architecture
        const RApknvZehgXLBF = WjbQobvD.createBuffer({
            label: "HwbVnaylnuQ",
            mappedAtCreation: false,
            size: 33856540,
            usage: GPUBufferUsage.QUERY_RESOLVE
        });
        const pLAPUWJGJwuUFG = context.getCurrentTexture();
        const vQcUj = ClIeWEILkWMgbfnilQ.label
        const OZTeVSShNx = context.getCurrentTexture();
        const mfEPukaaNQmk = ClIeWEILkWMgbfnilQ.label
        const mkslYByLXR = kPgDCENDqg.architecture
        const xfJIu = context.canvas
        const UwiMRzhpcoZScPOYSI = ClIeWEILkWMgbfnilQ.count
        const uMcuZxqw = zILFiHe.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.2114657567039655,
                    g: 0.6832069312744029,
                    b: 0.8346437771921614,
                    a: 0.07301385340388022
                },
                loadOp: "clear",
                storeOp: "store",
                resolveTarget: gBtNn,
                view: SeXZAmMVaHJqM
            }],
            depthStencilAttachment: {
                depthClearValue: 0.5491234950241577,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 2258759217,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: YonogLjPryeDHHRY
            },
            label: "YDqztSCKblSifoDCyfc",
            maxDrawCount: 799221118,
            occlusionQuerySet: ClIeWEILkWMgbfnilQ
        });
        const hzPvQStnwVzArOrU = UioQheDsWYpsBKr.architecture
        const PieHry = await dIIZprSBnMekz.requestAdapterInfo();
        const wyYBPtkGyGJRoBas = eRfqOMXAdZijtg.label
        const aiqMMOmWTX = context.canvas
        const vInICRfeGnQt = await dIIZprSBnMekz.requestDevice();
        const AGLWIJMuCNs = xHYJTMPCPhhrIciVxq.features
        const pIzFFgkVNvdzkuqAFNtj = navigator.gpu.wgslLanguageFeatures
        const RVJaYCXNpQDMEknk = QJgQKDhIlnb.label
        const QhbWTllsWBrsu = ClIeWEILkWMgbfnilQ.type
        const VJKRYfWVd = sybPqAOAXhBA.device
        const VJNDovapNg = dvfpxvkYDJrNEDacU.createView({
            aspect: "all",
            dimension: "2d-array",
            arrayLayerCount: 3093266960,
            baseArrayLayer: 1892475424,
            baseMipLevel: 3580472696,
            mipLevelCount: 602993372,
            format: "rgba8uint",
            label: "vTxGi"
        });
        const wEHwjqEtfOMhKCfwcbR = YonogLjPryeDHHRY.label
        const ErWMtnIjsrqryd = QJgQKDhIlnb.createCommandEncoder({
            label: "QibzrECbpYl"
        });
        ClIeWEILkWMgbfnilQ.destroy();
        const zVkNYDTdYGJMLM = dIIZprSBnMekz.limits
        const NDtEotQQSicI = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const NRrXTAziUIusYF = xHYJTMPCPhhrIciVxq.limits
        const ssKwAtEdlEymGd = ifEnEKsSlHCoXmcn.createQuerySet({
            count: 2433,
            label: "ibXusQAZFhV",
            type: "occlusion"
        });
        const ngTXVTDibMnrBVKmnzA = VqxaB.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.22220829480175963,
                    g: 0.6211176079523049,
                    b: 0.31296328263312734,
                    a: 0.07492405206360908
                },
                loadOp: "clear",
                storeOp: "discard",
                resolveTarget: YonogLjPryeDHHRY,
                view: YonogLjPryeDHHRY
            }],
            depthStencilAttachment: {
                depthClearValue: 0.8736007571140776,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 3415911118,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: gBtNn
            },
            label: "MymYlK",
            maxDrawCount: 449988555,
            occlusionQuerySet: ssKwAtEdlEymGd
        });
        const rBtVWDnrLJwUoCYP = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        context.configure({
            alphaMode: "opaque",
            colorSpace: "display-p3",
            device: kzACOQBDBcCmF,
            format: "bgra8unorm",
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST
        });
        const OWhYppgFMpgdKhu = ssKwAtEdlEymGd.count
        const RKMFCAIHYVdTCpMYOhJV = UlLyHPVFFPn.description
        const vBcDuGI = cUfaje.createBuffer({
            label: "mprsxUMQiJrWE",
            mappedAtCreation: false,
            size: 101772020,
            usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC
        });
        const ziHRcGBmbMJPxDNJV = ErWMtnIjsrqryd.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.9652580093616405,
                    g: 0.29449399892790196,
                    b: 0.4203513779109246,
                    a: 0.34771833628171867
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: gBtNn,
                view: VJNDovapNg
            }],
            depthStencilAttachment: {
                depthClearValue: 0.12782731206634357,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 1233726591,
                stencilLoadOp: "load",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: VJNDovapNg
            },
            label: "lVLPPWpJ",
            maxDrawCount: 2815617128,
            occlusionQuerySet: ssKwAtEdlEymGd
        });
        const pcTprthUFwBOr = UlLyHPVFFPn.description
        const lePhjvqpgUhCkdrv = navigator.gpu.wgslLanguageFeatures
        const BGAOwHKtdCPLAM = await navigator.gpu.getPreferredCanvasFormat();
        const LHLiwrHobWzpsClGWf = await rBtVWDnrLJwUoCYP.requestDevice();
        const pTJbc = wsCkVTEFMBqibDtaHf.features
        const GfEtybMUXZeenIk = PieHry.description
        const aKDGSWymxeJFIOVJaBRi = QJgQKDhIlnb.createTexture({
            dimension: "2d",
            format: "stencil8",
            label: "TYsKgNRorpaRebCnOBUA",
            sampleCount: 1,
            size: {
                width: 4124,
                height: 242,
                depthOrArrayLayers: 206
            },
            mipLevelCount: 7,
            usage: GPUTextureUsage.RENDER_ATTACHMENT,
            viewFormats: ["stencil8"]
        });
        const QnijCfMTvFxuTGtcTi = QJgQKDhIlnb.createCommandEncoder({
            label: "tLadDqAIQvvnbAemAE"
        });
        const wlzwnFuuGGWLtsJ = PieHry.architecture
        const lxOgtMBiUY = ssKwAtEdlEymGd.type
        const oQGqtwg = RBpVINnGSc.queue
        const QNDfYxW = await NDtEotQQSicI.requestDevice();
        const pMsmylwPHI = onqmWzK.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.42234294357273927,
                    g: 0.7379465557597644,
                    b: 0.4036839511149859,
                    a: 0.7950494537128042
                },
                loadOp: "load",
                storeOp: "store",
                resolveTarget: mrcMYhtnaEhGKlK,
                view: VJNDovapNg
            }],
            depthStencilAttachment: {
                depthClearValue: 0.1697939911453995,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 1018074930,
                stencilLoadOp: "load",
                stencilReadOnly: false,
                stencilStoreOp: "discard",
                view: SeXZAmMVaHJqM
            },
            label: "UOuBsGbId",
            maxDrawCount: 3426960383,
            occlusionQuerySet: ssKwAtEdlEymGd
        });
        const fWfLIMI = vInICRfeGnQt.features
        const lAOlKkeQqCwEX = await NDtEotQQSicI.requestAdapterInfo();
        const ILqtiFEYbKXocgxUQKu = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const QoKieuIurPIJRWQMoBdZ = context.canvas
        const zCRSkrPttBYOfj = WjbQobvD.features
        const sMGRmmrgPj = await NDtEotQQSicI.requestAdapterInfo();
        ssKwAtEdlEymGd.destroy();
        const bwcjBAoLEeF = UlLyHPVFFPn.device
        const fxvHliLbp = navigator.gpu.wgslLanguageFeatures
        const oVuPiiOQuTxNUaTHfz = xuuyQnTX.label
        const fptnaUqZynlgmi = lAOlKkeQqCwEX.vendor
        const LnEKBsiBK = wsCkVTEFMBqibDtaHf.createQuerySet({
            count: 3457,
            label: "sPgYSVt",
            type: "occlusion"
        });
        LnEKBsiBK.destroy();
        const zUtLHgdVOQbjFEB = WjbQobvD.createQuerySet({
            count: 2324,
            label: "TLRRTNx",
            type: "occlusion"
        });
        zUtLHgdVOQbjFEB.destroy();
        const usMRTalVILduMua = UYUrVVK.createQuerySet({
            count: 1062,
            label: "YckeTydeDMk",
            type: "occlusion"
        });
        const gkaIEwErRONAj = usMRTalVILduMua.type
        const xglhB = lAOlKkeQqCwEX.description
        const XWgpdfhpOLVopNLAyz = fvTWdHoC.architecture
        const jeuPu = ifEnEKsSlHCoXmcn.features
        const InnclwNNBZoP = lAOlKkeQqCwEX.device
        const ZpHxnbyvKscHjuima = XzSKvZMewnG.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.9643463340402842,
                    g: 0.5110821855338235,
                    b: 0.5511641673750535,
                    a: 0.523350795984081
                },
                loadOp: "clear",
                storeOp: "store",
                resolveTarget: mrcMYhtnaEhGKlK,
                view: VJNDovapNg
            }],
            depthStencilAttachment: {
                depthClearValue: 0.6585285402734526,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 4071009413,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: VJNDovapNg
            },
            label: "ncaDOMp",
            maxDrawCount: 515074376,
            occlusionQuerySet: usMRTalVILduMua
        });
        BtSFmLkFK.destroy();
        const kiMweHNjOWpIvsVH = onqmWzK.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.08602149545831139,
                    g: 0.6078200504219023,
                    b: 0.9036989882629469,
                    a: 0.2868141590782478
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: YonogLjPryeDHHRY,
                view: SeXZAmMVaHJqM
            }],
            depthStencilAttachment: {
                depthClearValue: 0.889668807352155,
                depthReadOnly: true,
                depthStoreOp: "store",
                stencilClearValue: 4020678753,
                stencilLoadOp: "load",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: mrcMYhtnaEhGKlK
            },
            label: "XAnCTrvOucJbrbfNcc",
            maxDrawCount: 3205688134,
            occlusionQuerySet: usMRTalVILduMua
        });
        usMRTalVILduMua.destroy();
        const faLRAlBgU = await navigator.gpu.getPreferredCanvasFormat();
        const kcJqqduL = await navigator.gpu.getPreferredCanvasFormat();
        const AFkvfqROEA = KzPlJcJUKayEhXOWmLaJ.createView({
            aspect: "all",
            dimension: "3d",
            arrayLayerCount: 1,
            baseArrayLayer: 1941440543,
            baseMipLevel: 417752694,
            mipLevelCount: 428257352,
            format: "rgba32uint",
            label: "sJuwMAtR"
        });
        const NtYeeBEpAjFgiCwGing = await dIIZprSBnMekz.requestDevice();
        ImvsJFtMnFKBQu.destroy();
        const mmLEzPshmWez = UlLyHPVFFPn.description
        const AGWOxxHssiM = await navigator.gpu.getPreferredCanvasFormat();
        const kCpVkxCQmOgScEXzy = navigator.gpu.wgslLanguageFeatures
        const nvfMlbt = IzzAPswpvTYvoYsUb.label
        const dbVgIdtOvQTPPa = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const fJlJri = await dIIZprSBnMekz.requestDevice();
        const kmPExAN = NtYeeBEpAjFgiCwGing.queue
        const xFfyTGBbtUgufONG = navigator.gpu.wgslLanguageFeatures
        const agIOivLyFpsUg = ifEnEKsSlHCoXmcn.createQuerySet({
            count: 2204,
            label: "MgqmwNNwYXGaPQhK",
            type: "occlusion"
        });
        agIOivLyFpsUg.destroy();
        const INszgfEvHtfVvXg = xuuyQnTX.createQuerySet({
            count: 422,
            label: "sOTPQCUzabLxMieQ",
            type: "occlusion"
        });
        INszgfEvHtfVvXg.destroy();
        const wSXONNLUEorVZgKJhDe = QNDfYxW.limits
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: wsCkVTEFMBqibDtaHf,
            format: "rgba16float",
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC
        });
        const KOvLnYHQWiZ = kzACOQBDBcCmF.features
        const QdQZgDacpIyU = xuuyQnTX.features
        const uFHqQflCjhBqLv = mrcMYhtnaEhGKlK.label
        const HjQwHvTDOzzUCCo = PieHry.vendor
        const TTNZrSCAzZfWb = fJlJri.createQuerySet({
            count: 220,
            label: "uYxeoidDUaoyVzFxmSX",
            type: "occlusion"
        });
        const hvTmRFrhucrvfhG = zILFiHe.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.619124271670655,
                    g: 0.49386394966844227,
                    b: 0.998728593233938,
                    a: 0.01111351293022711
                },
                loadOp: "clear",
                storeOp: "discard",
                resolveTarget: gBtNn,
                view: AFkvfqROEA
            }],
            depthStencilAttachment: {
                depthClearValue: 0.18904445263440872,
                depthReadOnly: false,
                depthStoreOp: "store",
                stencilClearValue: 2208408047,
                stencilLoadOp: "clear",
                stencilReadOnly: false,
                stencilStoreOp: "store",
                view: gBtNn
            },
            label: "sOBuNdp",
            maxDrawCount: 1644407783,
            occlusionQuerySet: TTNZrSCAzZfWb
        });
        const rqUTWZLjXEHkhHpx = await xHYJTMPCPhhrIciVxq.requestAdapterInfo();
        const HWmGqelChfRfd = QNDfYxW.queue
        const HDALhTmdgyy = QJgQKDhIlnb.createCommandEncoder({
            label: "ySJUYlBWpZElxLbBMatd"
        });
        const cHacdNLXyZWvQNxFy = TTNZrSCAzZfWb.count
        const zzUBetGsQlLHGAOSRhx = UYUrVVK.limits
        const YeqKEMWPcgtnvkblE = TTNZrSCAzZfWb.count
        const BQbiOtdRDVpKM = sybPqAOAXhBA.architecture
        const taRJphoNTTkzRPXAuSwA = NDtEotQQSicI.limits
        const YZqlsSaMhaEPNhYgy = NDtEotQQSicI.features
        const cNYEaXwm = context.canvas
        const UiNPc = fvTWdHoC.architecture
        const CibpaXzFtxYhvHCdLF = await dbVgIdtOvQTPPa.requestAdapterInfo();
        const PxvbiEHLdft = QNDfYxW.features
        const PiDswXu = IzzAPswpvTYvoYsUb.label
        dvfpxvkYDJrNEDacU.destroy();
        const VXLrnKovAle = rqUTWZLjXEHkhHpx.architecture
        TTNZrSCAzZfWb.destroy();
        const upPJYAdJhmZ = onqmWzK.label
        const nEqqg = context.canvas
        const FVZxZ = await navigator.gpu.getPreferredCanvasFormat();
        const ZOZsrVbCVtzaUmfjc = eRfqOMXAdZijtg.createCommandEncoder({
            label: "cLbWLXZabG"
        });
        const itUyIeJKHo = QNDfYxW.createQuerySet({
            count: 2767,
            label: "eIgBvwiOsEllO",
            type: "occlusion"
        });
        const SsApxYTLYgQ = itUyIeJKHo.count
        const XiJYqdUTddnGuThEuT = UlLyHPVFFPn.device
        const ZnupzXKkjodlMVzbZqm = lAOlKkeQqCwEX.device
        context.unconfigure();
        const nCBDIwQjRVOYmOHqeNh = itUyIeJKHo.count
        const dDVUILWPpUnWIFe = rBtVWDnrLJwUoCYP.isFallbackAdapter
        const amGnjefLOJSNvRDmUaS = SeXZAmMVaHJqM.label
        const AqlLKIzkBlzEJeGCS = UlLyHPVFFPn.device
        const iGgvjS = wsCkVTEFMBqibDtaHf.label
        context.unconfigure();
        const EjixP = UlLyHPVFFPn.description
        const hsHfdiJROacwT = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const GGZXVXstmw = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const AZMuxFPlERgBYkRQbN = context.canvas
        const dBakvBZdJGKDehBVIq = QJgQKDhIlnb.createTexture({
            dimension: "2d",
            format: "r8unorm",
            label: "hikLfMMVy",
            sampleCount: 1,
            size: {
                width: 1561,
                height: 7629,
                depthOrArrayLayers: 41
            },
            mipLevelCount: 7,
            usage: GPUTextureUsage.COPY_DST,
            viewFormats: ["r8unorm"]
        });
        const seKdWNo = context.canvas
        const WRdarIshgpD = context.canvas
        const ZlenkuUcya = itUyIeJKHo.label
        const mfzaRNN = NtYeeBEpAjFgiCwGing.features
        const dqSGhOQjyUksNPvNAkO = GGZXVXstmw.isFallbackAdapter
        const KiELE = QJgQKDhIlnb.label
        itUyIeJKHo.destroy();
        const DdbCXksQFpEEHfPRVXjy = rqUTWZLjXEHkhHpx.vendor
        const fVfWA = context.canvas
        const gdJHwXfaEslvPMdEk = wsCkVTEFMBqibDtaHf.createTexture({
            dimension: "3d",
            format: "rg16sint",
            label: "zWXbt",
            sampleCount: 1,
            size: {
                width: 1429,
                height: 1780,
                depthOrArrayLayers: 1790
            },
            mipLevelCount: 8,
            usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
            viewFormats: ["rg16sint"]
        });
        const qAVguAaDnJAGHY = xHYJTMPCPhhrIciVxq.isFallbackAdapter
        RfDkbkoFqiFdfYoT.destroy();
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: fnOyOA,
            format: "rgba16float",
            usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST
        });
        const jiJxlcUwqLMSCEZo = RBpVINnGSc.queue
        const UYdaZhTtYgVR = xuuyQnTX.createQuerySet({
            count: 1950,
            label: "rAOypIlF",
            type: "occlusion"
        });
        const qftroAnxIQGWM = mrcMYhtnaEhGKlK.label
        const mANmibip = context.canvas
        const cYgOiwDIwyHvK = await xHYJTMPCPhhrIciVxq.requestDevice();
        const urOIypOPOetXDx = UlLyHPVFFPn.architecture
        const gxMNTfEJ = navigator.gpu.wgslLanguageFeatures
        const yVNXLvgxkgneFYEAn = ifEnEKsSlHCoXmcn.createBuffer({
            label: "eJQvvTr",
            mappedAtCreation: true,
            size: 112858316,
            usage: GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX
        });
        context.unconfigure();
        const hktmZuxawqMIItjPVsD = await rBtVWDnrLJwUoCYP.requestDevice();
        const DaASAAuXDqWCnBfp = sybPqAOAXhBA.device
        const BqvYMcSU = dIIZprSBnMekz.features
        const skAHpmJkup = kPgDCENDqg.vendor
        const bJVQRylQCGXF = UYdaZhTtYgVR.type
        const YdCygStt = OZTeVSShNx.createView({
            aspect: "all",
            dimension: "cube-array",
            arrayLayerCount: 568889226,
            baseArrayLayer: 2828266051,
            baseMipLevel: 1274392105,
            mipLevelCount: 1750566325,
            format: "rgba8snorm",
            label: "RwawYiiiwh"
        });
        const QydsCIWdXFVlvYbrf = context.canvas
        const hoHspwQfqCDcUbchDYFb = cUfaje.createQuerySet({
            count: 518,
            label: "GZakeqVfTRefflmIks",
            type: "occlusion"
        });
        const yatOhSwwUhWmugIz = gdJHwXfaEslvPMdEk.createView({
            aspect: "all",
            dimension: "2d",
            arrayLayerCount: 1,
            baseArrayLayer: 2377811303,
            baseMipLevel: 4119258676,
            mipLevelCount: 1773241116,
            format: "rg16uint",
            label: "QlNxhALwm"
        });
        const wTXsmgdOoQWYp = UYUrVVK.label
        const vkvwTW = wsCkVTEFMBqibDtaHf.createTexture({
            dimension: "2d",
            format: "rgba8unorm",
            label: "jXTWrWzrZmrPBVCe",
            sampleCount: 1,
            size: {
                width: 2470,
                height: 603,
                depthOrArrayLayers: 49
            },
            mipLevelCount: 6,
            usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
            viewFormats: ["rgba8unorm-srgb"]
        });
        const dnXaP = KzPlJcJUKayEhXOWmLaJ.createView({
            aspect: "all",
            dimension: "1d",
            arrayLayerCount: 1,
            baseArrayLayer: 4057149915,
            baseMipLevel: 3836934077,
            mipLevelCount: 75711969,
            format: "rgba32uint",
            label: "wWseROZDIrVUjaay"
        });
        const dgRyyCSfqkNusAKDzdFd = rBtVWDnrLJwUoCYP.features
        const CPGgSBM = WjbQobvD.label
        const oaqQlOMvji = xuuyQnTX.queue
        const JqPSJdWYujOAsljvU = fJlJri.createBuffer({
            label: "NWxfOtqPihaI",
            mappedAtCreation: false,
            size: 159343144,
            usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX
        });
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: eRfqOMXAdZijtg,
            format: "rgba8unorm",
            usage: GPUTextureUsage.STORAGE_BINDING
        });
        const rLoZLIuauPlfGaDi = navigator.gpu.wgslLanguageFeatures
        const dGKYdjGiZLTsHs = fJlJri.features
        const tayzzVfYIskbQ = wsCkVTEFMBqibDtaHf.label
        const nnzmnxF = fnOyOA.queue
        const YThAZiaMrXR = dnXaP.label
        const QdDWckdoMQFWAqXZb = UYUrVVK.label
        const BpUGaCJyWmLwi = UYdaZhTtYgVR.type
        const QxMtXTWtdcyOtTHdE = sMGRmmrgPj.architecture
        const eMUsdTUEOTiRKTUdRzyn = navigator.gpu.wgslLanguageFeatures
        const RYkcKeGDemWWeHCSXI = pVXvihStFv.createQuerySet({
            count: 2317,
            label: "EphvOvSNKnYmSeItV",
            type: "occlusion"
        });
        const LeMnJeIjkhmkvgnIaiEJ = fvTWdHoC.architecture
        const EYfsBN = eRfqOMXAdZijtg.createCommandEncoder({
            label: "BjiEBXSEDYkM"
        });
        const fKWbC = IzzAPswpvTYvoYsUb.label
        const tMvYUaigkCzWfJKvacw = await GGZXVXstmw.requestAdapterInfo();
        const cDcjL = context.canvas
        const HOYVeZOXlBSnWUwlgi = ILqtiFEYbKXocgxUQKu.isFallbackAdapter
        const hwjWnIG = GGZXVXstmw.isFallbackAdapter
        const IXJEmugLcYcyitL = await navigator.gpu.getPreferredCanvasFormat();
        const vOqWktkKKHD = await dbVgIdtOvQTPPa.requestDevice();
        const YekSIJhACLXxv = context.canvas
        const kQBEtAXfrSMYmQbqsp = dIIZprSBnMekz.limits
        const GDSPguaBXhNwlr = navigator.gpu.wgslLanguageFeatures
        const aemPbbRsMLpHnZpQGDr = UYdaZhTtYgVR.label
        const VWpRFFzUJMuuSDL = WhmvDVTiLNnCNqzZYcG.createView({
            aspect: "all",
            dimension: "2d-array",
            arrayLayerCount: 848405436,
            baseArrayLayer: 1679420546,
            baseMipLevel: 2604737337,
            mipLevelCount: 1819720518,
            format: "rg32uint",
            label: "qFbWLgpCbmdi"
        });
        const DRcqVGYZSQ = PieHry.device
        const pjnfstzrwgilFwYudEgd = VqxaB.label
        const wjVSOGFptXeVjmrWHe = context.canvas
        const FiFaYISLnvQ = xuuyQnTX.createCommandEncoder({
            label: "IptvJdEUBSoIumulgR"
        });
        const HJCKNwVXvUSU = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const iXIfgInDGnzQuavFVI = UYdaZhTtYgVR.type
        const lNLCwzPW = zILFiHe.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.7070660736323215,
                    g: 0.9516584473895981,
                    b: 0.8143948818409101,
                    a: 0.2542320256323952
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: yatOhSwwUhWmugIz,
                view: yatOhSwwUhWmugIz
            }],
            depthStencilAttachment: {
                depthClearValue: 0.6926068357689923,
                depthReadOnly: true,
                depthStoreOp: "store",
                stencilClearValue: 633294547,
                stencilLoadOp: "clear",
                stencilReadOnly: false,
                stencilStoreOp: "discard",
                view: mrcMYhtnaEhGKlK
            },
            label: "qNguaZCgJQtkqtNOuo",
            maxDrawCount: 1651846989,
            occlusionQuerySet: hoHspwQfqCDcUbchDYFb
        });
        const ZQlJIdSR = pVXvihStFv.features
        const wwoiZtzwTDDUjQq = hoHspwQfqCDcUbchDYFb.type
        const IMzlcf = context.canvas
        const NjdVFqkCzjhxv = context.canvas
        const kcuJzIhVjcHIopdVKmv = fnOyOA.limits
        const WjUtDnsaN = RBpVINnGSc.createQuerySet({
            count: 2656,
            label: "HoaFVgQZwmKvDcBUcE",
            type: "occlusion"
        });
        const uQiDIZTf = navigator.gpu.wgslLanguageFeatures
        const hpPlxoTEnjY = vInICRfeGnQt.features
        const zBHOcpSgvXFqkZg = UioQheDsWYpsBKr.vendor
        const qNZLElwJxxjrrdtvEx = fvTWdHoC.device
        const ckPAKvsv = UYdaZhTtYgVR.type
        const JfqWEgAmAO = PieHry.description
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: fJlJri,
            format: "bgra8unorm",
            usage: GPUTextureUsage.COPY_SRC
        });
        const NGfoARriGW = NDtEotQQSicI.features
        const RmHapJtQZ = await HJCKNwVXvUSU.requestAdapterInfo();
        const bBTbcSFHOlSdKdF = await hsHfdiJROacwT.requestDevice();
        const xIeheRqgxKLKHJWTwM = NtYeeBEpAjFgiCwGing.createQuerySet({
            count: 2491,
            label: "TUtTzoxLjzLT",
            type: "occlusion"
        });
        const VNIkVrvPFeVYXbZWMg = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const qDeQYUdeyGgB = await NDtEotQQSicI.requestAdapterInfo();
        WhmvDVTiLNnCNqzZYcG.destroy();
        const xoHcWjqBSOvqrmiAKRG = VqxaB.label
        const YwEcOLYElHLEMRehCV = lAOlKkeQqCwEX.description
        const mxWUUGBw = IzzAPswpvTYvoYsUb.label
        OZTeVSShNx.destroy();
        const VZXzixSeMKMvpSIGP = RYkcKeGDemWWeHCSXI.label
        const iEersJVnpafgQvpaEV = await dIIZprSBnMekz.requestDevice();
        const eEzKgaLcH = navigator.gpu.wgslLanguageFeatures
        const kGeoOSihAuuAhDgqF = WjbQobvD.label
        const kXHxBrKifOZs = UYUrVVK.label
        const XUDueMPGrOwYmaaz = IOrQNUDVNmDsPqIlXbB.limits
        const NqUUqeHOATA = await navigator.gpu.getPreferredCanvasFormat();
        const qeVWPJvOR = wsCkVTEFMBqibDtaHf.features
        const zqSvUxAItzBpMRvMhG = rqUTWZLjXEHkhHpx.vendor
        const jQFAVeikWIocpqNM = WjbQobvD.label
        const FzHCBDQOYyfDPk = LHLiwrHobWzpsClGWf.queue
        const XnVDnMaNzeDC = TnLlsGJUlHozGOTyYET.createView({
            aspect: "all",
            dimension: "2d-array",
            arrayLayerCount: 3886499572,
            baseArrayLayer: 3501291976,
            baseMipLevel: 1420233386,
            mipLevelCount: 950978052,
            format: "rg8snorm",
            label: "wCHHlFoljJEz"
        });
        const aGwHDCBifcULiBaI = FiFaYISLnvQ.label
        const IzsaTNboAUaAoNsFag = iEersJVnpafgQvpaEV.createTexture({
            dimension: "3d",
            format: "r16sint",
            label: "fksHfxIaFnGD",
            sampleCount: 1,
            size: {
                width: 1531,
                height: 273,
                depthOrArrayLayers: 390
            },
            mipLevelCount: 4,
            usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT,
            viewFormats: ["r16sint"]
        });
        const LJCPfPOmIPIPBODLAA = sMGRmmrgPj.device
        const wotbq = hktmZuxawqMIItjPVsD.features
        const YESogruOvwbxDOMpghO = NDtEotQQSicI.features
        const oDtcUC = RmHapJtQZ.device
        const CiJWlPOfWMAhmc = QnijCfMTvFxuTGtcTi.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.19430339424098464,
                    g: 0.28909806868923393,
                    b: 0.8765330394919085,
                    a: 0.25094736108588644
                },
                loadOp: "load",
                storeOp: "store",
                resolveTarget: XnVDnMaNzeDC,
                view: VWpRFFzUJMuuSDL
            }],
            depthStencilAttachment: {
                depthClearValue: 0.2154638872964657,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 213097896,
                stencilLoadOp: "load",
                stencilReadOnly: false,
                stencilStoreOp: "store",
                view: mrcMYhtnaEhGKlK
            },
            label: "xZgCsscFbfl",
            maxDrawCount: 2094495601,
            occlusionQuerySet: UYdaZhTtYgVR
        });
        const KQtYweWsDNsnQBVeO = XnVDnMaNzeDC.label
        const IJgoNCF = await hsHfdiJROacwT.requestDevice();
        viJRFEMvp.destroy();
        const VXEyCHw = await navigator.gpu.getPreferredCanvasFormat();
        const rQkCYjLHozlXMEiAD = hxPZkg.createView({
            aspect: "all",
            dimension: "cube",
            arrayLayerCount: 4,
            baseArrayLayer: 1198528627,
            baseMipLevel: 1359962755,
            mipLevelCount: 2583550952,
            format: "rgba32sint",
            label: "xCBSUcSnvOdshcLbAV"
        });
        const KPMIrZSzYLuVGmoCmY = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const BAmSgfuLqxIJuYHa = AFkvfqROEA.label
        RYkcKeGDemWWeHCSXI.destroy();
        const eFMGaEnQNaKiUA = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const ebxKHbwOtG = await navigator.gpu.getPreferredCanvasFormat();
        const PvmbbUBeZDm = rQkCYjLHozlXMEiAD.label
        const jkBYaTh = await navigator.gpu.getPreferredCanvasFormat();
        const vjEqHPd = QJgQKDhIlnb.createBuffer({
            label: "mWxPNwCIySKMS",
            mappedAtCreation: true,
            size: 55708312,
            usage: GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE
        });
        const JuFtpHPIcLQGwSrqbo = await KPMIrZSzYLuVGmoCmY.requestDevice();
        const MxeRGrLtHxNvLSyRWtnA = AFkvfqROEA.label
        const PxihHrciUDneF = context.canvas
        const SFuVUCvrJEPWasDlJUAG = RBpVINnGSc.createBuffer({
            label: "JJDpyPNyjqrcpKVc",
            mappedAtCreation: true,
            size: 234685624,
            usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
        });
        IzsaTNboAUaAoNsFag.destroy();
        const JBJGwU = ZOZsrVbCVtzaUmfjc.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.8754951480756593,
                    g: 0.2542912954169645,
                    b: 0.11526854075933268,
                    a: 0.2786153907209341
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: rQkCYjLHozlXMEiAD,
                view: mrcMYhtnaEhGKlK
            }],
            depthStencilAttachment: {
                depthClearValue: 0.7682290593157436,
                depthReadOnly: true,
                depthStoreOp: "store",
                stencilClearValue: 3955816143,
                stencilLoadOp: "load",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: YdCygStt
            },
            label: "mMMWUkOFqNOOsKMenJON",
            maxDrawCount: 2275400051,
            occlusionQuerySet: hoHspwQfqCDcUbchDYFb
        });
        const kMpqvpQENnPNjDw = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const yznTXoa = await NDtEotQQSicI.requestAdapterInfo();
        const nCClEwnXOWpx = pVXvihStFv.createQuerySet({
            count: 2071,
            label: "hizIMwKe",
            type: "occlusion"
        });
        const nHhyNEPe = await NDtEotQQSicI.requestDevice();
        const YXjpUIVsiQOaBzJTEF = ErWMtnIjsrqryd.label
        hoHspwQfqCDcUbchDYFb.destroy();
        const krYuplLxYbWZgX = context.canvas
        const taTunExzCoJeNxCaCXK = await eFMGaEnQNaKiUA.requestAdapterInfo();
        const bAYSaXl = await navigator.gpu.getPreferredCanvasFormat();
        const avyNwDfByiQWOsE = nCClEwnXOWpx.type
        nCClEwnXOWpx.destroy();
        const TFxOhfwDWVk = navigator.gpu.wgslLanguageFeatures
        const WgZyvd = context.canvas
        const oVlqsPFFrdOfjNaQTmT = xIeheRqgxKLKHJWTwM.count
        const YoBLssRqyRvGYSoU = CibpaXzFtxYhvHCdLF.device
        WjUtDnsaN.destroy();
        const EMPzYEEebsqis = context.canvas
        const xFHIyYvNCSBP = eRfqOMXAdZijtg.label
        const ZgHNDiHqPHyAOU = CibpaXzFtxYhvHCdLF.device
        const tDdGMlYNO = await NDtEotQQSicI.requestAdapterInfo();
        const aEyJhUcmOh = rBtVWDnrLJwUoCYP.isFallbackAdapter
        TnLlsGJUlHozGOTyYET.destroy();
        const FzyfzRvDg = EYfsBN.label
        const fFMhQZHs = await NDtEotQQSicI.requestDevice();
        const lEdCkHpORDoUAtpBVUIr = await hsHfdiJROacwT.requestDevice();
        pyanIyoqbEwb.destroy();
        const gDTeRuJUxEHhvJljwh = UYdaZhTtYgVR.type
        const NpztL = await navigator.gpu.getPreferredCanvasFormat();
        const ASbWZ = dIIZprSBnMekz.features
        const eIwfUspWFULyFitWbAN = eRfqOMXAdZijtg.createBuffer({
            label: "WshSeIVjqS",
            mappedAtCreation: false,
            size: 148088220,
            usage: GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC
        });
        const EcXEvuhSDLeFWpvsQK = lAOlKkeQqCwEX.device
        const VtYhMumvlXBkHGK = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const ySKKN = await navigator.gpu.getPreferredCanvasFormat();
        const qIjbFBnp = UlLyHPVFFPn.vendor
        const wQCvvkQeeCaxz = rBtVWDnrLJwUoCYP.limits
        const iSEsixKtluahDodgbulZ = WjbQobvD.createCommandEncoder({
            label: "azQAZWxdwUYQ"
        });
        const qtWXJ = dBakvBZdJGKDehBVIq.createView({
            aspect: "all",
            dimension: "2d",
            arrayLayerCount: 1,
            baseArrayLayer: 1136784190,
            baseMipLevel: 774216781,
            mipLevelCount: 1519186392,
            format: "rgba8uint",
            label: "VtsxUBDuVjisrdX"
        });
        const NRDHh = context.canvas
        const EnZyvWDHEEc = WjbQobvD.label
        const cRwYAgxwmYaAAkT = PieHry.device
        const vxwWFsxMse = context.canvas
        const GqewEQapS = hsHfdiJROacwT.limits
        const rvKzjmNeDnpVB = xHYJTMPCPhhrIciVxq.isFallbackAdapter
        const hMWSddsUEhCkVpCV = UYdaZhTtYgVR.type
        const MPyvMMrVZSoLwkVMK = eRfqOMXAdZijtg.createQuerySet({
            count: 1958,
            label: "rMtWDAWXW",
            type: "occlusion"
        });
        const SQZEFERsjXBynr = fvTWdHoC.description
        const lusBLa = await navigator.gpu.getPreferredCanvasFormat();
        const KkurUOZmsXOx = UYdaZhTtYgVR.label
        const NFJRPfayi = LHLiwrHobWzpsClGWf.queue
        const rsIzFNnIThn = WjbQobvD.createTexture({
            dimension: "3d",
            format: "r32uint",
            label: "JkhnDohYEtjQAlpFZSYa",
            sampleCount: 1,
            size: {
                width: 625,
                height: 1098,
                depthOrArrayLayers: 346
            },
            mipLevelCount: 4,
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
            viewFormats: ["r32uint"]
        });
        const lpbxBOMIhV = await navigator.gpu.getPreferredCanvasFormat();
        xIeheRqgxKLKHJWTwM.destroy();
        TGultbhXygfAmjZP.destroy();
        const famFsOfTBvJ = rBtVWDnrLJwUoCYP.isFallbackAdapter
        const VXaPbAZEBlBKUFXEJb = tDdGMlYNO.vendor
        const OZXjWudSTeuW = sMGRmmrgPj.device
        const kTSpxbZSELxHaYsbz = tMvYUaigkCzWfJKvacw.description
        const QhKkAbKocNNDYuRUwy = pVXvihStFv.createBuffer({
            label: "gFqvRLBxNqp",
            mappedAtCreation: true,
            size: 81955284,
            usage: GPUBufferUsage.QUERY_RESOLVE
        });
        const QdfNqXShlYK = UioQheDsWYpsBKr.device
        const BannTYLoKetVh = VtYhMumvlXBkHGK.limits
        const OpFnXvuUfQiIy = kPgDCENDqg.device
        const ukERpwGLDyaSU = IJgoNCF.createQuerySet({
            count: 215,
            label: "kDcqxnHHrnFohUlhK",
            type: "occlusion"
        });
        const xIXmytpUNXgxRokTIAqg = taTunExzCoJeNxCaCXK.architecture
        const TRICTgGeaFXctv = await KPMIrZSzYLuVGmoCmY.requestAdapterInfo();
        const JwnuLkDcKITY = RBpVINnGSc.createTexture({
            dimension: "3d",
            format: "rg8snorm",
            label: "bTjXHqHEfIZuyMLTF",
            sampleCount: 1,
            size: {
                width: 785,
                height: 1265,
                depthOrArrayLayers: 1675
            },
            mipLevelCount: 9,
            usage: GPUTextureUsage.TEXTURE_BINDING,
            viewFormats: ["rg8snorm"]
        });
        const EhYeQDNlTHXMPz = FiFaYISLnvQ.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.5513895833847875,
                    g: 0.2692499004739418,
                    b: 0.7611759687986709,
                    a: 0.7126612969482831
                },
                loadOp: "load",
                storeOp: "store",
                resolveTarget: YonogLjPryeDHHRY,
                view: dnXaP
            }],
            depthStencilAttachment: {
                depthClearValue: 0.13683388429516197,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 559789633,
                stencilLoadOp: "clear",
                stencilReadOnly: false,
                stencilStoreOp: "discard",
                view: rQkCYjLHozlXMEiAD
            },
            label: "XbaHLf",
            maxDrawCount: 3493995633,
            occlusionQuerySet: UYdaZhTtYgVR
        });
        const aVGgPqK = navigator.gpu.wgslLanguageFeatures
        const UtIzDz = navigator.gpu.wgslLanguageFeatures
        const YjuzPGzkVpiPQ = vInICRfeGnQt.createQuerySet({
            count: 2657,
            label: "EJngz",
            type: "occlusion"
        });
        const bceAjLDChrtONYXHVepa = eRfqOMXAdZijtg.features
        context.unconfigure();
        const YsmVsof = PieHry.description
        const ayyHskyqiXn = eFMGaEnQNaKiUA.limits
        const KAhXWAMCTrRSFcylJd = wsCkVTEFMBqibDtaHf.createTexture({
            dimension: "2d",
            format: "r32sint",
            label: "biUTBsJIuP",
            sampleCount: 1,
            size: {
                width: 2832,
                height: 6144,
                depthOrArrayLayers: 179
            },
            mipLevelCount: 11,
            usage: GPUTextureUsage.RENDER_ATTACHMENT,
            viewFormats: ["r32sint"]
        });
        const MeCLJ = context.canvas
        const JwYnwIEcFyGwI = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const fZgNHVdMfSJbOcJOcHLG = dbVgIdtOvQTPPa.isFallbackAdapter
        UYdaZhTtYgVR.destroy();
        const eWauHF = MPyvMMrVZSoLwkVMK.label
        const LXVTXVIejByeF = fnOyOA.label
        context.unconfigure();
        const TTUqsdkfP = CibpaXzFtxYhvHCdLF.device
        const piBiB = bBTbcSFHOlSdKdF.createCommandEncoder({
            label: "dtPpRXydwvDHnjnUFxT"
        });
        const SFUQmGyzzrjmxNHNc = hsHfdiJROacwT.features
        context.configure({
            alphaMode: "opaque",
            colorSpace: "srgb",
            device: UYUrVVK,
            format: "bgra8unorm",
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC
        });
        const DHYMwrIbmzMkc = context.getCurrentTexture();
        const vJdEneFQixx = yatOhSwwUhWmugIz.label
        const aPbMFujcbTQ = QNDfYxW.createBuffer({
            label: "IpQHOGxmpEZZDlXuZjU",
            mappedAtCreation: true,
            size: 194283356,
            usage: GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
        });
        ukERpwGLDyaSU.destroy();
        const XRFzCD = QJgQKDhIlnb.limits
        const gVtcLbVxDnhvLp = navigator.gpu.wgslLanguageFeatures
        const CSlfJQPImlUo = VNIkVrvPFeVYXbZWMg.isFallbackAdapter
        const hKNIjGFDY = WjbQobvD.queue
        const NTEhEFEKi = iEersJVnpafgQvpaEV.label
        const QKyZf = fJlJri.createQuerySet({
            count: 2592,
            label: "fqHulqxabzdg",
            type: "occlusion"
        });
        const AjarcNnUbaKhHDzctd = fJlJri.createBuffer({
            label: "aoGQbXxofhBEowZZabl",
            mappedAtCreation: true,
            size: 222446644,
            usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
        });
        const WXfmKqFX = QKyZf.count
        const HJpDfvBYHqFMRrryJ = fvTWdHoC.vendor
        const VnKkZVDJeHmmaPgDjHv = MPyvMMrVZSoLwkVMK.type
        const XqgWeVzcyElZpPhWtD = LHLiwrHobWzpsClGWf.features
        const CMTZinb = IOrQNUDVNmDsPqIlXbB.limits
        const dHKGDAaFkswXzV = context.canvas
        const tPGreQODXAYEA = UYUrVVK.limits
        MPyvMMrVZSoLwkVMK.destroy();
        const FXmkO = VtYhMumvlXBkHGK.limits
        const lRhdFrXR = lEdCkHpORDoUAtpBVUIr.features
        const upsBmcXXGkFDbWvY = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const VrrRkypkLnDsdUjwx = navigator.gpu.wgslLanguageFeatures
        const OccgSftAgCYapxrj = cYgOiwDIwyHvK.createBuffer({
            label: "HGQCGbaliZaFtasXqHf",
            mappedAtCreation: false,
            size: 242896028,
            usage: GPUBufferUsage.MAP_READ
        });
        const TxsTUajgGzvOnCZuw = await IOrQNUDVNmDsPqIlXbB.requestDevice();
        const lKGKzPuxSil = iSEsixKtluahDodgbulZ.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.44884856303989507,
                    g: 0.5758925358313041,
                    b: 0.06343628807236923,
                    a: 0.31424515064726266
                },
                loadOp: "clear",
                storeOp: "store",
                resolveTarget: AFkvfqROEA,
                view: SeXZAmMVaHJqM
            }],
            depthStencilAttachment: {
                depthClearValue: 0.19870883613900292,
                depthReadOnly: false,
                depthStoreOp: "store",
                stencilClearValue: 1815615794,
                stencilLoadOp: "load",
                stencilReadOnly: false,
                stencilStoreOp: "discard",
                view: XnVDnMaNzeDC
            },
            label: "iVEmyZvpmVfmUxtso",
            maxDrawCount: 1396270093,
            occlusionQuerySet: YjuzPGzkVpiPQ
        });
        const pnOWdimiwtYv = await VtYhMumvlXBkHGK.requestDevice();
        const POUxPvQsIsW = YjuzPGzkVpiPQ.count
        const rWvGJLNiCImOlef = await kMpqvpQENnPNjDw.requestDevice();
        const fRtaHttyzpQ = QKyZf.label
        const JDvDsxTLi = GGZXVXstmw.limits
        const RHrtabuMgCKisovvPMlZ = QNDfYxW.limits
        const eUutTSyOAUKVD = LHLiwrHobWzpsClGWf.features
        const ehMLqTYWWLEyJPSnL = VWpRFFzUJMuuSDL.label
        const TUIRWusEZdYaiKnd = nHhyNEPe.features
        const YWnsAawjJYsQJFvBTz = await HJCKNwVXvUSU.requestDevice();
        YjuzPGzkVpiPQ.destroy();
        const uEhyXLoD = hktmZuxawqMIItjPVsD.createTexture({
            dimension: "2d",
            format: "rgba8unorm-srgb",
            label: "JtTBLgu",
            sampleCount: 4,
            size: {
                width: 4476,
                height: 6649,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
            viewFormats: ["rgba8unorm"]
        });
        const LninE = await HJCKNwVXvUSU.requestAdapterInfo();
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: UYUrVVK,
            format: "rgba16float",
            usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC
        });
        const OeWkfFFrmtY = navigator.gpu.wgslLanguageFeatures
        const dPNKkMoroEaIviO = context.canvas
        const PdGmgnypv = cUfaje.createCommandEncoder({
            label: "QSsybSX"
        });
        const VoNkPlzMocWkGkDnXmuC = sybPqAOAXhBA.architecture
        const ZXYBMGh = await GGZXVXstmw.requestDevice();
        const jtKVBzAepbhCizZu = CibpaXzFtxYhvHCdLF.device
        const KRhnMHctIupBMKAcgTu = await JwYnwIEcFyGwI.requestDevice();
        const xdxLgIm = zILFiHe.label
        const slifJfVSOzZESwruY = HJCKNwVXvUSU.limits
        const DrQeZ = context.canvas
        const iFkmwe = sMGRmmrgPj.description
        const vrCBItoWgBYvBHpPVHQj = navigator.gpu.wgslLanguageFeatures
        const xHGWzWVS = fFMhQZHs.createBuffer({
            label: "XhvzOQqITUSbjuh",
            mappedAtCreation: false,
            size: 169895140,
            usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM
        });
        const qrMeefvAxQhLcmoMo = context.canvas
        const rhovHvoTNf = context.canvas
        const oxfBAhuVTXaLJodHGOJG = XzSKvZMewnG.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.8689500202124024,
                    g: 0.7124931035516027,
                    b: 0.4398358013151086,
                    a: 0.296352752971315
                },
                loadOp: "clear",
                storeOp: "store",
                resolveTarget: dnXaP,
                view: YdCygStt
            }],
            depthStencilAttachment: {
                depthClearValue: 0.23652826314872166,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 3630840555,
                stencilLoadOp: "load",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: VWpRFFzUJMuuSDL
            },
            label: "AWOLTNcaidOXrYwHvgF",
            maxDrawCount: 264439777,
            occlusionQuerySet: QKyZf
        });
        const brfqhm = await navigator.gpu.getPreferredCanvasFormat();
        QKyZf.destroy();
        const iPWsOYauZRjZwEzvxyt = oaUBegkiJusHw.createView({
            aspect: "all",
            dimension: "cube-array",
            arrayLayerCount: 734583060,
            baseArrayLayer: 2854914898,
            baseMipLevel: 1698577921,
            mipLevelCount: 3754914150,
            format: "rg16uint",
            label: "MuaANmAgBCnnEf"
        });
        const GTUBBHynozwlXSojF = TxsTUajgGzvOnCZuw.label
        const HVOrkgcdkebFhju = dIIZprSBnMekz.features
        const bOryxWX = IJgoNCF.limits
        const fKAhoZ = yatOhSwwUhWmugIz.label
        const dhQXfh = navigator.gpu.wgslLanguageFeatures
        const wKeYcXkJYxwwFZetP = lAOlKkeQqCwEX.architecture
        const bGMmVEkNIgehublIzQT = CibpaXzFtxYhvHCdLF.device
        const xpovetOHQQ = AFkvfqROEA.label
        const TkafjHEJaEna = hktmZuxawqMIItjPVsD.createQuerySet({
            count: 1452,
            label: "FaRddEgIEvOXZyhg",
            type: "occlusion"
        });
        const yxDHyVVK = TkafjHEJaEna.label
        const XWfglnbw = context.canvas
        const NjZEETdpSEjQGOHDz = UYUrVVK.limits
        const cPGBNDPTMCjL = FUywO.createView({
            aspect: "all",
            dimension: "2d-array",
            arrayLayerCount: 1450247946,
            baseArrayLayer: 1982934519,
            baseMipLevel: 1056744288,
            mipLevelCount: 768742341,
            format: "r32float",
            label: "GgCsx"
        });
        const xrIPRBZhATckD = fFMhQZHs.createCommandEncoder({
            label: "xWWrvYrdtMEOOumXw"
        });
        const QXsEpQRFyCBgKxbQ = await GGZXVXstmw.requestDevice();
        const enBVGdcTuMUSOWp = TkafjHEJaEna.count
        const xEEXWsRegSBiIs = qDeQYUdeyGgB.architecture
        const fNjCWjiLcCRshtSI = tMvYUaigkCzWfJKvacw.description
        const JcRrDxbI = await navigator.gpu.getPreferredCanvasFormat();
        const UQvVvJzLLzilssAmnqf = xuuyQnTX.features
        const cicMfmwL = rsIzFNnIThn.createView({
            aspect: "all",
            dimension: "2d",
            arrayLayerCount: 1,
            baseArrayLayer: 2584927160,
            baseMipLevel: 986766333,
            mipLevelCount: 1131911217,
            format: "rg8snorm",
            label: "WqZpX"
        });
        const YVrXZvFRdwPCbFkN = KRhnMHctIupBMKAcgTu.limits
        TkafjHEJaEna.destroy();
        const oriuveLSuM = pVXvihStFv.createQuerySet({
            count: 3318,
            label: "sKQjgPdUDTJLQ",
            type: "occlusion"
        });
        hxPZkg.destroy();
        const BtEsXi = lEdCkHpORDoUAtpBVUIr.queue
        const krljml = await rBtVWDnrLJwUoCYP.requestAdapterInfo();
        const qRnbtaAFzCcdSiSI = context.canvas
        oriuveLSuM.destroy();
        const uqLbga = hktmZuxawqMIItjPVsD.createTexture({
            dimension: "1d",
            format: "rg8snorm",
            label: "fTRtlGrQi",
            sampleCount: 1,
            size: {
                width: 6784,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_SRC,
            viewFormats: ["rg8snorm"]
        });
        const stANoLutzEuSiGBhJnFw = IOrQNUDVNmDsPqIlXbB.isFallbackAdapter
        const yJUHnHsNiHUMWXk = fJlJri.queue
        const PuSMprIukIEQpgyWAoZV = fnOyOA.createQuerySet({
            count: 856,
            label: "JJGgHYp",
            type: "occlusion"
        });
        const uVXJsEzVNZH = context.getCurrentTexture();
        const iSksopdTroWeOROL = xuuyQnTX.limits
        const jxBasYVoEeJWfskbw = nHhyNEPe.createBuffer({
            label: "ERXzOYYju",
            mappedAtCreation: false,
            size: 140424,
            usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM
        });
        const cYYnaaiLXqlul = fvTWdHoC.architecture
        const WJPQGJBgnmXjyzDv = PuSMprIukIEQpgyWAoZV.count
        const GSItKRXmoHDhJoMMbq = sybPqAOAXhBA.device
        const CKVWFJGG = lAOlKkeQqCwEX.vendor
        const ivXNdquzoeHLgIyeDS = NtYeeBEpAjFgiCwGing.createTexture({
            dimension: "1d",
            format: "rg8sint",
            label: "mXjXhEpXoIleUi",
            sampleCount: 1,
            size: {
                width: 702,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.TEXTURE_BINDING,
            viewFormats: ["rg8sint"]
        });
        const rnhVfJlur = hsHfdiJROacwT.limits
        const dNFEuLmralYqpa = PuSMprIukIEQpgyWAoZV.count
        const EpvcgcOpXHaV = WjbQobvD.createBuffer({
            label: "PQxkfFLkeY",
            mappedAtCreation: false,
            size: 101330616,
            usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE
        });
        const YpjZOWflFEH = AFkvfqROEA.label
        const OVJlPzoOw = await rBtVWDnrLJwUoCYP.requestDevice();
        PuSMprIukIEQpgyWAoZV.destroy();
        const fKAqdUnwrvhmHM = context.canvas
        const MOItTZDsqEwaAdP = KRhnMHctIupBMKAcgTu.createQuerySet({
            count: 2613,
            label: "ULMcTIcsHOFmWhcbuk",
            type: "occlusion"
        });
        const mlGKSQyhbLWaOIEXnWL = MOItTZDsqEwaAdP.count
        const dhENmZJNYxX = MOItTZDsqEwaAdP.count
        const EGATkANtMDMFgkfOPv = MOItTZDsqEwaAdP.label
        const hfBmrvYhDXlAlNW = VWpRFFzUJMuuSDL.label
        const QabStlBW = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const HjavwvQshKyVCeZtNCyo = QJgQKDhIlnb.createBuffer({
            label: "WDziIXKbIMvjubdBdKsb",
            mappedAtCreation: true,
            size: 52623916,
            usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC
        });
        const CbBZVoM = MOItTZDsqEwaAdP.count
        const zOdGFtJxlxFsfcenUWA = await VtYhMumvlXBkHGK.requestAdapterInfo();
        const ASbWEFQAdCWJMNH = rQkCYjLHozlXMEiAD.label
        const QtNKmNmNN = sybPqAOAXhBA.description
        const cFBUHs = QabStlBW.limits
        const mYomP = ZOZsrVbCVtzaUmfjc.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.01943942231943896,
                    g: 0.7891514282730479,
                    b: 0.6568927976726164,
                    a: 0.5326195660905416
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: VJNDovapNg,
                view: gBtNn
            }],
            depthStencilAttachment: {
                depthClearValue: 0.60144098460363,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 233182568,
                stencilLoadOp: "clear",
                stencilReadOnly: false,
                stencilStoreOp: "discard",
                view: YonogLjPryeDHHRY
            },
            label: "NZnCNaGlO",
            maxDrawCount: 2010853319,
            occlusionQuerySet: MOItTZDsqEwaAdP
        });
        const EbdVipZoCPvtQvhnni = context.canvas
        const yUEGLpFBvuTokLcBep = fFMhQZHs.limits
        const memERIZxZZhcH = hsHfdiJROacwT.limits
        const QLgJicQ = rsIzFNnIThn.createView({
            aspect: "all",
            dimension: "2d-array",
            arrayLayerCount: 2518950152,
            baseArrayLayer: 1515942865,
            baseMipLevel: 3725427826,
            mipLevelCount: 1028233343,
            format: "rg32float",
            label: "wFrYfzNEsHqVbN"
        });
        const UcxEHUYzLGLOz = MOItTZDsqEwaAdP.type
        MOItTZDsqEwaAdP.destroy();
        const nAeKsl = context.getCurrentTexture();
        const wErRdkiGWAhCHsB = context.canvas
        const QtQvTDEIGd = QJgQKDhIlnb.createQuerySet({
            count: 640,
            label: "YwluFtEmUkuWkCCsh",
            type: "occlusion"
        });
        const rXaSeRnO = QtQvTDEIGd.type
        const KSknThXhtLZjPLAfojL = QtQvTDEIGd.type
        const NjDmn = RBpVINnGSc.queue
        const oQgBfEnvWCRaJBEI = navigator.gpu.wgslLanguageFeatures
        const ibqpNe = zOdGFtJxlxFsfcenUWA.vendor
        const extapXfWSWoiRWFu = EYfsBN.label
        const EoqDZGMSJTdLAsrUkC = hktmZuxawqMIItjPVsD.queue
        const NsQSRUvlsCob = nHhyNEPe.createBuffer({
            label: "moSCQsDrcIPJtBvox",
            mappedAtCreation: true,
            size: 244043264,
            usage: GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
        });
        const SGhTXlHFjeWj = await GGZXVXstmw.requestDevice();
        const mgOYVCkymombuTF = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const gsUuVjSNMoTmdgnZ = JuFtpHPIcLQGwSrqbo.features
        const VkTiDChSWs = navigator.gpu.wgslLanguageFeatures
        const yCSNKyVd = context.getCurrentTexture();
        const RZPOw = eRfqOMXAdZijtg.createTexture({
            dimension: "1d",
            format: "bgra8unorm-srgb",
            label: "aJoZAhw",
            sampleCount: 1,
            size: {
                width: 4408,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_SRC,
            viewFormats: ["bgra8unorm"]
        });
        const qrYfO = rBtVWDnrLJwUoCYP.features
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: QXsEpQRFyCBgKxbQ,
            format: "rgba16float",
            usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST
        });
        const YnmNFjEyaUMeZiGKq = YWnsAawjJYsQJFvBTz.label
        const yLZlvlU = QXsEpQRFyCBgKxbQ.createTexture({
            dimension: "2d",
            format: "rg32float",
            label: "FgZNkUleHik",
            sampleCount: 4,
            size: {
                width: 2307,
                height: 2615,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
            viewFormats: ["rg32float"]
        });
        const QbPWxvTztizaxPv = context.canvas
        jNDGUgipFEUTzKZcx.destroy();
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "srgb",
            device: NtYeeBEpAjFgiCwGing,
            format: "rgba8unorm",
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT
        });
        const OEpQjvLcLDKEMqB = QtQvTDEIGd.type
        const cxJcHBdeZTgfnIcfP = nHhyNEPe.queue
        const earvmnnl = context.canvas
        context.unconfigure();
        const GVWpYZjyt = await ILqtiFEYbKXocgxUQKu.requestAdapterInfo();
        const QmvrgFfgaUMIBmRK = context.canvas
        const iInJuTsTPJKiwqd = VtYhMumvlXBkHGK.isFallbackAdapter
        const JGEUEdvZlmsVrb = context.canvas
        const TSwPmcQUdrRxAzgCpLq = lEdCkHpORDoUAtpBVUIr.label
        const zpJLEWBfGelf = QtQvTDEIGd.label
        const aVUhIfdFrHdS = RBpVINnGSc.createTexture({
            dimension: "3d",
            format: "bgra8unorm-srgb",
            label: "gSnjVGICtVbtlJbx",
            sampleCount: 1,
            size: {
                width: 485,
                height: 1749,
                depthOrArrayLayers: 1611
            },
            mipLevelCount: 2,
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
            viewFormats: ["bgra8unorm"]
        });
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: fJlJri,
            format: "bgra8unorm",
            usage: GPUTextureUsage.RENDER_ATTACHMENT
        });
        const rqWjWTwYHHtSSDmPOc = context.getCurrentTexture();
        const fWICfPfBsfjmQasA = QtQvTDEIGd.count
        const oXhzViktegvUiSChHR = zILFiHe.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.14724956011900125,
                    g: 0.17009144696069256,
                    b: 0.2920816595277661,
                    a: 0.9602938034632389
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: mrcMYhtnaEhGKlK,
                view: VJNDovapNg
            }],
            depthStencilAttachment: {
                depthClearValue: 0.520433257778871,
                depthReadOnly: true,
                depthStoreOp: "store",
                stencilClearValue: 419552644,
                stencilLoadOp: "load",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: qtWXJ
            },
            label: "ftzba",
            maxDrawCount: 2885648133,
            occlusionQuerySet: QtQvTDEIGd
        });
        const xYcvvnDTbMzLcxytjo = FiFaYISLnvQ.label
        const kHpBpDWqU = pVXvihStFv.createBuffer({
            label: "MDsMKQPcFmckHbuQhzt",
            mappedAtCreation: true,
            size: 198512764,
            usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE
        });
        const TabUrIiu = taTunExzCoJeNxCaCXK.vendor
        context.unconfigure();
        const pQrsQtqsVPqYRl = QtQvTDEIGd.label
        QtQvTDEIGd.destroy();
        const YTUcVqM = SGhTXlHFjeWj.createBuffer({
            label: "MHaIrsSWyclUSoxwab",
            mappedAtCreation: true,
            size: 66898976,
            usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT
        });
        const wDEpXgHAu = TxsTUajgGzvOnCZuw.createQuerySet({
            count: 1893,
            label: "zDFHedgf",
            type: "occlusion"
        });
        const FdifJGEXUb = wDEpXgHAu.type
        const GWfToe = JuFtpHPIcLQGwSrqbo.createQuerySet({
            count: 2346,
            label: "iAZSuW",
            type: "occlusion"
        });
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: IJgoNCF,
            format: "rgba16float",
            usage: GPUTextureUsage.RENDER_ATTACHMENT
        });
        const ezcTxNvtKNDQtgIfX = context.getCurrentTexture();
        const eClAZgKcTXSFwuvffR = GWfToe.type
        wDEpXgHAu.destroy();
        const RTwTE = eRfqOMXAdZijtg.label
        const OArzpC = HrNZcCXaqQVFBKv.createView({
            aspect: "all",
            dimension: "3d",
            arrayLayerCount: 1,
            baseArrayLayer: 2594443228,
            baseMipLevel: 3818490051,
            mipLevelCount: 3923368611,
            format: "rgba16uint",
            label: "JzIZmGahHWpo"
        });
        const vqwEEmHYNpBu = piBiB.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.4030928866444373,
                    g: 0.014366897543689583,
                    b: 0.4291990868720714,
                    a: 0.9705688451776019
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: mrcMYhtnaEhGKlK,
                view: VJNDovapNg
            }],
            depthStencilAttachment: {
                depthClearValue: 0.3829019615270549,
                depthReadOnly: false,
                depthStoreOp: "store",
                stencilClearValue: 2005748063,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: dnXaP
            },
            label: "AeizrRFuenBJhkKarZk",
            maxDrawCount: 3160311527,
            occlusionQuerySet: GWfToe
        });
        const gzmzgxBKYnsdMclvrcTR = nHhyNEPe.limits
        const KRORrziJhqQCpRKZxehg = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const GPVaHpjrVkwTET = hktmZuxawqMIItjPVsD.label
        const CKHqTahDZhUba = GWfToe.type
        const OldWoEvE = context.getCurrentTexture();
        const QJauxQJTcvGG = rWvGJLNiCImOlef.features
        const nPUXSEDJrnRKfX = RmHapJtQZ.vendor
        const sQMohQIPHPTFJhqp = kMpqvpQENnPNjDw.features
        const IUZycBEaZEZzXBOxT = LninE.device
        const CWTgBpxtuT = context.getCurrentTexture();
        const MdaWvjviJylHTFdzDuGM = JuFtpHPIcLQGwSrqbo.queue
        const aDdfWu = JuFtpHPIcLQGwSrqbo.features
        const iQFiZHsZmlWK = mrcMYhtnaEhGKlK.label
        const cNRNnhkYJSzPlmfs = rWvGJLNiCImOlef.queue
        const RYsoePuzOXOlfYlUpDP = hktmZuxawqMIItjPVsD.createBuffer({
            label: "VzJgGf",
            mappedAtCreation: true,
            size: 189543076,
            usage: GPUBufferUsage.QUERY_RESOLVE
        });
        const oyFeAyTSq = await kMpqvpQENnPNjDw.requestAdapterInfo();
        const CqvNCxpovUJIlgZl = KRORrziJhqQCpRKZxehg.isFallbackAdapter
        GWfToe.destroy();
        const CmAidTxLD = await VNIkVrvPFeVYXbZWMg.requestDevice();
        const VGeJEVIao = UYUrVVK.limits
        const cQPgSCevKPfI = tDdGMlYNO.device
        const vxwdBNenOQqF = TxsTUajgGzvOnCZuw.createQuerySet({
            count: 1993,
            label: "lcqZGmxKWwpYachUwi",
            type: "occlusion"
        });
        const lKjzfuXZbHkvxhTfsK = vxwdBNenOQqF.count
        context.configure({
            alphaMode: "opaque",
            colorSpace: "display-p3",
            device: lEdCkHpORDoUAtpBVUIr,
            format: "rgba8unorm",
            usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING
        });
        const DcosasfPFfgCeZYr = yznTXoa.vendor
        const qlFasiipHyKSoFb = iEersJVnpafgQvpaEV.queue
        vxwdBNenOQqF.destroy();
        const idUTPQbY = UYUrVVK.createQuerySet({
            count: 2280,
            label: "SZRMnJMVvljcmBfxDuMA",
            type: "occlusion"
        });
        idUTPQbY.destroy();
        const KKoCJbAutbKkuL = vInICRfeGnQt.createQuerySet({
            count: 2979,
            label: "PwMRkzdHVGfcjKCdHKpY",
            type: "occlusion"
        });
        const QvZCqdRFxRkFMY = KKoCJbAutbKkuL.label
        const nUArcxLFTSQioMOq = context.canvas
        const nLxPfV = kPgDCENDqg.description
        const TOgfOBllDGX = KKoCJbAutbKkuL.count
        context.unconfigure();
        const wTAVfDKcKBZPQTqb = CmAidTxLD.label
        const IGwvuJeG = kzACOQBDBcCmF.createQuerySet({
            count: 1074,
            label: "HhAwuMcvCgKxo",
            type: "occlusion"
        });
        const LOLfwmarAaqgC = nHhyNEPe.createTexture({
            dimension: "3d",
            format: "rg32float",
            label: "FWqpBqEOH",
            sampleCount: 1,
            size: {
                width: 1907,
                height: 1773,
                depthOrArrayLayers: 561
            },
            mipLevelCount: 7,
            usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
            viewFormats: ["rg32float"]
        });
        const WlvUdzerDwb = UlLyHPVFFPn.description
        const OqRuygJiQN = taTunExzCoJeNxCaCXK.device
        const UELaTBaBbp = GVWpYZjyt.description
        const IKpZcFlLfYflPm = TRICTgGeaFXctv.vendor
        const sbKXZbaseQPOvAyisNLK = lAOlKkeQqCwEX.vendor
        const pHHtPWuGYzE = await eFMGaEnQNaKiUA.requestAdapterInfo();
        const xLiDyLYBkn = piBiB.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.09321486647437072,
                    g: 0.997750952238617,
                    b: 0.7843728098393127,
                    a: 0.8252734658699746
                },
                loadOp: "clear",
                storeOp: "discard",
                resolveTarget: dnXaP,
                view: yatOhSwwUhWmugIz
            }],
            depthStencilAttachment: {
                depthClearValue: 0.7034969148511002,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 1767336650,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: yatOhSwwUhWmugIz
            },
            label: "HeSoeiZ",
            maxDrawCount: 1134721412,
            occlusionQuerySet: KKoCJbAutbKkuL
        });
        const bMHRohjH = navigator.gpu.wgslLanguageFeatures
        const cgTNfxKDr = KKoCJbAutbKkuL.label
        KKoCJbAutbKkuL.destroy();
        const ClXaLICO = qtWXJ.label
        const jAdRzkmhZBl = KPMIrZSzYLuVGmoCmY.features
        const fowLZfUhVjqOgGUl = UioQheDsWYpsBKr.description
        const QEuauDAWjl = zILFiHe.label
        const GqftEFhlEafalGSxcS = pVXvihStFv.createBuffer({
            label: "nSNfVsFe",
            mappedAtCreation: true,
            size: 262891508,
            usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST
        });
        const WfqkcDmYfWba = UYUrVVK.createBuffer({
            label: "xKGlUCyAczcWfCEEouG",
            mappedAtCreation: true,
            size: 242749644,
            usage: GPUBufferUsage.INDEX
        });
        const hZAWqptZyYpXcXcEc = dbVgIdtOvQTPPa.isFallbackAdapter
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "srgb",
            device: cUfaje,
            format: "bgra8unorm",
            usage: GPUTextureUsage.TEXTURE_BINDING
        });
        const jfupdXtoWqcRMyR = IGwvuJeG.label
        const hIpjbbbS = ZXYBMGh.createQuerySet({
            count: 4034,
            label: "bJXQBzqDDH",
            type: "occlusion"
        });
        const fzTojfXbqSpbmCeJ = context.getCurrentTexture();
        const vbrgGcNXy = context.canvas
        const LPXeLgg = yatOhSwwUhWmugIz.label
        const bWxUDLXYojyDg = tMvYUaigkCzWfJKvacw.architecture
        const IGFJfUxY = IGwvuJeG.label
        aKDGSWymxeJFIOVJaBRi.destroy();
        const bipArCMbrROBWHNiTseF = navigator.gpu.wgslLanguageFeatures
        const BxNjANWHoAF = kPgDCENDqg.vendor
        const HfkCYAWbbiy = ZXYBMGh.limits
        const usAwmtSCbta = await dbVgIdtOvQTPPa.requestDevice();
        const fyjwQFPetYSVPVekXiAF = context.canvas
        const EREcDH = context.canvas
        const HvUbjhidarl = JuFtpHPIcLQGwSrqbo.createQuerySet({
            count: 2679,
            label: "mkNWrmWMlrCvLeAT",
            type: "occlusion"
        });
        const ioLGIErgjpUXBQRJ = context.getCurrentTexture();
        const gkLMDKcC = navigator.gpu.wgslLanguageFeatures
        const NGuaYENASQBN = tDdGMlYNO.device
        const QIlLWReqkKyaX = await rBtVWDnrLJwUoCYP.requestDevice();
        const OPEPqzfNVRl = ZOZsrVbCVtzaUmfjc.label
        const XwMpKfKAvMDxtc = RBpVINnGSc.features
        context.unconfigure();
        ezcTxNvtKNDQtgIfX.destroy();
        context.configure({
            alphaMode: "opaque",
            colorSpace: "srgb",
            device: ZXYBMGh,
            format: "bgra8unorm",
            usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING
        });
        const AiGwSVkuzfaMhBLC = context.getCurrentTexture();
        const HHxNOLpxu = HvUbjhidarl.type
        const PuiuWMlKImcw = await hsHfdiJROacwT.requestDevice();
        const OwdNGulsiAH = ZXYBMGh.createTexture({
            dimension: "1d",
            format: "rg8snorm",
            label: "KOZfimCNzyUkHrnd",
            sampleCount: 1,
            size: {
                width: 2752,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
            viewFormats: ["rg8snorm"]
        });
        const gjpvIgDAXKNJyT = PuiuWMlKImcw.createCommandEncoder({
            label: "IHKtK"
        });
        const dUTMQtWZ = TxsTUajgGzvOnCZuw.queue
        const iUFyIrRBpQE = await KRORrziJhqQCpRKZxehg.requestDevice();
        const gaOOFoSbQcvte = context.getCurrentTexture();
        const bVFbAKiSMHaOP = navigator.gpu.wgslLanguageFeatures
        const ZXTFqVFF = eFMGaEnQNaKiUA.features
        const SOQmUGJEVgVRVub = await VtYhMumvlXBkHGK.requestAdapterInfo();
        const qyRIkssLcztfShEgP = context.canvas
        const Bbsnl = gjpvIgDAXKNJyT.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.9330241249706908,
                    g: 0.5664360584542096,
                    b: 0.8754174141692921,
                    a: 0.8122930206270526
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: dnXaP,
                view: SeXZAmMVaHJqM
            }],
            depthStencilAttachment: {
                depthClearValue: 0.6238515029916599,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 3753182428,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: gBtNn
            },
            label: "qnBLZ",
            maxDrawCount: 2305097509,
            occlusionQuerySet: HvUbjhidarl
        });
        const HbDFIKZzhYriMLhoedn = await upsBmcXXGkFDbWvY.requestDevice();
        const vgFBIk = SOQmUGJEVgVRVub.vendor
        const DXjQrEEjRsPRHrVLD = nHhyNEPe.createBuffer({
            label: "qLSoKnP",
            mappedAtCreation: true,
            size: 258431744,
            usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM
        });
        const VjtNNAQk = fnOyOA.createCommandEncoder({
            label: "AuPqJLb"
        });
        const HHzrkKnXlGFfSgfVnrF = navigator.gpu.wgslLanguageFeatures
        const hURkPPBCVdtugxlPpaS = ZOZsrVbCVtzaUmfjc.label
        const qmqkQOFd = HvUbjhidarl.count
        const NWUqMwxHuDDyydbgWfSN = RZPOw.createView({
            aspect: "all",
            dimension: "2d",
            arrayLayerCount: 1,
            baseArrayLayer: 666777513,
            baseMipLevel: 2261320361,
            mipLevelCount: 1487869852,
            format: "bgra8unorm-srgb",
            label: "fFsgFRTFMCVuKIFrSKs"
        });
        const FbcISduGAYFtrw = taTunExzCoJeNxCaCXK.architecture
        const DsAFLlxuoRw = rqUTWZLjXEHkhHpx.architecture
        const BMzLH = OVJlPzoOw.label
        const YcAPiDcbdcfp = iEersJVnpafgQvpaEV.createTexture({
            dimension: "1d",
            format: "rgba16float",
            label: "UrZdEBnj",
            sampleCount: 1,
            size: {
                width: 2741,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
            viewFormats: ["rgba16float"]
        });
        const HFYvXKEayuL = HbDFIKZzhYriMLhoedn.createTexture({
            dimension: "1d",
            format: "rgba8unorm",
            label: "mdMfiAfmMXUYSqedtqa",
            sampleCount: 1,
            size: {
                width: 4509,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
            viewFormats: ["rgba8unorm-srgb"]
        });
        const eGAwugzokNmgMGazg = rBtVWDnrLJwUoCYP.isFallbackAdapter
        const SdUXC = QnijCfMTvFxuTGtcTi.label
        context.unconfigure();
        const CaSFYdBOeZKJEyDZ = vInICRfeGnQt.createQuerySet({
            count: 2965,
            label: "wiJBxnAxDjoOL",
            type: "occlusion"
        });
        const eJzPisAPOn = context.canvas
        const buQMeeyYqZdBpF = QabStlBW.isFallbackAdapter
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "display-p3",
            device: WjbQobvD,
            format: "rgba16float",
            usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING
        });
        const xeHqffAsevwGhlNC = NtYeeBEpAjFgiCwGing.createCommandEncoder({
            label: "sbyKJ"
        });
        const RjIUboRjELKs = usAwmtSCbta.queue
        const FgYnFG = mgOYVCkymombuTF.isFallbackAdapter
        const VQNHja = vOqWktkKKHD.queue
        const sbwypDqgNoSRrHchjwr = xuuyQnTX.limits
        const bPzQiEjqsEk = await ILqtiFEYbKXocgxUQKu.requestAdapterInfo();
        context.unconfigure();
        const lgABupApspKxJuGw = context.canvas
        const muNWayEzWflCz = fnOyOA.limits
        const KTcKbCfNCgjXwkJJh = QIlLWReqkKyaX.createTexture({
            dimension: "1d",
            format: "rg11b10ufloat",
            label: "JmuxiakzaxpNVALZsB",
            sampleCount: 1,
            size: {
                width: 4000,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
            viewFormats: ["rg11b10ufloat"]
        });
        const CdjUIVNeit = SGhTXlHFjeWj.features
        const QBhzLHshlII = KAhXWAMCTrRSFcylJd.createView({
            aspect: "all",
            dimension: "cube-array",
            arrayLayerCount: 1713001056,
            baseArrayLayer: 3744223104,
            baseMipLevel: 332491598,
            mipLevelCount: 1033607939,
            format: "rgba8sint",
            label: "PlDKnRIsCmrzB"
        });
        const gJYCeqLuXONjpwC = dbVgIdtOvQTPPa.isFallbackAdapter
        const qLhvZYSUlavttqzdhXp = hktmZuxawqMIItjPVsD.features
        const qLaXo = CaSFYdBOeZKJEyDZ.type
        const orWWFAqAXfXsWqMzp = VjtNNAQk.label
        const JvwpFkP = VjtNNAQk.label
        const tNXKtTmQyqMUpbbbVJP = await navigator.gpu.getPreferredCanvasFormat();
        const sLJnfZMeZRHpqvnQHwC = IGwvuJeG.label
        context.unconfigure();
        const ylPnlgB = CaSFYdBOeZKJEyDZ.label
        const SqbfE = VtYhMumvlXBkHGK.limits
        const AVKcYbxpwaDpgo = usAwmtSCbta.createTexture({
            dimension: "3d",
            format: "rgb10a2uint",
            label: "GZTOEw",
            sampleCount: 1,
            size: {
                width: 1016,
                height: 674,
                depthOrArrayLayers: 1813
            },
            mipLevelCount: 7,
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
            viewFormats: ["rgb10a2uint"]
        });
        const YJpGBaYCcbTLXNhpymze = kzACOQBDBcCmF.queue
        const qzcBWYxlExwsadi = await eFMGaEnQNaKiUA.requestDevice();
        const GsxQjaZFkeiZcjns = pnOWdimiwtYv.createCommandEncoder({
            label: "tnDbwKJSvoEjcUr"
        });
        const ATBPY = fvTWdHoC.vendor
        const xoYXbEbNPWnlSmkAMZd = YWnsAawjJYsQJFvBTz.createTexture({
            dimension: "3d",
            format: "rg16sint",
            label: "BArmsDfdY",
            sampleCount: 1,
            size: {
                width: 45,
                height: 1959,
                depthOrArrayLayers: 1298
            },
            mipLevelCount: 4,
            usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
            viewFormats: ["rg16sint"]
        });
        const LahlKXmzojrXiJ = await QabStlBW.requestAdapterInfo();
        const XNJBaRqvqwtgmmn = EYfsBN.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.8350090761997375,
                    g: 0.7298573078709574,
                    b: 0.8109109038231594,
                    a: 0.32857037335641637
                },
                loadOp: "load",
                storeOp: "store",
                resolveTarget: SeXZAmMVaHJqM,
                view: QBhzLHshlII
            }],
            depthStencilAttachment: {
                depthClearValue: 0.717227351743577,
                depthReadOnly: true,
                depthStoreOp: "store",
                stencilClearValue: 3181693839,
                stencilLoadOp: "load",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: QBhzLHshlII
            },
            label: "DUCOEsAYTlJ",
            maxDrawCount: 1352720486,
            occlusionQuerySet: CaSFYdBOeZKJEyDZ
        });
        const gbdHvGDzcenoV = context.canvas
        const aGtZYqhCYzmYKjIvVBK = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const QIxodUTgGePPgVQHw = navigator.gpu.wgslLanguageFeatures
        const EjaFiMYX = xuuyQnTX.label
        const KbkUfjirln = await GGZXVXstmw.requestAdapterInfo();
        const SgsHLUKm = IGwvuJeG.type
        const VXCruasHDdQRrfT = navigator.gpu.wgslLanguageFeatures
        const MmIiYGkFqEGGAydqni = fzTojfXbqSpbmCeJ.createView({
            aspect: "all",
            dimension: "2d",
            arrayLayerCount: 1,
            baseArrayLayer: 663799420,
            baseMipLevel: 3044996814,
            mipLevelCount: 3547761693,
            format: "r8snorm",
            label: "EpixAIrGIdIrWlrWbj"
        });
        const bKLeFi = NDtEotQQSicI.isFallbackAdapter
        const KWwtT = lAOlKkeQqCwEX.description
        context.configure({
            alphaMode: "opaque",
            colorSpace: "display-p3",
            device: CmAidTxLD,
            format: "rgba8unorm",
            usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST
        });
        const JkjdYkcvYFaQqRw = KbkUfjirln.vendor
        const MJxiWBNlOnZP = navigator.gpu.wgslLanguageFeatures
        const sYjuSqcLXWYWV = UYUrVVK.createTexture({
            dimension: "2d",
            format: "rgb10a2uint",
            label: "kMTOylABmRFkiL",
            sampleCount: 4,
            size: {
                width: 7749,
                height: 973,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
            viewFormats: ["rgb10a2uint"]
        });
        CaSFYdBOeZKJEyDZ.destroy();
        const SYiNXiLLvGzU = CmAidTxLD.features
        LOLfwmarAaqgC.destroy();
        const vTCTxBB = rQkCYjLHozlXMEiAD.label
        const vpJdStfrBMQ = OVJlPzoOw.label
        const NKXpeWfEFChw = ifEnEKsSlHCoXmcn.createBuffer({
            label: "tJosfAzeD",
            mappedAtCreation: true,
            size: 265814184,
            usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX
        });
        const WgSHYglEH = OldWoEvE.createView({
            aspect: "all",
            dimension: "1d",
            arrayLayerCount: 1,
            baseArrayLayer: 3424228710,
            baseMipLevel: 3326330535,
            mipLevelCount: 2067534815,
            format: "rgb9e5ufloat",
            label: "jLhazxpgTvpUJkWEbxL"
        });
        const bJHYCDPaFtNWVyFbVg = navigator.gpu.wgslLanguageFeatures
        const ADwaKjVcCVOPHRH = await VNIkVrvPFeVYXbZWMg.requestAdapterInfo();
        const YCVxElTJeuG = VtYhMumvlXBkHGK.limits
        const VVOUMCCr = await dbVgIdtOvQTPPa.requestDevice();
        const NcAny = qzcBWYxlExwsadi.queue
        const dMrHJaBiHbFrBe = HJCKNwVXvUSU.limits
        const qgikWXTwjlOcdcy = CibpaXzFtxYhvHCdLF.vendor
        const PfpoUH = await KRORrziJhqQCpRKZxehg.requestDevice();
        const MWRpRomTukBg = QXsEpQRFyCBgKxbQ.queue
        const UrGDFqROEoXaFkqpnWIE = JwYnwIEcFyGwI.features
        const sVbbyKkRryIjEapNUVoP = fJlJri.createTexture({
            dimension: "1d",
            format: "r16sint",
            label: "UWrtE",
            sampleCount: 1,
            size: {
                width: 4126,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.TEXTURE_BINDING,
            viewFormats: ["r16sint"]
        });
        const kbtwPpzc = await kMpqvpQENnPNjDw.requestAdapterInfo();
        const xTKZclEEwMOhYwReEQq = pHHtPWuGYzE.vendor
        uqLbga.destroy();
        const sWJUrHoYHhxKePaMZ = IGwvuJeG.count
        const iftTcIQ = zOdGFtJxlxFsfcenUWA.architecture
        const BzZaGCFBfDZj = hIpjbbbS.type
        context.unconfigure();
        const USMIUQwTerFObzKinPQd = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        const aWDiXIfipwwCukwTdFu = await navigator.gpu.requestAdapter({
            powerPreference: "high-performance"
        });
        context.configure({
            alphaMode: "opaque",
            colorSpace: "display-p3",
            device: IJgoNCF,
            format: "rgba8unorm",
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING
        });
        const AbOuTCjkw = context.getCurrentTexture();
        IGwvuJeG.destroy();
        const jqMhMik = IJgoNCF.limits
        const LbibjJEzcVCjYuf = pHHtPWuGYzE.vendor
        hIpjbbbS.destroy();
        const kSQEoezRJXE = fFMhQZHs.createCommandEncoder({
            label: "LGCRmrUQSyXURnLe"
        });
        HvUbjhidarl.destroy();
        const SocprQBJZmWUOHdw = kMpqvpQENnPNjDw.features
        const aBOQDWMprE = iUFyIrRBpQE.limits
        const otOhyzFFprF = rWvGJLNiCImOlef.label
        const PeUmLbr = mgOYVCkymombuTF.features
        const gRkowDOhLhz = lEdCkHpORDoUAtpBVUIr.createQuerySet({
            count: 1902,
            label: "NZsdZuJszcmkWaiDQ",
            type: "occlusion"
        });
        gRkowDOhLhz.destroy();
        const QfZROkYawMblwnOQbs = context.canvas
        const pOExhNCTZaMZxaSGzN = LHLiwrHobWzpsClGWf.createBuffer({
            label: "lsrvYeLdITzHfMbyxaV",
            mappedAtCreation: false,
            size: 173737756,
            usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
        });
        fzTojfXbqSpbmCeJ.destroy();
        const JxusxI = rWvGJLNiCImOlef.createQuerySet({
            count: 3039,
            label: "BBFvVWSDazQp",
            type: "occlusion"
        });
        const LpZZlJLqdKFQV = JxusxI.count
        const mgrgH = await QabStlBW.requestDevice();
        AVKcYbxpwaDpgo.destroy();
        const koXQehjb = navigator.gpu.wgslLanguageFeatures
        const OufhqQLYEVQAOUCBDS = JxusxI.count
        const knCXlDXTBA = await HJCKNwVXvUSU.requestAdapterInfo();
        const bmMGqlQVKyg = await kMpqvpQENnPNjDw.requestAdapterInfo();
        JxusxI.destroy();
        const RZVIDSZQYsQZuEgMKBi = context.canvas
        const fIdqhhTFOaWahqu = await navigator.gpu.getPreferredCanvasFormat();
        const yINlEpaURcYpXs = QXsEpQRFyCBgKxbQ.createQuerySet({
            count: 2006,
            label: "dzFFX",
            type: "occlusion"
        });
        const DlXgIJKJteNW = yINlEpaURcYpXs.count
        context.unconfigure();
        const YqDmuXxJHtRGzhhQTX = UYUrVVK.label
        context.unconfigure();
        const eiWvaqBvCvPHsAwlCtkG = PfpoUH.features
        const RhdQlwYaUiQAEaV = ifEnEKsSlHCoXmcn.createQuerySet({
            count: 2565,
            label: "jJJDptGFee",
            type: "occlusion"
        });
        const KuYbJ = ifEnEKsSlHCoXmcn.queue
        const WACLwruUExKnmftZ = cYgOiwDIwyHvK.createQuerySet({
            count: 3141,
            label: "zHfzaJeQk",
            type: "occlusion"
        });
        const ByVPvTIbWvYciAavTZX = ADwaKjVcCVOPHRH.vendor
        const BxQhMwtjupyJnDJCIWnW = iEersJVnpafgQvpaEV.label
        const znxondnpG = LninE.architecture
        const tdMHjKPQI = vOqWktkKKHD.features
        RhdQlwYaUiQAEaV.destroy();
        const ANZsPXe = RmHapJtQZ.device
        WACLwruUExKnmftZ.destroy();
        yINlEpaURcYpXs.destroy();
        const TjZpqjJptJJyr = navigator.gpu.wgslLanguageFeatures
        const EVGxMntCQ = PuiuWMlKImcw.createQuerySet({
            count: 2182,
            label: "rPaSH",
            type: "occlusion"
        });
        const iMtbs = EVGxMntCQ.type
        const uJOEBsvlCBcsgSZccIW = QnijCfMTvFxuTGtcTi.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.9939273633989167,
                    g: 0.39414020651381565,
                    b: 0.7682693437041767,
                    a: 0.08540136173948132
                },
                loadOp: "clear",
                storeOp: "discard",
                resolveTarget: gBtNn,
                view: gBtNn
            }],
            depthStencilAttachment: {
                depthClearValue: 0.30967282062277546,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 3299082204,
                stencilLoadOp: "load",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: AFkvfqROEA
            },
            label: "HiTCKjGXMwhup",
            maxDrawCount: 573374774,
            occlusionQuerySet: EVGxMntCQ
        });
        const uPDftB = await KRORrziJhqQCpRKZxehg.requestAdapterInfo();
        const ejHwvIrQHWVKB = NtYeeBEpAjFgiCwGing.limits
        const VGqxYvxVTOJa = navigator.gpu.wgslLanguageFeatures
        const cthutZVZo = KRhnMHctIupBMKAcgTu.features
        const YpumAiFTLxCiywm = yatOhSwwUhWmugIz.label
        const eyXDasQ = NWUqMwxHuDDyydbgWfSN.label
        const yoyKImbyVXRfiUOx = ifEnEKsSlHCoXmcn.queue
        const dcFwwBraCGtfBxuBNNf = pVXvihStFv.label
        const CBeSqOXiYUqHbjvZjgaX = iPWsOYauZRjZwEzvxyt.label
        const GFcDCmywPspXNVKiENs = cUfaje.createTexture({
            dimension: "1d",
            format: "stencil8",
            label: "hTWghQBKGNsoqBUDAl",
            sampleCount: 1,
            size: {
                width: 5825,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.TEXTURE_BINDING,
            viewFormats: ["stencil8"]
        });
        const sUVZASxnVOdKYiG = await xHYJTMPCPhhrIciVxq.requestDevice();
        const CocXoDjIMpIiVPOCeM = sUVZASxnVOdKYiG.queue
        const aMsuvIGXLawGNsy = mrcMYhtnaEhGKlK.label
        const atwmDfKrSip = EVGxMntCQ.count
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "srgb",
            device: UYUrVVK,
            format: "rgba8unorm",
            usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING
        });
        const ljDyDp = context.getCurrentTexture();
        const cLOkSHhSWoOKyD = await navigator.gpu.getPreferredCanvasFormat();
        const FXNJldTx = CmAidTxLD.createQuerySet({
            count: 1416,
            label: "xTAggZ",
            type: "occlusion"
        });
        const GcTWrBxbvYMH = context.canvas
        const NpOqEadHFHvnrHZiDA = navigator.gpu.wgslLanguageFeatures
        const vxZojHPgDKL = bPzQiEjqsEk.device
        const IWIwwoAXecYS = xHYJTMPCPhhrIciVxq.isFallbackAdapter
        const IRrNIK = EVGxMntCQ.type
        const VUSaoIUcYVoJOMKBIv = NDtEotQQSicI.isFallbackAdapter
        const OEzdtQCSHJk = ljDyDp.createView({
            aspect: "all",
            dimension: "cube-array",
            arrayLayerCount: 1944051216,
            baseArrayLayer: 2484733400,
            baseMipLevel: 3327298723,
            mipLevelCount: 2990430876,
            format: "rg8sint",
            label: "ISzUAwFK"
        });
        const SFcLmvUV = rWvGJLNiCImOlef.createTexture({
            dimension: "1d",
            format: "rg8uint",
            label: "utHSNiDwnylZVSoCtmIp",
            sampleCount: 1,
            size: {
                width: 3006,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_DST,
            viewFormats: ["rg8uint"]
        });
        const COpqhSmZ = context.getCurrentTexture();
        YcAPiDcbdcfp.destroy();
        const qGZNsa = eFMGaEnQNaKiUA.limits
        const cFOZsVeH = fJlJri.features
        const gpvnre = context.canvas
        sPrbyspJVOrdwpYccJbq.destroy();
        const XRmLYy = krljml.device
        context.unconfigure();
        const GLLLSPvsWMNbE = eRfqOMXAdZijtg.createQuerySet({
            count: 589,
            label: "bMHrydsOiVAgju",
            type: "occlusion"
        });
        const OdiurbEaL = GVWpYZjyt.architecture
        const lAlDgDVyUkjEj = gdJHwXfaEslvPMdEk.createView({
            aspect: "all",
            dimension: "2d-array",
            arrayLayerCount: 3515623943,
            baseArrayLayer: 1563074143,
            baseMipLevel: 2597619196,
            mipLevelCount: 3719022659,
            format: "rgba8unorm-srgb",
            label: "uqFcdeGfBOoaMqXM"
        });
        const RCmAxaAzPwWkQBZIHByD = cYgOiwDIwyHvK.createQuerySet({
            count: 311,
            label: "gvJmk",
            type: "occlusion"
        });
        const hLDIb = navigator.gpu.wgslLanguageFeatures
        const CVLczVwxtxtq = await HJCKNwVXvUSU.requestDevice();
        const hWWAccUGEmaGRYo = await KPMIrZSzYLuVGmoCmY.requestDevice();
        const qlcWBvJjY = lAOlKkeQqCwEX.description
        EVGxMntCQ.destroy();

    });
    await browser.close()
}
main().catch(console.error);