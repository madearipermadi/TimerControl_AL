controladdin "TimerControl"
{
    Scripts = 'scripts/TimerControl.js';


    HorizontalShrink = true;
    HorizontalStretch = true;
    MinimumHeight = 1;
    MinimumWidth = 1;
    RequestedHeight = 1;
    RequestedWidth = 1;
    VerticalShrink = true;
    VerticalStretch = true;

    procedure StartTimer(milliSeconds: Integer);

    procedure StopTimer();

    event ControlAddInReady();

    event RefreshPage();
}