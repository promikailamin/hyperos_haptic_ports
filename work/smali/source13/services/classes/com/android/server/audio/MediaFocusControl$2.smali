.class Lcom/android/server/audio/MediaFocusControl$2;
.super Ljava/lang/Thread;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;

.field final synthetic val$enteringRingOrCall:Z


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 1299
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iput-boolean p2, p0, Lcom/android/server/audio/MediaFocusControl$2;->val$enteringRingOrCall:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1301
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$2;->val$enteringRingOrCall:Z

    if-eqz v0, :cond_e

    .line 1303
    const-wide/16 v0, 0x64

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1306
    goto :goto_e

    .line 1304
    :catch_a
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1308
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_e
    :goto_e
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1311
    :try_start_13
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmRingOrCallActive(Lcom/android/server/audio/MediaFocusControl;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1312
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetUSAGES_TO_MUTE_IN_RING_OR_CALL()[I

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    goto :goto_32

    .line 1314
    :cond_29
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 1316
    :goto_32
    monitor-exit v0

    .line 1317
    return-void

    .line 1316
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_34

    throw v1
.end method
