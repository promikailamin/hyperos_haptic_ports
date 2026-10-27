.class Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;
.super Landroid/content/BroadcastReceiver;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSaveModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 1081
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1084
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1085
    return-void

    .line 1087
    :cond_d
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmPowerManager(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/PowerManager;

    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Landroid/os/PowerManager;->getSoundTriggerPowerSaveMode()I

    move-result v0

    .line 1092
    .local v0, "soundTriggerPowerSaveMode":I
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1093
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$monPowerSaveModeChangedLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper;I)V

    .line 1094
    monitor-exit v1

    .line 1095
    return-void

    .line 1094
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw v2
.end method
