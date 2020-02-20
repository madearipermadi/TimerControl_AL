
var timerObject;

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ControlAddInReady');

function StartTimer(milliSeconds) {
    window.alert('Timer Started')
    timerObject = window.setInterval(TimerAction, milliSeconds);

}

function stopTimer() {
    window.alert('Timer Stopped');
    clearInterval(timerObject);
}

function TimerAction() {
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('RefreshPage');
}