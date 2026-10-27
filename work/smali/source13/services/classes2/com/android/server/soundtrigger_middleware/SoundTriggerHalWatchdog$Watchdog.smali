.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;
.super Ljava/lang/Object;
.source "SoundTriggerHalWatchdog.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Watchdog"
.end annotation


# instance fields
.field private final mException:Ljava/lang/Exception;

.field private final mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V
    .registers 5

    .line 161
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mException:Ljava/lang/Exception;

    .line 162
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->-$$Nest$fgetmTimer(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->createTask(Ljava/lang/Runnable;J)Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

    .line 166
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;->cancel()V

    .line 171
    return-void
.end method

.method synthetic lambda$new$0$com-android-server-soundtrigger_middleware-SoundTriggerHalWatchdog$Watchdog()V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mException:Ljava/lang/Exception;

    const-string v1, "SoundTriggerHalWatchdog"

    const-string v2, "HAL deadline expired. Rebooting."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->reboot()V

    .line 165
    return-void
.end method
