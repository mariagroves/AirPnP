import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["In need of toilets ASAP?", "Want to shit on the fanciest throne in town?", "Can you already smell the lavender spray?"],
    typeSpeed: 50,
    loop: true,
    fadeOut: true,
  });
}

export { loadDynamicBannerText };
