const intelligentBackgroundInit = () => {
  document.querySelectorAll('.background-cover-blurred').forEach((background) => {

    const url = background.getAttribute('data-background-image');
    const before = document.createElement('div');
    before.className = 'before';
    before.style.backgroundImage = `url('${url}')`;
    if (background.id != 'page-container') {
      // page-container has a custom override
      before.style.zIndex = before.parentElement.zIndex - 1;
    }

    // psuedo-elements can't be accessed through js; 
    // so need to construct our own div and prepend it
    background.appendChild(before);
    console.log(url);
  });
}

export { intelligentBackgroundInit };