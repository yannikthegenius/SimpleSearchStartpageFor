(async function () {
    "use strict";

    chrome.contextMenus.create({
        id: "search-startpage",
        title: "Search &startpage for \"%s\"",
        contexts: ["selection"]
    });

    chrome.contextMenus.onClicked.addListener(async (info, tab) => {
        if (info.menuItemId !== "search-startpage" || !info.selectionText)
            return;

        let url = new URL("https://www.startpage.com/search");
        url.searchParams.set("q", info.selectionText.trim());

        await chrome.tabs.create({
            url: url.href
        });
    });
}());
