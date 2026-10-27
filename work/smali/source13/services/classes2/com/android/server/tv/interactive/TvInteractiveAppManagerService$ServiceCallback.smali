.class final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
.super Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceCallback"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .registers 4
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 1985
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;-><init>()V

    .line 1986
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 1987
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    .line 1988
    return-void
.end method


# virtual methods
.method public onStateChanged(III)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I

    .line 1992
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1994
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_32

    .line 1995
    :try_start_b
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    move-result-object v3

    .line 1996
    .local v3, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/lang/String;

    move-result-object v6

    .line 1997
    .local v6, "iAppServiceId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v5

    .line 1998
    .local v5, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;III)V

    .line 1999
    .end local v3    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v5    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v6    # "iAppServiceId":Ljava/lang/String;
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2f

    .line 2001
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2002
    nop

    .line 2003
    return-void

    .line 1999
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
    .end local p1    # "type":I
    .end local p2    # "state":I
    .end local p3    # "error":I
    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 2001
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
    .restart local p1    # "type":I
    .restart local p2    # "state":I
    .restart local p3    # "error":I
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2002
    throw v2
.end method
