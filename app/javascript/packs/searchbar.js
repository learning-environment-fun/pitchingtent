const searchBarFadeInit = () => {
  const searchBar = document.querySelector('.search-bar');

  if (searchBar !== null) {
    const searchBarInput = searchBar.querySelector('input');
    const searchBarIcon = searchBar.querySelector('.search-bar-icon');

    searchBarInput.addEventListener('focus', (_event) => {
      searchBarIcon.classList.toggle('is-focused');
    });

    searchBarInput.addEventListener('blur', (_event) => {
      searchBarIcon.classList.toggle('is-focused');
    });
  }
}

export {
  searchBarFadeInit
};