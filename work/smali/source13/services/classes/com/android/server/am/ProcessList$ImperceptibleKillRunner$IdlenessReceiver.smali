.class final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdlenessReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V
    .registers 2

    .line 5389
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5392
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget-object v0, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5393
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4a

    :cond_1b
    goto :goto_30

    :sswitch_1c
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_31

    :sswitch_26
    const-string v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_31

    :goto_30
    const/4 v1, -0x1

    :goto_31
    packed-switch v1, :pswitch_data_54

    goto :goto_49

    .line 5398
    :pswitch_35
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->notifyDeviceIdleness(Z)V

    goto :goto_49

    .line 5395
    :pswitch_3f
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->notifyDeviceIdleness(Z)V

    .line 5396
    nop

    .line 5401
    :goto_49
    return-void

    :sswitch_data_4a
    .sparse-switch
        0x1dbb32d0 -> :sswitch_26
        0x33e5d967 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_35
    .end packed-switch
.end method
