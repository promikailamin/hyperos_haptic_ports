.class public Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V
    .registers 3

    .line 778
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 779
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;Lcom/android/server/policy/PhoneWindowManager-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 784
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ec

    :pswitch_5
    goto :goto_79

    .line 860
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    .line 861
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolBtnLongPress:Z

    .line 862
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 863
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 864
    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    return-void

    .line 855
    :pswitch_1c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 856
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 857
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->setActionsExecutable(IJ)V

    return-void

    .line 849
    :pswitch_30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    .line 851
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->-$$Nest$fgetdisplayId(Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->-$$Nest$fgetdirection(Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->-$$Nest$fgetfocusedToken(Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleSwitchKeyboardLayout(Lcom/android/server/policy/PhoneWindowManager;IILandroid/os/IBinder;)V

    return-void

    .line 846
    :pswitch_46
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleRingerChordGesture(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void

    .line 816
    :pswitch_4c
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 817
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 818
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x7

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mlaunchAssistAction(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;IJI)V

    return-void

    .line 839
    :pswitch_5e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    .line 840
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const-string v2, "launchAllAppsViaA11y"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$misKeyEventForCurrentUser(Lcom/android/server/policy/PhoneWindowManager;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 842
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mlaunchAllAppsAction(Lcom/android/server/policy/PhoneWindowManager;)V

    :cond_79
    :goto_79
    return-void

    .line 834
    :pswitch_7a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    .line 835
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$msendSystemKeyToStatusBar(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;)V

    .line 836
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

    return-void

    .line 831
    :pswitch_87
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManagerInternal;->onBackKeyPressed()V

    return-void

    .line 828
    :pswitch_8f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->requestBugreportForTv()V

    return-void

    .line 825
    :pswitch_95
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mshowPictureInPictureMenuInternal(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void

    .line 822
    :pswitch_9b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock()V

    return-void

    .line 813
    :pswitch_a1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleHideBootMessage(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void

    .line 795
    :pswitch_a7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    return-void

    .line 792
    :pswitch_ad
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mshowRecentApps(Lcom/android/server/policy/PhoneWindowManager;Z)V

    return-void

    .line 806
    :pswitch_b4
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-wide/16 v0, 0x20

    .line 808
    const-string/jumbo v2, "waitForAllWindowsDrawn"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 810
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishWindowsDrawn(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void

    .line 802
    :pswitch_c4
    const-string p1, "WindowManager"

    const-string v0, "Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void

    .line 799
    :pswitch_d1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void

    .line 789
    :pswitch_d7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    return-void

    .line 786
    :pswitch_e1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    return-void

    nop

    :pswitch_data_ec
    .packed-switch 0x3
        :pswitch_e1
        :pswitch_d7
        :pswitch_d1
        :pswitch_c4
        :pswitch_b4
        :pswitch_5
        :pswitch_ad
        :pswitch_a7
        :pswitch_a1
        :pswitch_9b
        :pswitch_5
        :pswitch_5
        :pswitch_95
        :pswitch_5
        :pswitch_5
        :pswitch_8f
        :pswitch_5
        :pswitch_87
        :pswitch_7a
        :pswitch_5e
        :pswitch_4c
        :pswitch_46
        :pswitch_30
        :pswitch_5
        :pswitch_1c
        :pswitch_6
    .end packed-switch
.end method
