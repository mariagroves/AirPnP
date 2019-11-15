
console.log("flush");
const flushButtons = document.querySelectorAll(".flush");
flushButtons.forEach((flush) => {
  flush.addEventListener("click", (event) => {
    const audio = new Audio();
    console.log(event.currentTarget)
    audio.src = event.currentTarget.dataset.soundUrl;
    audio.play();
  });
})
