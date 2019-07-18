import "bootstrap";
import {
  searchBarInit
} from "./searchbar.js";
import {
  smoothScroll
} from "./scroll_to_element";

searchBarInit();

// header arrow auto scrolling (it's not perfect)
const downArrow = document.getElementById('header-down');
if (downArrow !== null) {
  downArrow.addEventListener('click', (_event) => {
    smoothScroll('content-wrapper');
  });
}