'use strict';

(function() {

	let width = 320;
	let height = 0;

	let streaming = false;

	let video = null;
	let canvas = null;
	let photo = null;
	let btnFoto = null;

	function startup() {
		video = dVideo;
		canvas = dCanvas;
		photo = dFoto;
		btnFoto = document.getElementById('btnFoto');
	


	const constraints = {audio: true, video: {width: 1280, height: 720}};

	navigator.mediaDevices.getUserMedia(constraints)
		.then(function(mediaStream) {
			video.srcObject = mediaStream;
		})
		.catch(function(err) {console.log(err.name + ": " + err.message); });

	video.addEventListener('canplay', function(ev) {
		if(!streaming) {
			height = video.videoHeight / (video.videoWidth/width);
			video.setAttribute('width', width);
			video.setAttribute('height', height);
			canvas.setAttribute('width', width);
			canvas.setAttribute('height', height);
			streaming = true;
		}
	}, false);

	btnFoto.addEventListener('click', function(ev) {
		takepicture();
		ev.preventDefault();
	}, false);	

	clearphoto();
}


function clearphoto() {
	let context = canvas.getContext('2d');
	context.fillStyle = "#AAA";
	context.fillRect(0,0, canvas.width, canvas.height);

	var data = canvas.toDataURL('image/png');
	photo.setAttribute('src', data);
}

function takepicture() {
	var context = canvas.getContext('2d');
	if (width && height) {
		canvas.width = width;
		canvas.height = height;
		context.drawImage(video, 0, 0, width, height); 

		var data = canvas.toDataURL('image/png');
		photo.setAttribute('src', data);
	} else {
		clearphoto();
	}
}

window.addEventListener('load', startup, false);
})();
