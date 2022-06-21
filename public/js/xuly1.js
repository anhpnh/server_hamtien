//Gọi lên server socket io
let socket = io("/");

$(document).ready(() => {
  console.log("ready!");
  chuNhapNhay();
  //Update sott
  socket.on("server-send-nextnumber", (data) => {
    if (data.maQuay === "quayso1" && data.nextNumber !== "Hết số") {
      $("#sott").text(data.nextNumber);
      chuNhapNhay();
    }
  });
});

function chuNhapNhay() {
  for (let i = 0; i < 3; i++) {
    $(".sott").fadeIn(1000).fadeOut(500).fadeIn(1000);
  }
}
