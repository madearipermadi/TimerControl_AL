page 50131 "Timer Control Demo"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = true;
    Editable = true;

    layout
    {
        area(Content)
        {
            usercontrol(TimerControl; TimerControl)
            {
                ApplicationArea = All;

                trigger ControlAddInReady()
                begin

                end;

                trigger RefreshPage()
                begin
                    Message('Hi this is triggered from Timer and executed every ' + format(TimerSecond / 1000) + ' second');
                end;

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("Start Timer")
            {
                ApplicationArea = All;
                Image = Start;

                trigger OnAction()
                begin
                    TimerSecond := 5000;
                    CurrPage.TimerControl.StartTimer(TimerSecond);
                end;
            }

            action("Stop Timer")
            {
                ApplicationArea = All;
                Image = Stop;

                trigger OnAction()
                begin
                    CurrPage.TimerControl.StopTimer();
                end;
            }
        }
    }

    var
        TimerSecond: Integer;

}