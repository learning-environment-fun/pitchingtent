const intelligentBackgroundInit = () => {
  const backgrounds = document.querySelectorAll('.background-intelligent-cover').forEach((background) => {

    const url = background.getAttribute('data-background-image');
    const before = document.createElement('div');
    before.className = 'before';
    before.style.backgroundImage = `url('${url}')`;

    // psuedo-elements can't be accessed through js; 
    // so need to construct our own div and prepend it
    background.appendChild(before);

    // accessing zIndex needs to happen after parent is assigned
    if (background.id != 'page-container') {
      // page-container has a custom override
      before.style.zIndex = before.parentElement.zIndex - 1;
    }

    console.log(url);
  });
  console.log(`${backgrounds.length} backgrounds`);
}

export { intelligentBackgroundInit };