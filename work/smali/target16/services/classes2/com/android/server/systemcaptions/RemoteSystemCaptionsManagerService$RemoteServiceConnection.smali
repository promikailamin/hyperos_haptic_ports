.class public Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "RemoteSystemCaptionsManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;-><init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 163
    iget-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 164
    :try_start_7
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fgetmVerbose(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 165
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_46

    .line 167
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fgetmDestroyed(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fgetmBinding(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_3a

    .line 171
    :cond_2d
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fputmBinding(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)V

    .line 172
    iget-object p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {p0, p2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fputmService(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)V

    .line 173
    monitor-exit p1

    return-void

    .line 168
    :cond_3a
    :goto_3a
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "onServiceConnected() dispatched after unbindService"

    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit p1

    return-void

    .line 173
    :goto_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_1a

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 178
    iget-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 179
    :try_start_7
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fgetmVerbose(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 180
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_2a

    .line 182
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fputmBinding(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)V

    .line 183
    iget-object p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->-$$Nest$fputmService(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)V

    .line 184
    monitor-exit p1

    return-void

    :goto_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_1a

    throw p0
.end method
