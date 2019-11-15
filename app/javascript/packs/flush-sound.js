const flushButtons = document.querySelectorAll(".flush");
flushButtons.forEach((flush) => {
  flush.addEventListener("click", (event) => {
    const audio = new Audio();
    event.currentTarget.parentElement.parentElement.classList.toggle("swirl-out-bck");
    audio.src = event.currentTarget.dataset.soundUrl;
    audio.play();
  });
})
