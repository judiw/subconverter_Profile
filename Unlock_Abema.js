// ==UserScript==
// [url=home.php?mod=space&uid=5839]@name[/url] Abema 区域限制
// @version 1.0.0
// @run-at document-end
// @namespace Violentmonkey Scripts
// @match https://abema.tv/*
// @grant none
// ==/UserScript==

Object.defineProperty(__CLIENT_REGION__, 'isAllowed', {
  get: () => true
});
Object.defineProperty(__CLIENT_REGION__, 'status', {
  get: () => true
});
