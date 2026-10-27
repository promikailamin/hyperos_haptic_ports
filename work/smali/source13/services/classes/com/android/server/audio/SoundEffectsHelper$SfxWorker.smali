.class Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;
.super Ljava/lang/Thread;
.source "SoundEffectsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SoundEffectsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SfxWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .registers 2

    .line 447
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 448
    const-string p1, "AS.SfxWorker"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 449
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 453
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 454
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    monitor-enter v0

    .line 455
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;-><init>(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SfxHandler-IA;)V

    invoke-static {v1, v2}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fputmSfxHandler(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;)V

    .line 456
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 457
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    .line 458
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 459
    return-void

    .line 457
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
