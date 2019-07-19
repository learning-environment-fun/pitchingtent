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
    searchBarIcon = document.getElementById('search-bar-icon');

    searchBarFadeInit();
    searchBarScrollTrackingInit();
    searchBarFocusDetectInit();
    searchBarDropDownListenerInit();
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

    const userMenu = document.getElementById('user-menu');
    // update menu dropdown if there's a header and the menu is open
    if (!Array.from(userMenu.classList).includes('is-detached') &&
      Array.from(userMenu.classList).includes('header-present')) {
      userMenu.style.top = `${originalParentRect.bottom}px`;
    }

    // if (searchBar.parentElement === searchBarOriginalParent) {
    if (originalParentRect.bottom - searchBarHeight <= 0) {
      if (!Array.from(searchBar.classList).includes('is-detached')) {
        searchBar.classList.toggle('is-detached');
        document.getElementById('user-menu').classList.toggle('is-detached');

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
        document.getElementById('user-menu').classList.toggle('is-detached');
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

const searchBarDropDownListenerInit = () => {

  // z-index fix
  /*const userMenu = document.getElementById('user-menu');
  const header = document.getElementsByTagName('header')[0];

  if (header !== null) {
    userMenu.style.zIndex = header.style.zIndex - 1;
  }*/

  const avatar = searchBar.querySelector('.avatar-circle');
  const arrow = searchBar.querySelector('#search-bar-dropdown-arrow');

  avatar.addEventListener('click', (_event) => {
    dropDownHelper();
  });

  arrow.addEventListener('click', (_event) => {
    arrow.firstElementChild.classList.toggle('is-invisible');
    arrow.lastElementChild.classList.toggle('is-invisible');
    dropDownHelper();
  });
};

const dropDownHelper = () => {
  const userMenu = document.getElementById('user-menu');

  let timeOutLength = 5;

  if (Array.from(userMenu.classList).includes('is-visible')) {
    timeOutLength += 400;
  }

  setTimeout(() => {
    userMenu.classList.toggle('is-visible');

    // turning off
    if (!Array.from(userMenu.classList).includes('is-visible')) {
      userMenu.style = ''; // reset inline style 
    }
    // turning on, special header case
    else if (!Array.from(userMenu.classList).includes('is-detached') &&
      Array.from(userMenu.classList).includes('header-present')) {

      userMenu.style.top = `${searchBarOriginalParent.getBoundingClientRect().bottom}px`;
    } else {
      userMenu.style = '';
    }
  }, timeOutLength);

  // always enable transitions 
  userMenu.classList.toggle('transitions-on');

  // turning off
  if (Array.from(userMenu.classList).includes('is-visible')) {
    // destination position 
    userMenu.style.top = '-40vh';
  }

  // transition will alway take 400 seconds, + delay for turn visible
  setTimeout(() => userMenu.classList.toggle('transitions-on'), 405);
};

export {
  searchBarInit
};