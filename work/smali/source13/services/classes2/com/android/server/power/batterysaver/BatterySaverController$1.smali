.class Lcom/android/server/power/batterysaver/BatterySaverController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 170
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 173
    sget-boolean v0, Lcom/android/server/power/batterysaver/BatterySaverController;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 174
    const-string v0, "BatterySaverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_9c

    :cond_2b
    goto :goto_5d

    :sswitch_2c
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x3

    goto :goto_5d

    :sswitch_36
    const-string v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x4

    goto :goto_5d

    :sswitch_40
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v1, v4

    goto :goto_5d

    :sswitch_4a
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x2

    goto :goto_5d

    :sswitch_54
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v1, v3

    :goto_5d
    packed-switch v1, :pswitch_data_b2

    goto :goto_9b

    .line 189
    :pswitch_61
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 190
    :try_start_68
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_74

    goto :goto_75

    :cond_74
    move v3, v4

    :goto_75
    invoke-static {v1, v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$fputmIsPluggedIn(Lcom/android/server/power/batterysaver/BatterySaverController;Z)V

    .line 191
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_7f

    .line 195
    :pswitch_79
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$mupdateBatterySavingStats(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    goto :goto_9b

    .line 191
    :catchall_7f
    move-exception v1

    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v1

    .line 179
    :pswitch_82
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$misPolicyEnabled(Lcom/android/server/power/batterysaver/BatterySaverController;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 180
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$mupdateBatterySavingStats(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 181
    return-void

    .line 185
    :cond_90
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$fgetmHandler(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 187
    nop

    .line 198
    :goto_9b
    return-void

    :sswitch_data_9c
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_54
        -0x5bb23923 -> :sswitch_4a
        -0x56ac2893 -> :sswitch_40
        0x1dbb32d0 -> :sswitch_36
        0x33e5d967 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_82
        :pswitch_82
        :pswitch_61
        :pswitch_79
        :pswitch_79
    .end packed-switch
.end method
