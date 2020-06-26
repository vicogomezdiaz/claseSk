'use strict';

const mediaStreamConstraints = {
	video: {
		width: {min: 1280},
		height: {min: 720},
	},
	audio : false,
};

const localVideo = document.getElementById('dVideo1');

let localStream;

function gotLocalMediaStream(mediaStream) {
	localStream = mediaStream;
	localVideo.srcObject = mediaStream;
}

function handleLocalMediaStreamError(error) {
	console.log('navigator.getUserMedia error: '. error);
}

navigator.mediaDevices.getUserMedia(mediaStreamConstraints)
	.then(gotLocalMediaStream).catch(handleLocalMediaStreamError);


