

$(document).ready(function() {


    console.log("allo");
    const fs = require('fs');
    console.log("load fs")
    const sdk = require("microsoft-cognitiveservices-speech-sdk");
    console.log("load sdk")
    const speechConfig = sdk.SpeechConfig.fromSubscription("cecf1c3132884c23ac9eb8533ad7d037", "en-CA");
    console.log("load speechConfig")
    $('#attachment').change(function() {
        console.log('attachment change')
                
                

            
        let audioConfig = sdk.AudioConfig.fromWavFileInput(fs.readFileSync($('#attachment')));
        let recognizer = new sdk.SpeechRecognizer(speechConfig, audioConfig);

        recognizer.recognizeOnceAsync(result => {
            console.log(`RECOGNIZED: Text=${result.text}`);
            recognizer.close();
        });
                
        console.log("ready")
                
    })
})

