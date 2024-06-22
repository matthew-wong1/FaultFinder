const puppeteer = require('puppeteer');
const path = require('path');
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

        const BVDkyARAXJFwfrd = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        const PWXsTqYaeKzjfgvlVKVJ = await BVDkyARAXJFwfrd.requestDevice();
        context.configure({
            alphaMode: "opaque",
            colorSpace: "display-p3",
            device: PWXsTqYaeKzjfgvlVKVJ,
            format: "rgba16float",
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING
        });
        const RxNhsW = context.getCurrentTexture();
        const uKWmOpmZmGuLdL = await BVDkyARAXJFwfrd.requestAdapterInfo();
        const iPFlAiiX = BVDkyARAXJFwfrd.limits
        const AvXcLssawMYOc = PWXsTqYaeKzjfgvlVKVJ.createCommandEncoder({
            label: "ZNbWVXgaCJrQnjy"
        });
        const OxPGITDVvVX = RxNhsW.createView({
            aspect: "all",
            dimension: "cube",
            arrayLayerCount: 1,
            baseArrayLayer: 2911533464,
            baseMipLevel: 3089565212,
            mipLevelCount: 276080958,
            format: "rgb9e5ufloat",
            label: "sFZdeuhpHgNqPQ"
        });
        const yOxzIv = PWXsTqYaeKzjfgvlVKVJ.createQuerySet({
            count: 1244,
            label: "dDwvavgb",
            type: "occlusion"
        });
        const wffJiEkUtGRpoCPO = AvXcLssawMYOc.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.8756585393153129,
                    g: 0.7768117272642867,
                    b: 0.3441495211835549,
                    a: 0.7612496846227161
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: OxPGITDVvVX,
                view: OxPGITDVvVX
            }],
            depthStencilAttachment: {
                depthClearValue: 0.33386004760133037,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 775620874,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: OxPGITDVvVX
            },
            label: "XHedSQEAkoU",
            maxDrawCount: 2270173161,
            occlusionQuerySet: yOxzIv
        });
        const OvNVWmbpvMo = context.canvas
        const iQygXFMTpFCYDR = BVDkyARAXJFwfrd.features
        const OmlKWMzAcUFRRLWBF = uKWmOpmZmGuLdL.architecture
        const jdhRfXr = RxNhsW.createView({
            aspect: "all",
            dimension: "cube-array",
            arrayLayerCount: 1374902934,
            baseArrayLayer: 2703377324,
            baseMipLevel: 2153444484,
            mipLevelCount: 3396176839,
            format: "r8uint",
            label: "tyhUYtzjbgvezudwkSua"
        });
        const TjpGiYjFBgWDc = jdhRfXr.label
        const afEuWJhdLXt = AvXcLssawMYOc.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.06328557755925934,
                    g: 0.9968812087865054,
                    b: 0.34698969260973167,
                    a: 0.34060812922308725
                },
                loadOp: "clear",
                storeOp: "discard",
                resolveTarget: OxPGITDVvVX,
                view: jdhRfXr
            }],
            depthStencilAttachment: {
                depthClearValue: 0.4784870772164854,
                depthReadOnly: true,
                depthStoreOp: "store",
                stencilClearValue: 2893684798,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: OxPGITDVvVX
            },
            label: "OCkdfeq",
            maxDrawCount: 3975541108,
            occlusionQuerySet: yOxzIv
        });
        const YDDYCmPTVVnKKRHt = navigator.gpu.wgslLanguageFeatures
        const PwDMEXY = PWXsTqYaeKzjfgvlVKVJ.createQuerySet({
            count: 2369,
            label: "HQJtONotXnkguVu",
            type: "occlusion"
        });
        const zYZKRlKjFCqO = await BVDkyARAXJFwfrd.requestAdapterInfo();
        const BOKMkrcoxqxiaHV = zYZKRlKjFCqO.vendor
        const sKcAT = zYZKRlKjFCqO.architecture
        const ifkZeuRjp = PWXsTqYaeKzjfgvlVKVJ.createQuerySet({
            count: 2446,
            label: "BHRUJYcsvYBEQhHMQ",
            type: "occlusion"
        });
        const RWNAgygHHIgdxEoOFb = AvXcLssawMYOc.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.9163834527736199,
                    g: 0.1707739003105554,
                    b: 0.5661883568348686,
                    a: 0.30822594005868864
                },
                loadOp: "clear",
                storeOp: "store",
                resolveTarget: OxPGITDVvVX,
                view: OxPGITDVvVX
            }],
            depthStencilAttachment: {
                depthClearValue: 0.5805035538018842,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 231431691,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: jdhRfXr
            },
            label: "QvGnNplkwtaveA",
            maxDrawCount: 2753572041,
            occlusionQuerySet: PwDMEXY
        });
        const iAUiwHIvwVZ = OxPGITDVvVX.label
        yOxzIv.destroy();
        const MhsQDHRNiX = context.canvas
        const xcWEQnYUMof = context.canvas
        const DckbKdBqUS = navigator.gpu.wgslLanguageFeatures
        const WQvodREWJ = PWXsTqYaeKzjfgvlVKVJ.createTexture({
            dimension: "1d",
            format: "r16float",
            label: "RiGNOJEuvnA",
            sampleCount: 1,
            size: {
                width: 3003,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
            viewFormats: ["r16float"]
        });
        PwDMEXY.destroy();
        const yBJhpWvXrR = ifkZeuRjp.label
        const MzRcn = navigator.gpu.wgslLanguageFeatures
        const wWVYfPHbalFj = PWXsTqYaeKzjfgvlVKVJ.queue
        const CLtPDCszOemSP = await BVDkyARAXJFwfrd.requestDevice();
        const izbLpev = PWXsTqYaeKzjfgvlVKVJ.createQuerySet({
            count: 3864,
            label: "qMxeNPKdrQYKle",
            type: "occlusion"
        });
        const PXVonGkb = PWXsTqYaeKzjfgvlVKVJ.createCommandEncoder({
            label: "IlUadLfc"
        });
        const ZngoBcYUGJYsf = CLtPDCszOemSP.createQuerySet({
            count: 2251,
            label: "LxqLLFtUEDtThfOkyP",
            type: "occlusion"
        });
        const VXARF = context.canvas
        ZngoBcYUGJYsf.destroy();
        const SpvILz = context.canvas
        const BRiEjxPzdLUlBc = uKWmOpmZmGuLdL.vendor
        const rsuicPfBTWtYy = CLtPDCszOemSP.createCommandEncoder({
            label: "VmAQycTDhnzYjK"
        });
        const tyObsJ = context.canvas
        const fDrabWtYSThwANtKtUOW = uKWmOpmZmGuLdL.description
        const avMifkVeolmpbPAp = ifkZeuRjp.type
        const bDOnihlUN = PWXsTqYaeKzjfgvlVKVJ.label
        ifkZeuRjp.destroy();
        const XahlNQE = PWXsTqYaeKzjfgvlVKVJ.createBuffer({
            label: "EraZfswQNeUeOKFMbYP",
            mappedAtCreation: false,
            size: 50316364,
            usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX
        });
        const ZZnyItAypSGAwqf = CLtPDCszOemSP.createTexture({
            dimension: "1d",
            format: "rg16sint",
            label: "blvdNsNfUiC",
            sampleCount: 1,
            size: {
                width: 5308,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_DST,
            viewFormats: ["rg16sint"]
        });
        const kPnpWJuiiiCajte = izbLpev.label
        const riozdLwEZkFKKGR = context.getCurrentTexture();
        const JAmhF = zYZKRlKjFCqO.description
        const AadwVlahHKgah = PWXsTqYaeKzjfgvlVKVJ.queue
        const jupmXjBkpOQR = await navigator.gpu.getPreferredCanvasFormat();
        const SXVjIREyZPAR = uKWmOpmZmGuLdL.description
        const fjFIfJMWvxtX = PWXsTqYaeKzjfgvlVKVJ.features
        const BwjAGQfqoEIGgsMvhk = uKWmOpmZmGuLdL.device
        const LgjauLPFXuRZsfs = PWXsTqYaeKzjfgvlVKVJ.createBuffer({
            label: "pygNhzYXLeOatEipF",
            mappedAtCreation: false,
            size: 66706412,
            usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC
        });
        const rjQVJahFjjsPejtBfPa = await BVDkyARAXJFwfrd.requestDevice();
        ZZnyItAypSGAwqf.destroy();
        const OIyfZMXJKu = zYZKRlKjFCqO.device
        context.unconfigure();
        const uchiej = rjQVJahFjjsPejtBfPa.createTexture({
            dimension: "3d",
            format: "rg32uint",
            label: "KDrZhJLtyiP",
            sampleCount: 1,
            size: {
                width: 1851,
                height: 58,
                depthOrArrayLayers: 948
            },
            mipLevelCount: 5,
            usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
            viewFormats: ["rg32uint"]
        });
        const DlvdwKuVPMahBlCfeSde = uKWmOpmZmGuLdL.vendor
        const znDPRefO = CLtPDCszOemSP.createCommandEncoder({
            label: "TRFHNDQAoYk"
        });
        const IMmTcgLIOZPlqLRNqO = rjQVJahFjjsPejtBfPa.label
        const pAjtzsAZ = OxPGITDVvVX.label
        const FoXkQiNPfqh = CLtPDCszOemSP.createTexture({
            dimension: "1d",
            format: "rg8sint",
            label: "QANqUZUF",
            sampleCount: 1,
            size: {
                width: 2311,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
            viewFormats: ["rg8sint"]
        });
        const BxRLGNhK = context.canvas
        const AnCslX = rsuicPfBTWtYy.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.4285331716409435,
                    g: 0.17141178636932286,
                    b: 0.9758777249902315,
                    a: 0.6525436600031937
                },
                loadOp: "load",
                storeOp: "discard",
                resolveTarget: OxPGITDVvVX,
                view: OxPGITDVvVX
            }],
            depthStencilAttachment: {
                depthClearValue: 0.3484649061065297,
                depthReadOnly: false,
                depthStoreOp: "store",
                stencilClearValue: 1734233997,
                stencilLoadOp: "load",
                stencilReadOnly: false,
                stencilStoreOp: "store",
                view: jdhRfXr
            },
            label: "caEHDUecMYPwMgyJXp",
            maxDrawCount: 1024018874,
            occlusionQuerySet: izbLpev
        });
        const QTtpenDWyWCpXOwmOGd = rjQVJahFjjsPejtBfPa.createCommandEncoder({
            label: "EuqVxSpfMavHHmkEq"
        });
        const MWPVEVeHGZNFzMwC = jdhRfXr.label
        const XdtojUIniOxiQjhypEl = zYZKRlKjFCqO.vendor
        const WAUxzo = BVDkyARAXJFwfrd.features
        RxNhsW.destroy();
        const KLlFyUooizV = CLtPDCszOemSP.queue
        uchiej.destroy();
        izbLpev.destroy();
        const CTiwzVZMhYRfDcNO = PWXsTqYaeKzjfgvlVKVJ.createQuerySet({
            count: 1748,
            label: "nNIoLMBphwN",
            type: "occlusion"
        });
        const qLGVIkrVmkjfQEh = CTiwzVZMhYRfDcNO.label
        const QHsrE = CLtPDCszOemSP.label
        const iEkCBOSxjKCFCUsWwYE = zYZKRlKjFCqO.device
        const enjaXzAmIZHmJDrZZoBm = rsuicPfBTWtYy.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.13675108264294034,
                    g: 0.5371718948017827,
                    b: 0.8198277043305924,
                    a: 0.5955194541736686
                },
                loadOp: "load",
                storeOp: "store",
                resolveTarget: jdhRfXr,
                view: jdhRfXr
            }],
            depthStencilAttachment: {
                depthClearValue: 0.08824228572811277,
                depthReadOnly: false,
                depthStoreOp: "discard",
                stencilClearValue: 3500998648,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: OxPGITDVvVX
            },
            label: "wRwpSJWhRfnqlYtBLe",
            maxDrawCount: 1646478652,
            occlusionQuerySet: CTiwzVZMhYRfDcNO
        });
        const flUwVJuKikzkb = context.canvas
        context.unconfigure();
        const IELWcmMu = CLtPDCszOemSP.queue
        const cAFAYXRr = QTtpenDWyWCpXOwmOGd.label
        const gVtrAoLSSyjghAsTng = context.canvas
        const hDgzBnkNgsBAp = rsuicPfBTWtYy.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.6183128462301284,
                    g: 0.826223628738613,
                    b: 0.030884570021977975,
                    a: 0.3500392144965929
                },
                loadOp: "load",
                storeOp: "store",
                resolveTarget: jdhRfXr,
                view: jdhRfXr
            }],
            depthStencilAttachment: {
                depthClearValue: 0.3373952191856098,
                depthReadOnly: false,
                depthStoreOp: "store",
                stencilClearValue: 2632833986,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "discard",
                view: OxPGITDVvVX
            },
            label: "MlaRVRxGmS",
            maxDrawCount: 1975599122,
            occlusionQuerySet: CTiwzVZMhYRfDcNO
        });
        const OsZoHKaPNAYiPYfKpS = rjQVJahFjjsPejtBfPa.createQuerySet({
            count: 3542,
            label: "aPQXTfLGxzCMJbzZwCf",
            type: "occlusion"
        });
        CTiwzVZMhYRfDcNO.destroy();
        const wCsWTcgyKLDMGUIMt = PXVonGkb.label
        const yNjiPXdJHUBkOVH = await navigator.gpu.requestAdapter({
            powerPreference: "low-power"
        });
        context.configure({
            alphaMode: "premultiplied",
            colorSpace: "srgb",
            device: CLtPDCszOemSP,
            format: "rgba16float",
            usage: GPUTextureUsage.RENDER_ATTACHMENT
        });
        const SFegDz = QTtpenDWyWCpXOwmOGd.beginRenderPass({
            colorAttachments: [{
                clearValue: {
                    r: 0.8271131443060317,
                    g: 0.29645056978146656,
                    b: 0.8832898289200652,
                    a: 0.454955126375875
                },
                loadOp: "load",
                storeOp: "store",
                resolveTarget: jdhRfXr,
                view: jdhRfXr
            }],
            depthStencilAttachment: {
                depthClearValue: 0.7906244851779762,
                depthReadOnly: true,
                depthStoreOp: "discard",
                stencilClearValue: 3846318760,
                stencilLoadOp: "clear",
                stencilReadOnly: true,
                stencilStoreOp: "store",
                view: OxPGITDVvVX
            },
            label: "KKQbXgKyhXcKYHMtsmF",
            maxDrawCount: 3381136556,
            occlusionQuerySet: OsZoHKaPNAYiPYfKpS
        });
        const ouNkjwRmZEoeBcO = PWXsTqYaeKzjfgvlVKVJ.createBuffer({
            label: "SsSus",
            mappedAtCreation: true,
            size: 49505804,
            usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC
        });
        const khKpKdF = rjQVJahFjjsPejtBfPa.createTexture({
            dimension: "1d",
            format: "r32float",
            label: "BaOnqXmBWDWJNWJK",
            sampleCount: 1,
            size: {
                width: 5824,
                height: 1,
                depthOrArrayLayers: 1
            },
            mipLevelCount: 1,
            usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
            viewFormats: ["r32float"]
        });
        const RIhfraCGOk = context.canvas
        const mVPSq = PWXsTqYaeKzjfgvlVKVJ.createBuffer({
            label: "fvgGoIPNTc",
            mappedAtCreation: true,
            size: 171192396,
            usage: GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
        });
        const LIPjQgR = rjQVJahFjjsPejtBfPa.createQuerySet({
            count: 3307,
            label: "mKlEDBMXWQlPgoZFnTH",
            type: "occlusion"
        });
        riozdLwEZkFKKGR.destroy();
        const sbSOZbaMPrfO = yNjiPXdJHUBkOVH.features
        const HaTZrIw = zYZKRlKjFCqO.vendor
        const Bfxawnr = context.canvas
        const GOgZpDnyGq = PWXsTqYaeKzjfgvlVKVJ.createQuerySet({
            count: 2233,
            label: "LiinA",
            type: "occlusion"
        });
        const YKBamXVKLez = PWXsTqYaeKzjfgvlVKVJ.features
        const CMAjlqTTGGHvgcq = jdhRfXr.label

    });
    await browser.close()
}
main().catch(console.error);