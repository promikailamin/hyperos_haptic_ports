.class Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 700
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "WindowManager"

    packed-switch v0, :pswitch_data_be

    :pswitch_8
    goto/16 :goto_bd

    .line 761
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleRingerChordGesture(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 762
    goto/16 :goto_bd

    .line 729
    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 730
    .local v0, "deviceId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/Long;

    .line 731
    .local v7, "eventTime":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mlaunchAssistAction(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;IJI)V

    .line 733
    goto/16 :goto_bd

    .line 758
    .end local v0    # "deviceId":I
    .end local v7    # "eventTime":Ljava/lang/Long;
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mlaunchAllAppsAction(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 759
    goto/16 :goto_bd

    .line 755
    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$msendSystemKeyToStatusBar(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 756
    goto/16 :goto_bd

    .line 752
    :pswitch_36
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManagerInternal;->onBackKeyPressed()V

    .line 753
    goto/16 :goto_bd

    .line 747
    :pswitch_3f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmAccessibilityShortcutController(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 748
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$maccessibilityShortcutActivated(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_bd

    .line 744
    :pswitch_52
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mrequestBugreportForTv(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 745
    goto :goto_bd

    .line 741
    :pswitch_58
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$maccessibilityShortcutActivated(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 742
    goto :goto_bd

    .line 764
    :pswitch_5e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleScreenShot(Lcom/android/server/policy/PhoneWindowManager;II)V

    goto :goto_bd

    .line 738
    :pswitch_68
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mshowPictureInPictureMenuInternal(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 739
    goto :goto_bd

    .line 735
    :pswitch_6e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock()V

    .line 736
    goto :goto_bd

    .line 726
    :pswitch_74
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleHideBootMessage(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 727
    goto :goto_bd

    .line 711
    :pswitch_7a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 712
    goto :goto_bd

    .line 708
    :pswitch_80
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mshowRecentApps(Lcom/android/server/policy/PhoneWindowManager;Z)V

    .line 709
    goto :goto_bd

    .line 722
    :pswitch_86
    const-string v0, "Setting mWindowManagerDrawComplete"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishWindowsDrawn(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 724
    goto :goto_bd

    .line 718
    :pswitch_93
    const-string v0, "Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 720
    goto :goto_bd

    .line 714
    :pswitch_9e
    const-string v0, "Setting mKeyguardDrawComplete"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 716
    goto :goto_bd

    .line 705
    :pswitch_a9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    .line 706
    goto :goto_bd

    .line 702
    :pswitch_b3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    .line 703
    nop

    .line 767
    :cond_bd
    :goto_bd
    return-void

    :pswitch_data_be
    .packed-switch 0x3
        :pswitch_b3
        :pswitch_a9
        :pswitch_9e
        :pswitch_93
        :pswitch_86
        :pswitch_8
        :pswitch_80
        :pswitch_7a
        :pswitch_74
        :pswitch_6e
        :pswitch_8
        :pswitch_8
        :pswitch_68
        :pswitch_5e
        :pswitch_58
        :pswitch_52
        :pswitch_3f
        :pswitch_36
        :pswitch_2d
        :pswitch_26
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method
