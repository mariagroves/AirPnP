
console.log("flush");
const flushButtons = document.querySelectorAll(".flush");
flushButtons.forEach((flush) => {
  flush.addEventListener("click", (event) => {
    console.log(event);
    console.log(event.currentTarget);
    const audio = new Audio();
    audio.src = event.currentTarget.dataset.soundUrl;
    audio.play();
  });
})
