'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/config": "2c2a26a24a434d0c52ff99d71ac0aacf",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "319dc4c8dd8db74d3f259155793ba011",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/objects/00/d2c272e6d94ac1de96622a8267bdd1022d5461": "3391f73e993df7d8ea3e1aab6001c5d4",
".git/objects/05/a9058f513cce5faf1704e06e3c150688b0a01f": "e8d02f60cf87abd4c1de4b153dd696dc",
".git/objects/06/edb7ef465a04b76584852597951cf1f51bbcfe": "a8537a98e21b23c9a2100310220bceb3",
".git/objects/09/0c3547d3da6d0c424cdc825b1dd443b897afa0": "3566f937066268bf4ff3e025a21c9838",
".git/objects/0f/5b2575758cd4d9b2d442768a18ead8c17cee9b": "6fb8195dbcf65f8845acd6dcc452e070",
".git/objects/12/fc275e3b2b903a65f50c91597d189e6bec0840": "75b122a475195721993aa03723c57672",
".git/objects/18/198c3cfb47dde54efbba1e246cc09872af74da": "34f559458d785ebf9806a92f0d60a296",
".git/objects/19/66e1c18ff25cf188b07318cd22d5d978741cef": "06d040474f269b9b223a809211e7e41d",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/27/a297abdda86a3cbc2d04f0036af1e62ae008c7": "51d74211c02d96c368704b99da4022d5",
".git/objects/2b/2ac848e431fdd693ddd4315e217b610a888df3": "c6a10c0405f2330f75f75ddad03c9332",
".git/objects/31/39dc7cf301ea55d8f5e781d98d5c58a6ee1ccd": "e26ff2b827306e1115fe3796b3329bdc",
".git/objects/35/3f923c6a46d81268d5c92b75bdcc4eb4ee2dd8": "fbe08b66ac1dab5ea9e597e702304e8a",
".git/objects/3c/38f510d6227e6085e190e1898125d12a71e5c1": "90fac2eecdb35902580fab85efcb6f2b",
".git/objects/44/a58059d94a7328136153ae4349396bc2d478f8": "8bf87e45aa0cfa1873090470fe933184",
".git/objects/49/37798d76c40ec0552d7501676b28177fdf086d": "430ad70ec320c84ca4e141d740bc60d0",
".git/objects/4a/68c16bd50230b359786bfbdd16628fcc5860d9": "6cdb127138dbff2269937cc5d90dc4c3",
".git/objects/4e/5c919cc265dd4d86c540c975dfd0ec805dc137": "10961f58c62f01da0c3a0b345b876206",
".git/objects/54/ac8c05305374f78f47359a96e7831a600541a0": "eaaf7ebe6b729d2dba45f2687619de7e",
".git/objects/5e/bf37944a56f2b5e479e3858392c6e9030da2da": "d874f5ce1eb6512c7b77ebd17b676f00",
".git/objects/63/6931bcaa0ab4c3ff63c22d54be8c048340177b": "8cc9c6021cbd64a862e0e47758619fb7",
".git/objects/65/02e4732085fbae2f9eca2fa6070fbcd76b4422": "6c79650e773e0362f77d84dcc5698780",
".git/objects/68/7079fc6f1a6f6df63c61f87d1d3d60764942a7": "e0758735fb5393faacb98916fadb5452",
".git/objects/68/c6cc30c9edb5da36f11442c546ff06bccc09c5": "2db59c0d9f0044a81de7b2209d9673a9",
".git/objects/6d/5f0fdc7ccbdf7d01fc607eb818f81a0165627e": "2b2403c52cb620129b4bbc62f12abd57",
".git/objects/70/6ce3934432e0219ef7cd3340550ead51125e68": "12b6be500b2d08e020ffb64ca8d98fcb",
".git/objects/70/ef1c7fb61f365f65371e24731f7db29b1c3e69": "7e2e3bf955f882804465cb0dc8fbfec5",
".git/objects/73/7f149c855c9ccd61a5e24ce64783eaf921c709": "1d813736c393435d016c1bfc46a6a3a6",
".git/objects/7d/6918050f3c59cc932ca1887f22be815e1923b4": "ec88669e049480ca12502d6a66ae8439",
".git/objects/81/08312a088af70ad14730317f9fc401078311b1": "5901c34c602b098d005abbdface59ce7",
".git/objects/82/b349301039f348952b9cba7133da5f8b368ae3": "c4a163166f94ba4d0439667b9046811d",
".git/objects/82/c1770089881f9e198654bdd9f222c56a804741": "ced2d791571aef429c19290f835bf3f1",
".git/objects/84/485d40eed56d10bdc00eeab93c1d14bf0cb8cd": "ac688fd410a5780e8f750fd300ba5363",
".git/objects/85/5e65377d74922f99b3d2f8409848cbda2136bb": "c6910d36950358b06137e083c30d9241",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/bada2691db641eda6000606dca9bc6fc31b2a6": "24e21961236646d84ddb99d74e856626",
".git/objects/8c/59773bee8314a8ffb4431593d0fb49f52e34c6": "2eb993d30677573ffd0e58484cc6a514",
".git/objects/97/8a4d89de1d1e20408919ec3f54f9bba275d66f": "dbaa9c6711faa6123b43ef2573bc1457",
".git/objects/99/2ed2b796efbb53f1fc936e36f25a0b3ffa6224": "50142dd473f87e324d5f42b9c0021645",
".git/objects/a3/6ba4e3325a532cd181f887a4c40a2d8b5dd218": "5a057b91b9f2a002d4a802d9c02c4723",
".git/objects/a3/f72ccfefc62795ae2375d43b924ab05a3c1490": "105c56ed6071f9bbee42515cf23dd551",
".git/objects/a6/caef336f597cda220f201b902d408b9dc91905": "31badcdcfc8c6006eff31599bf156750",
".git/objects/a7/0867d189b6358225e51f7e42a978e25ee2912b": "0a1161567fdcaef0afeb8d6abab30a2b",
".git/objects/ab/915743e29570ab74ab151b1b164866e937d982": "d7a5eebd6f1f84e93bdedc1ca224b0aa",
".git/objects/ab/d5517e09b20c0720373c3cb3dadfd55084438d": "3f249d11be68716bf87c5c08b5dd89e3",
".git/objects/af/31ef4d98c006d9ada76f407195ad20570cc8e1": "a9d4d1360c77d67b4bb052383a3bdfd9",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b1/afd5429fbe3cc7a88b89f454006eb7b018849a": "e4c2e016668208ba57348269fcb46d7b",
".git/objects/b2/e3901bbe2805fbd24d56f76a3078f000a341be": "7930df143e2fbcd65afe1e7a99f74e22",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/d85fca520e61fa64ad588421ef31d0543a7fc5": "a39f191625d2676cd5dc6eab50647568",
".git/objects/b8/a44dfab18285f0551fb5ac1dd3edc52e7bd9a9": "f8e2b64e54aba44e64da82b7640e928f",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/2c0494e81c7327ae3af6486089fee078e9d492": "568148cae2bf00a0f8229a7f1c87f555",
".git/objects/bd/a01bd73f2c95f5f35252f334db286888cb33b3": "9e22e7f2bf5ccacff5a38b58daaa2c4b",
".git/objects/be/8aacdbbf40aa56612d7fc65f3e32163d77b514": "f7e8e7ea93bce549d5b33baf3bef5859",
".git/objects/c0/20c24e9181be3253955a2dc464663aa0ecf70b": "2fa644be343f7bf8422a10103d6a25b4",
".git/objects/c3/e81f822689e3b8c05262eec63e4769e0dea74c": "8c6432dca0ea3fdc0d215dcc05d00a66",
".git/objects/c5/f536f600d5538e19ebb438c7332c2e8b44fec8": "5f635c3dac8bc57ebaa17008c56d7e72",
".git/objects/c6/06caa16378473a4bb9e8807b6f43e69acf30ad": "ed187e1b169337b5fbbce611844136c6",
".git/objects/c7/a77822a09f0518e794e9ce38a68c05d9c08be0": "80302cf4235cb6608660b5c5d326f393",
".git/objects/cd/4e5d2907073f40965244cc39dca23fea4d0f95": "fb66b4b259616cfdd39f5feec4980362",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/9d3cdfe74235590a03f191dc22308bac0aa3c7": "4d58b610277aa35fcb8b688243a732b2",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/da/25f974c65caf20739265671f3787c9f4bdba0a": "ec9503eb9ac26f1c20a9e57a66b81684",
".git/objects/db/22fbb91645600fde1305e3aa9a9714afb12fef": "7ffb0641e264115b7f410582b26a837d",
".git/objects/db/613572a807053d626e3448b8dc31ecd72882fe": "8076e2bf982cb6756878abda29a722e3",
".git/objects/e3/35e8f7fe37571035b0f38e5a6b0885e78c4b88": "be2a32295f298a7de351bb4ab6bcfbd6",
".git/objects/e8/764e28dd40c4754a6a42203dc5fbf72a455de0": "68c165cd5ce5236c0b6140aa27a718d2",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/361605e9e785c47c62dd46a67f9c352731226b": "d1eafaea77b21719d7c450bcf18236d6",
".git/objects/ed/572a8b5759b9dc405caaff018e479c797b3902": "8a89bc28e8851740ea469c8ea45bfdab",
".git/objects/f0/9724ee15803c60280996e9c8be4daffa18c4ea": "7a7615ceeaf21ca3c7fe3026105a54af",
".git/objects/f0/ef0e022ca42d0d94d7ca8dd4ce66c2ba526a93": "179d62cf56faf774e291bc81afdee26b",
".git/objects/f0/f5ad8c496d45420427c122290ea983d6808624": "cf0007281ee381ee848443f5c04fdde2",
".git/objects/f1/03fac58b3cb932ad6a61d46ff7b4518dd60d06": "f8a85e6942907206c535bc972e895d46",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/9ddd11a18d984cb56e21eaf0cddf021bab6be4": "3b142c91094c93a657f9363168788515",
".git/objects/f7/9961a9dc4ae2b176059b3038b3e2d5392c25af": "8f50d6babf1e956b29c48aa841f58320",
"assets/AssetManifest.bin": "da1b98d252c3d8d9dc6999e0975e91da",
"assets/AssetManifest.bin.json": "707f3fac43ba67414c97d80c926a9ff2",
"assets/AssetManifest.json": "d9a47fc0c8db2370d38a08490fd194b8",
"assets/assets/icons/behance.svg": "1487dff57f5c15131037cb6965a4d0bf",
"assets/assets/icons/bloc.png": "977fbfba561065f9a68c4b47f9774531",
"assets/assets/icons/check.svg": "bce7a581bb999caac446c9138a57a401",
"assets/assets/icons/dart.png": "1ab71d33e7ba834836197b4fa8726da0",
"assets/assets/icons/download.svg": "8c24d4679cb0c5297277321bf7b65d28",
"assets/assets/icons/dribble.svg": "cf842513f50591eb280695ad14bfa409",
"assets/assets/icons/facebook.png": "3364b2b6eb7edf5bd7d2b54ae4a7313d",
"assets/assets/icons/facebook.svg": "db450965af25568dc6d279dfc11cfaa8",
"assets/assets/icons/firebase.png": "36170822afe4c716cfbdb96dac8cd10e",
"assets/assets/icons/flutter.png": "1105c9a994c1a6638daed558d5b631fd",
"assets/assets/icons/github.svg": "49b7a0f6543674cc4743ec1a9f02e368",
"assets/assets/icons/instagram.png": "225b427ccb3b07901e3b76efaa55fcef",
"assets/assets/icons/instagram.svg": "11baccc6fea73c6373003451dc336440",
"assets/assets/icons/linkedin.svg": "2f5e837978e8a6bb595dfd11c8dbd42f",
"assets/assets/icons/MERN-logo.png": "ac0686a4662c1e4643d42c1946bb84f1",
"assets/assets/icons/mern-stack.png": "42c74ae55514a36a00f684e8cc3d3add",
"assets/assets/icons/twitter.svg": "c09d9f98cb67b0dfc2aa4c63170f2632",
"assets/assets/icons/youtube.png": "a1b800ea256e87e74632db1f492c5293",
"assets/assets/icons/youtube.svg": "7a44696754509db83fd9e8cae4d62e88",
"assets/assets/images/anil_logo.png": "6c1017a1ec04ffbb37c99d24575bc939",
"assets/assets/images/bashirprofile.jpg": "b0071c36ea28817d4e09094e7f10e0be",
"assets/assets/images/bmi_cal.jpg": "5c4a4dfc72fc21209311cde329daa552",
"assets/assets/images/favicon.png": "1e1db45fa43ea0169761b04b270eb5c9",
"assets/assets/images/FinalImage.jpg": "f2869eba7d8c4b51b73ef082f9b7fb51",
"assets/assets/images/front_image.png": "50fd0aff27ae2290a1ac95573b062786",
"assets/assets/images/google_clone.jpg": "5fdc7631bc7712655c29c3d3e5b764cd",
"assets/assets/images/Icon-512.png": "a1325f6ca757299359ef1bb7e2668e25",
"assets/assets/images/image.png": "84b14c5e8eaf11b17787e365ded2fa7c",
"assets/assets/images/mernInternship.jpeg": "c7c44b71b2bd6daba9930e1de328c649",
"assets/assets/images/nothing.png": "8582ee13863b1803e495e41ad25e6287",
"assets/assets/images/weather_app.jpg": "9c2bd5eb0e6e6192829805f0b5bb57f8",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "3e23210711d875ba7dac1415ccf88e18",
"assets/NOTICES": "dc604db7ec7bdc90e3ddd3be2bc593c4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "088d57bc5172ba21afd70fcd83429955",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00a0d5a58ed34a52b40eb372392a8b98",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "32a15f7713f52ace70814eec9f775ec2",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"bashirprofile.jpg": "b0071c36ea28817d4e09094e7f10e0be",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "24880aa174c537604b620959f91b507d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "5847658fcdc41ecdb1692a5b895e4e80",
"/": "5847658fcdc41ecdb1692a5b895e4e80",
"main.dart.js": "01ccdf734615e26fa40fc30e0b187be6",
"manifest.json": "8542b4849da903a211dc6140ab03c23b",
"version.json": "81f3f6cf046aa3fd935033fcd513a40e"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
