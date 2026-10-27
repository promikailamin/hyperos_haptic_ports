.class Lcom/android/server/locksettings/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 595
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 598
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    goto :goto_5e

    .line 615
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleRefreshStrongAuthTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 616
    goto :goto_5e

    .line 627
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleScheduleNonStrongBiometricIdleTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_5e

    .line 624
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleStrongBiometricUnlock(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 625
    goto :goto_5e

    .line 621
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleScheduleNonStrongBiometricTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 622
    goto :goto_5e

    .line 618
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleNoLongerRequireStrongAuth(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V

    .line 619
    goto :goto_5e

    .line 612
    :pswitch_30
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleScheduleStrongAuthTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 613
    goto :goto_5e

    .line 609
    :pswitch_38
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleRemoveUser(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 610
    goto :goto_5e

    .line 603
    :pswitch_40
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleRemoveStrongAuthTracker(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    .line 604
    goto :goto_5e

    .line 600
    :pswitch_4a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleAddStrongAuthTracker(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    .line 601
    goto :goto_5e

    .line 606
    :pswitch_54
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleRequireStrongAuth(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V

    .line 607
    nop

    .line 630
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4a
        :pswitch_40
        :pswitch_38
        :pswitch_30
        :pswitch_26
        :pswitch_1e
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
