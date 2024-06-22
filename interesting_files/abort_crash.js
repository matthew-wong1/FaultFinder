const {
    create,
    globals
} = require('../../dawn/out/Debug/dawn.node');
Object.assign(globalThis, globals);
let navigator = {
    gpu: create([]),
};

if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

async function main() {


    const rqtJATJXY = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const NtHcjYOKkGpcJfcP = await rqtJATJXY.requestDevice();
    const XUZKLhgGkwroDIdkRzZR = NtHcjYOKkGpcJfcP.createQuerySet({
        count: 3760,
        label: "wqMHmsYiBhHfEoCV",
        type: "occlusion"
    });
    XUZKLhgGkwroDIdkRzZR.destroy();
    const eRoGzkzGIpAbLLz = NtHcjYOKkGpcJfcP.createTexture({
        dimension: "3d",
        format: "rgb10a2unorm",
        label: "KfXLZBXTaXD",
        sampleCount: 1,
        size: {
            width: 975,
            height: 1931,
            depthOrArrayLayers: 1102
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const uNFMPOewtNDGpoql = eRoGzkzGIpAbLLz.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 1125587937,
        baseMipLevel: 1911677609,
        mipLevelCount: 1013420102,
        format: "rgba32float",
        label: "OPRLWaYRgVBPyoWdGltB"
    });
    const oebwAnNRg = uNFMPOewtNDGpoql.label
    const XxLZWkyZI = uNFMPOewtNDGpoql.label
    const GkwAHhRzCHe = NtHcjYOKkGpcJfcP.createQuerySet({
        count: 1583,
        label: "gISCBn",
        type: "occlusion"
    });
    GkwAHhRzCHe.destroy();
    const mYDtutmAVS = NtHcjYOKkGpcJfcP.createCommandEncoder({
        label: "asxhgH"
    });
    const QJQXWUClzHaE = NtHcjYOKkGpcJfcP.createQuerySet({
        count: 2763,
        label: "IwZXLJsTfeJt",
        type: "occlusion"
    });
    const AmzIYUuBV = mYDtutmAVS.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5815515220506502,
                g: 0.9903894117519573,
                b: 0.3074048703171802,
                a: 0.2950006882852362
            },
            loadOp: "clear",
            storeOp: "store",
            resolveTarget: uNFMPOewtNDGpoql,
            view: uNFMPOewtNDGpoql
        }],
        depthStencilAttachment: {
            depthClearValue: 0.26250847200213046,
            depthReadOnly: true,
            depthStoreOp: "discard",
            stencilClearValue: 1910575988,
            stencilLoadOp: "clear",
            stencilReadOnly: true,
            stencilStoreOp: "discard",
            view: uNFMPOewtNDGpoql
        },
        label: "VNBHIfRTLZssJuS",
        maxDrawCount: 2757689780,
        occlusionQuerySet: QJQXWUClzHaE
    });
    const erRbmOEMlM = QJQXWUClzHaE.type
    const RyqjLpjqw = await rqtJATJXY.requestDevice();
    QJQXWUClzHaE.destroy();
    const acuJSPwTwTLCQcMLKDvg = mYDtutmAVS.label
    const qkLQbdUXIQm = RyqjLpjqw.createQuerySet({
        count: 4084,
        label: "OQinAYWJk",
        type: "occlusion"
    });
    const xTlaEqbjbuNQJFAcmli = qkLQbdUXIQm.label
    const KYaMTUoOMZLRLer = rqtJATJXY.info
    const VsLQQFQWySBvlE = await rqtJATJXY.requestDevice();
    const kDCYib = mYDtutmAVS.label
    const NVIluLnvcpFO = navigator.gpu.wgslLanguageFeatures
    const yXvRNTa = await rqtJATJXY.requestDevice();
    const aDXuKWmSgdhrTO = rqtJATJXY.isFallbackAdapter
    const FZhEmhXPoKwHyMxTWv = mYDtutmAVS.label
    const kcLhqBbgY = rqtJATJXY.limits
    const oRmYiAAoXDtSzjTAd = mYDtutmAVS.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.37508584779377296,
                g: 0.655371633296683,
                b: 0.5683322290284187,
                a: 0.15192507896484642
            },
            loadOp: "clear",
            storeOp: "store",
            resolveTarget: uNFMPOewtNDGpoql,
            view: uNFMPOewtNDGpoql
        }],
        depthStencilAttachment: {
            depthClearValue: 0.5317668053380917,
            depthReadOnly: false,
            depthStoreOp: "discard",
            stencilClearValue: 961250611,
            stencilLoadOp: "load",
            stencilReadOnly: true,
            stencilStoreOp: "discard",
            view: uNFMPOewtNDGpoql
        },
        label: "SMiwkKhX",
        maxDrawCount: 3021257501,
        occlusionQuerySet: qkLQbdUXIQm
    });
    qkLQbdUXIQm.destroy();
    const UpRloiuDdnwtQovB = yXvRNTa.label
    const ISwrmyx = navigator.gpu.wgslLanguageFeatures
    const rlPLbek = rqtJATJXY.limits
    const vwhHfSOtanobxe = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const ywbepTTGGHMxl = eRoGzkzGIpAbLLz.createView({
        aspect: "all",
        dimension: "cube",
        arrayLayerCount: 4,
        baseArrayLayer: 3098529412,
        baseMipLevel: 256411153,
        mipLevelCount: 2395148322,
        format: "rgba8sint",
        label: "sRejaBuEkkOxG"
    });
    const yhyOfTrmfBFvHJZwTr = uNFMPOewtNDGpoql.label
    const KVwUSF = RyqjLpjqw.createQuerySet({
        count: 2939,
        label: "ZINCzilgLIgmwV",
        type: "occlusion"
    });
    KVwUSF.destroy();
    const zWvXdFOqzXcbqEwzG = await rqtJATJXY.requestDevice();
    const NioKpmgN = NtHcjYOKkGpcJfcP.label
    const CdbQJePdYAGngmTCWS = yXvRNTa.createTexture({
        dimension: "1d",
        format: "rg8unorm",
        label: "RlshZ",
        sampleCount: 1,
        size: {
            width: 1904,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const ygUzOlAR = mYDtutmAVS.label
    const BmoYVdXIjTpFt = zWvXdFOqzXcbqEwzG.limits
    CdbQJePdYAGngmTCWS.destroy();
    eRoGzkzGIpAbLLz.destroy();
    const aCvSzLpGlKZjfFc = VsLQQFQWySBvlE.createQuerySet({
        count: 940,
        label: "wxKXgtbNddzKsw",
        type: "occlusion"
    });
    const sqSViWYlJWrBxhyiBf = mYDtutmAVS.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5565088528031278,
                g: 0.3321447327102188,
                b: 0.3457746859786631,
                a: 0.8218487508277582
            },
            loadOp: "load",
            storeOp: "discard",
            resolveTarget: ywbepTTGGHMxl,
            view: uNFMPOewtNDGpoql
        }],
        depthStencilAttachment: {
            depthClearValue: 0.9538800374795994,
            depthReadOnly: true,
            depthStoreOp: "store",
            stencilClearValue: 3936316520,
            stencilLoadOp: "clear",
            stencilReadOnly: false,
            stencilStoreOp: "discard",
            view: uNFMPOewtNDGpoql
        },
        label: "DPvYWPrQTETdiEWfkej",
        maxDrawCount: 1213422612,
        occlusionQuerySet: aCvSzLpGlKZjfFc
    });
    const UoVFspGdJgEGkrYdI = yXvRNTa.createTexture({
        dimension: "3d",
        format: "r8sint",
        label: "QNtbE",
        sampleCount: 1,
        size: {
            width: 315,
            height: 1665,
            depthOrArrayLayers: 308
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8sint"]
    });
    const ZDIdXssSwv = UoVFspGdJgEGkrYdI.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 1403018172,
        baseMipLevel: 570367503,
        mipLevelCount: 472228953,
        format: "rgb10a2unorm",
        label: "LZeQqqKMBfrkJMtFVj"
    });
    const ynLFdoTxYMcbQ = ZDIdXssSwv.label
    const HbfYLNuJNVo = rqtJATJXY.features
    const wSLEsmdh = await vwhHfSOtanobxe.requestDevice();
    const FzIstCcuXMRIKKyRe = mYDtutmAVS.label
    const TzQkmqqjrnqKlETQOOb = aCvSzLpGlKZjfFc.count
    const UShmwGbtPvCZerx = aCvSzLpGlKZjfFc.type
    const ezlehJYaUeVZPKftvf = NtHcjYOKkGpcJfcP.limits
    const HjBpJjL = RyqjLpjqw.createCommandEncoder({
        label: "vCHAc"
    });
    const qbXdKWlYfmOQR = RyqjLpjqw.createQuerySet({
        count: 1636,
        label: "FosGodSdPvJ",
        type: "occlusion"
    });
    const FmdOofmRJddFROU = rqtJATJXY.info
    const XmFyfxShQGafdEs = mYDtutmAVS.label
    const kDUzYbhRbPHdgp = await rqtJATJXY.requestDevice();
    aCvSzLpGlKZjfFc.destroy();
    const ivxjipsBJk = await navigator.gpu.getPreferredCanvasFormat();
    const sWiCvGjGMXpOwnNuw = await vwhHfSOtanobxe.requestDevice();
    const FxaBJIyEBFVYOIlMy = rqtJATJXY.info
    const eewnGMSTUJe = await rqtJATJXY.requestDevice();
    const oXtLqMSKUz = vwhHfSOtanobxe.limits
    const EdcIAN = kDUzYbhRbPHdgp.createQuerySet({
        count: 350,
        label: "ksgsBevtEsMLaf",
        type: "occlusion"
    });
    EdcIAN.destroy();
    const neCwBsmVUeVkdKEpwKh = NtHcjYOKkGpcJfcP.features
    const vbQRli = kDUzYbhRbPHdgp.createBuffer({
        label: "CSaYfzLWsSwcLz",
        mappedAtCreation: true,
        size: 2775572,
        usage: GPUBufferUsage.UNIFORM
    });
    const iRLaj = await rqtJATJXY.requestDevice();
    const kLpoLrXltJDh = ZDIdXssSwv.label
    const viUdpSKglYjJdO = rqtJATJXY.limits
    const QOkAHxzY = await rqtJATJXY.requestDevice();
    UoVFspGdJgEGkrYdI.destroy();
    const VhiJcQyXOQHMb = zWvXdFOqzXcbqEwzG.features
    const vBwYHJSguOMasPkE = rqtJATJXY.isFallbackAdapter
    const BdcCWRDVMPPnfZuPfk = await vwhHfSOtanobxe.requestDevice();
    const jhiEqermZOOLF = await navigator.gpu.getPreferredCanvasFormat();
    const EJYKvMhOhEsTgzbwI = rqtJATJXY.info
    const jsuNudjuIEqlHbBNzt = sWiCvGjGMXpOwnNuw.queue
    const EWCwMbPSDRST = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const thwQQIhQwslBsRoBXou = rqtJATJXY.features
    const TGmmarIu = EWCwMbPSDRST.features
    const lbDXnjTDZvDmFqMw = navigator.gpu.wgslLanguageFeatures
    const QWEWYZIXKHJPeYwjHdwc = navigator.gpu.wgslLanguageFeatures
    const deMqixTmqoL = eewnGMSTUJe.createBuffer({
        label: "RDilWSAYB",
        mappedAtCreation: false,
        size: 242617612,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE
    });
    qbXdKWlYfmOQR.destroy();
    const wNnpni = RyqjLpjqw.queue
    const KGaBLNnTsd = uNFMPOewtNDGpoql.label
    const kJChopNOYzCVLRY = eewnGMSTUJe.label
    const XLFoDczRMnlIvtufITp = ZDIdXssSwv.label
    const vIxvoIcYhcF = NtHcjYOKkGpcJfcP.createQuerySet({
        count: 332,
        label: "cGIVYwLhJ",
        type: "occlusion"
    });
    vIxvoIcYhcF.destroy();
    const gANLlkBTbz = ywbepTTGGHMxl.label
    const sRyUBdGLh = eewnGMSTUJe.createTexture({
        dimension: "1d",
        format: "r32sint",
        label: "fqyoDOxFwFb",
        sampleCount: 1,
        size: {
            width: 8072,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r32sint"]
    });
    const KKEiyfehg = sRyUBdGLh.createView({
        aspect: "all",
        dimension: "cube-array",
        arrayLayerCount: 2341051398,
        baseArrayLayer: 1718971041,
        baseMipLevel: 843624508,
        mipLevelCount: 1584436185,
        format: "rg32sint",
        label: "girxYDfXhqKA"
    });
    const ZZFqJfqHcBz = sWiCvGjGMXpOwnNuw.createQuerySet({
        count: 4032,
        label: "gCPBzZzvyKAbER",
        type: "occlusion"
    });
    ZZFqJfqHcBz.destroy();
    const iMybSUsOseJrVTwPWop = wSLEsmdh.createQuerySet({
        count: 369,
        label: "qLGCfMyUVVo",
        type: "occlusion"
    });
    iMybSUsOseJrVTwPWop.destroy();
    const EtLRbqLWCGYoxmj = sWiCvGjGMXpOwnNuw.limits
    const xWSRHmyRcxvbAQkhQn = await navigator.gpu.getPreferredCanvasFormat();
    const gBVqXuckJhKSQnYNm = await navigator.gpu.getPreferredCanvasFormat();
    const SvIkqEIDKPvwhQyl = zWvXdFOqzXcbqEwzG.createQuerySet({
        count: 1239,
        label: "khYGw",
        type: "occlusion"
    });
    const wEZoQCmWMUldQ = yXvRNTa.limits
    const GumLlPaxaBrwAWqv = kDUzYbhRbPHdgp.features
    const fHNIf = SvIkqEIDKPvwhQyl.type
    const smaCYraACVK = SvIkqEIDKPvwhQyl.label
    const BScCppKmJVlFmLMBQ = HjBpJjL.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3694546497347704,
                g: 0.6642811318910733,
                b: 0.6100754617201719,
                a: 0.9823482293239924
            },
            loadOp: "load",
            storeOp: "store",
            resolveTarget: ZDIdXssSwv,
            view: ywbepTTGGHMxl
        }],
        depthStencilAttachment: {
            depthClearValue: 0.7554313556679103,
            depthReadOnly: false,
            depthStoreOp: "store",
            stencilClearValue: 4013286650,
            stencilLoadOp: "load",
            stencilReadOnly: false,
            stencilStoreOp: "store",
            view: uNFMPOewtNDGpoql
        },
        label: "oCUEXMMqdXl",
        maxDrawCount: 2997369711,
        occlusionQuerySet: SvIkqEIDKPvwhQyl
    });
    const qEbtHGpC = SvIkqEIDKPvwhQyl.type
    const nPDipZQKUbnLWX = KKEiyfehg.label
    const mViTlhCOUJgY = navigator.gpu.wgslLanguageFeatures
    const nrWqkfMC = VsLQQFQWySBvlE.createCommandEncoder({
        label: "WoqjASY"
    });
    const BSylZFMoAovjOCCe = await vwhHfSOtanobxe.requestDevice();

}
main().catch(console.error);