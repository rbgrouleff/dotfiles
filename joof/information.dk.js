(function() {
  const noScrollClass = "noScroll";
  const targetNode = document.querySelector("html");
  const config = { attributes: true, childList: false, subtree: false };

  const removeCookieOverlay = function(target) {
    target.classList.toggle(noScrollClass);
    document.body.querySelector("div").remove();
  };

  const callback = function(mutationList, observer) {
    mutationList.forEach(function(record) {
      if (record.attributeName === "class" && record.target.classList.contains(noScrollClass)) {
        removeCookieOverlay(record.target);
      }
    });
  };


  const observer = new MutationObserver(callback);

  observer.observe(targetNode, config);

  if (targetNode.classList.contains(noScrollClass)) {
    removeCookieOverlay(targetNode);
  }
})();
