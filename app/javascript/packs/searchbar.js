const searchBarFadeInit = () => {
  const searchBar = document.querySelector('.search-bar');

  if (searchBar !== null) {
    const searchBarInput = searchBar.querySelector('input');
    const searchBarIcon = searchBar.querySelector('.search-bar-icon');

    searchBarInput.addEventListener('mouseenter', (_event) => {
      searchBarIcon.classList.toggle('is-hovered');
    });

    searchBarInput.addEventListener('mouseleave', (_event) => {
      searchBarIcon.classList.toggle('is-hovered');
    });
  }
}

export {
  searchBarFadeInit
};