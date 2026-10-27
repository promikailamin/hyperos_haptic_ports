.class public Landroid/os/statistics/InputEventSuperviser;
.super Ljava/lang/Object;
.source "InputEventSuperviser.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist beginInputEvent(Landroid/view/InputEvent;)V
    .registers 1
    .param p0, "inputEvent"    # Landroid/view/InputEvent;

    .line 12
    return-void
.end method

.method public static blacklist beginInputEvent(Landroid/view/InputEvent;I)V
    .registers 2
    .param p0, "inputEvent"    # Landroid/view/InputEvent;
    .param p1, "inputEventStage"    # I

    .line 15
    return-void
.end method

.method public static blacklist endInputEvent(Landroid/view/InputEvent;ILandroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
    .registers 4
    .param p0, "inputEvent"    # Landroid/view/InputEvent;
    .param p1, "inputEventStage"    # I
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "inputChannel"    # Landroid/view/InputChannel;

    .line 22
    return-void
.end method

.method public static blacklist endInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
    .registers 3
    .param p0, "inputEvent"    # Landroid/view/InputEvent;
    .param p1, "receiver"    # Landroid/view/InputEventReceiver;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;

    .line 18
    return-void
.end method
