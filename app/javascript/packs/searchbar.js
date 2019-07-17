let searchBar;
let searchBarIcon;
let searchBarInput;
let searchBarOriginalParent;
const isLightTimeoutTime = 5; // millisecs
const defaultSearchText = 'Scope out a tent';

const searchBarInit = () => {
  searchBar = document.querySelector('.search-bar');

  if (searchBar !== null) {
    searchBarOriginalParent = searchBar.parentElement;
    searchBarInput = searchBar.querySelector('input');
    searchBarIcon = searchBar.querySelector('.search-bar-icon');

    searchBarFadeInit();
    searchBarScrollTrackingInit();
    searchBarFocusDetectInit();
  }
}

const searchBarFadeInit = () => {
  searchBarInput.addEventListener('mouseenter', (_event) => {
    searchBarIcon.classList.toggle('is-hovered');
  });

  searchBarInput.addEventListener('mouseleave', (_event) => {
    searchBarIcon.classList.toggle('is-hovered');
  });
}

const searchBarScrollTrackingInit = () => {
  document.addEventListener('scroll', (_event) => {
    const searchBarRect = searchBar.getBoundingClientRect();
    const searchBarHeight = searchBarRect.bottom - searchBarRect.top;

    const originalParentRect = searchBarOriginalParent.getBoundingClientRect();

    // if (searchBar.parentElement === searchBarOriginalParent) {
    if (originalParentRect.bottom - searchBarHeight <= 0) {
      if (!Array.from(searchBar.classList).includes('is-detached')) {
        searchBar.classList.toggle('is-detached');

        // remove from flow
        document.getElementById('page-container').appendChild(searchBar);

        if (!Array.from(searchBar.classList).includes('is-light')) {
          // to ensure animations get to play need to toggle class
          // just AFTER child is reappended (seems to wipe animation state)
          setTimeout(() => searchBar.classList.toggle('is-light'), isLightTimeoutTime);
        }

        // console.log('detached search bar');
      }
    } else {
      if (Array.from(searchBar.classList).includes('is-detached')) {
        searchBar.classList.toggle('is-detached');

        // add back to flow
        searchBarOriginalParent.appendChild(searchBar);

        if (Array.from(searchBar.classList).includes('is-light')) {
          setTimeout(() => searchBar.classList.toggle('is-light'), isLightTimeoutTime);
        }

        // console.log('reattached search bar');
      }
    }
    // }
  });
}

const searchBarFocusDetectInit = () => {
  searchBarInput.setAttribute('value', defaultSearchText);
  searchBarInput.setAttribute('default', defaultSearchText);

  searchBarInput.addEventListener('focus', (_event) => {
    if (searchBarInput.getAttribute('value') === defaultSearchText) {
      searchBarInput.setAttribute('value', '');
    }
  });

  searchBarInput.addEventListener('blur', (_event) => {
    if (searchBarInput.getAttribute('value') === '' || searchBarInput.getAttribute('value') === ' ' || searchBarInput.getAttribute('value') === null) {
      // console.log('yoyo');
      // in inspector, value will always be update to defaultText
      // but that updated value isn't always reflected on renderd page
      // bug? 
      searchBarInput.setAttribute('value', defaultSearchText);
    }
  });
}

export {
  searchBarInit
};