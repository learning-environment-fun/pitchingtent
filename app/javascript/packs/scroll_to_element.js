// https://stackoverflow.com/questions/18071046/smooth-scroll-to-specific-div-on-click/18071231

var smoothScroll = function (elementId) {

  // sometimes we get stuck in infinite scroll
  let shouldKillProcess = false;
  const maxTimeBeforeKill = 1000; // milliseconds

  setTimeout(() => shouldKillProcess = true, maxTimeBeforeKill);

  var MIN_PIXELS_PER_STEP = 16;
  var MAX_SCROLL_STEPS = 30;
  var target = document.getElementById(elementId);
  var scrollContainer = target;
  do {
    scrollContainer = scrollContainer.parentNode;
    if (!scrollContainer) return;
    scrollContainer.scrollTop += 1;
  } while (scrollContainer.scrollTop === 0);

  var targetY = 0;
  do {
    if (target === scrollContainer) break;
    targetY += target.offsetTop;
  } while (target = target.offsetParent);

  var pixelsPerStep = Math.max(MIN_PIXELS_PER_STEP,
    Math.abs(targetY - scrollContainer.scrollTop) / MAX_SCROLL_STEPS);

  var isUp = targetY < scrollContainer.scrollTop;

  var stepFunc = function () {
    if (shouldKillProcess) {
      return;
    }

    if (isUp) {
      scrollContainer.scrollTop = Math.max(targetY, scrollContainer.scrollTop - pixelsPerStep);
      if (scrollContainer.scrollTop <= targetY) {
        return;
      }
    } else {
      scrollContainer.scrollTop = Math.min(targetY, scrollContainer.scrollTop + pixelsPerStep);

      if (scrollContainer.scrollTop >= targetY) {
        return;
      }
    }

    window.requestAnimationFrame(stepFunc);
  };

  window.requestAnimationFrame(stepFunc);
};

export { smoothScroll };