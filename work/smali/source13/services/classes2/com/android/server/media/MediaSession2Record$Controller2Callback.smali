.class Lcom/android/server/media/MediaSession2Record$Controller2Callback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaSession2Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSession2Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Controller2Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSession2Record;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSession2Record;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSession2Record;Lcom/android/server/media/MediaSession2Record$Controller2Callback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSession2Record$Controller2Callback;-><init>(Lcom/android/server/media/MediaSession2Record;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .registers 6
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "allowedCommands"    # Landroid/media/Session2CommandGroup;

    .line 186
    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 187
    const-string v0, "MediaSession2Record"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v2}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmSessionToken(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2e
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 191
    :try_start_35
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fputmIsConnected(Lcom/android/server/media/MediaSession2Record;Z)V

    .line 192
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    .line 193
    .local v1, "service":Lcom/android/server/media/MediaSessionService;
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_48

    .line 194
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 195
    return-void

    .line 193
    .end local v1    # "service":Lcom/android/server/media/MediaSessionService;
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public onDisconnected(Landroid/media/MediaController2;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/MediaController2;

    .line 199
    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 200
    const-string v0, "MediaSession2Record"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v2}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmSessionToken(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_24
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 204
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fputmIsConnected(Lcom/android/server/media/MediaSession2Record;Z)V

    .line 205
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    .line 206
    .local v1, "service":Lcom/android/server/media/MediaSessionService;
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3e

    .line 207
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 208
    return-void

    .line 206
    .end local v1    # "service":Lcom/android/server/media/MediaSessionService;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public onPlaybackActiveChanged(Landroid/media/MediaController2;Z)V
    .registers 6
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "playbackActive"    # Z

    .line 212
    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 213
    const-string v0, "MediaSession2Record"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playback active changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v2}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmSessionToken(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2f
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 218
    :try_start_36
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    .line 219
    .local v1, "service":Lcom/android/server/media/MediaSessionService;
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_43

    .line 220
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    .line 221
    return-void

    .line 219
    .end local v1    # "service":Lcom/android/server/media/MediaSessionService;
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method
