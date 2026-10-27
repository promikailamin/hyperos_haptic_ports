.class public Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# instance fields
.field public mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field public mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field public mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMediaKeyEventHandler(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartVoiceInput(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 4

    .line 1531
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 1536
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 1538
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 2864
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    return-void
.end method


# virtual methods
.method public addOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .registers 9

    if-nez p1, :cond_a

    .line 1896
    const-string p0, "MediaSessionService"

    const-string p1, "addOnMediaKeyEventDispatchedListener: listener is null, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1899
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1901
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1902
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1904
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1908
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_8b

    .line 1909
    :try_start_2d
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 1910
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v2, :cond_3c

    goto :goto_6e

    .line 1915
    :cond_3c
    invoke-virtual {v5, p1, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->addOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;I)V

    .line 1916
    const-string v2, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The MediaKeyEventDispatchedListener ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is added by "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1917
    invoke-static {p0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1916
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_2d .. :try_end_68} :catchall_6c

    .line 1920
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6c
    move-exception p0

    goto :goto_89

    .line 1911
    :cond_6e
    :goto_6e
    :try_start_6e
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the full user can add the listener, userId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_6e .. :try_end_85} :catchall_6c

    .line 1920
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1918
    :goto_89
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_6c

    :try_start_8a
    throw p0

    :catchall_8b
    move-exception p0

    goto :goto_95

    .line 1905
    :cond_8d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MEDIA_CONTENT_CONTROL permission is required to  add MediaKeyEventDispatchedListener"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_8b

    .line 1920
    :goto_95
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1921
    throw p0
.end method

.method public addOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_a

    .line 1961
    const-string p0, "MediaSessionService"

    const-string p1, "addOnMediaKeyEventSessionChangedListener: listener is null, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1965
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1967
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1968
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1969
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1971
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p2, v1}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1972
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p2, v0, v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 1974
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_8b

    .line 1975
    :try_start_33
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-eqz p0, :cond_6e

    .line 1976
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v5

    if-eq v5, v2, :cond_42

    goto :goto_6e

    .line 1981
    :cond_42
    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->addOnMediaKeyEventSessionChangedListenerLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V

    .line 1982
    const-string p0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The MediaKeyEventSessionChangedListener ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is added by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_33 .. :try_end_68} :catchall_6c

    .line 1986
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6c
    move-exception p0

    goto :goto_89

    .line 1977
    :cond_6e
    :goto_6e
    :try_start_6e
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Only the full user can add the listener, userId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_6e .. :try_end_85} :catchall_6c

    .line 1986
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1984
    :goto_89
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_6c

    :try_start_8a
    throw p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception p0

    .line 1986
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1987
    throw p0
.end method

.method public addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V
    .registers 8

    if-nez p1, :cond_a

    .line 1724
    const-string p0, "MediaSessionService"

    const-string p1, "addSession2TokensListener: listener is null, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1727
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1733
    :try_start_17
    invoke-virtual {p0, v0, v1, p2, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 1734
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_4f

    .line 1735
    :try_start_22
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result v1

    if-ltz v1, :cond_38

    .line 1737
    const-string p0, "MediaSessionService"

    const-string p1, "addSession2TokensListener: listener is already added, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_36

    .line 1745
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    goto :goto_4d

    .line 1741
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSession2TokensListenerRecords(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1743
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_36

    .line 1745
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1743
    :goto_4d
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_36

    :try_start_4e
    throw p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p0

    .line 1745
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1746
    throw p0
.end method

.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .registers 13

    if-nez p1, :cond_a

    .line 1674
    const-string p0, "MediaSessionService"

    const-string p1, "addSessionsListener: listener is null, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1677
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1682
    :try_start_16
    invoke-virtual {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 1683
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_68

    .line 1684
    :try_start_21
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    .line 1686
    const-string p0, "MediaSessionService"

    const-string p1, "ActiveSessionsListener is already added, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    monitor-exit p3
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_36

    .line 1700
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception v0

    move-object p0, v0

    goto :goto_66

    .line 1689
    :cond_39
    :try_start_39
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_36

    .line 1692
    :try_start_42
    invoke-interface {v2}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4a} :catch_58
    .catchall {:try_start_42 .. :try_end_4a} :catchall_36

    .line 1697
    :try_start_4a
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    monitor-exit p3
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_36

    .line 1700
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_58
    move-exception v0

    move-object p0, v0

    .line 1694
    :try_start_5a
    const-string p1, "MediaSessionService"

    const-string p2, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1695
    monitor-exit p3
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_36

    .line 1700
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1698
    :goto_66
    :try_start_66
    monitor-exit p3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_36

    :try_start_67
    throw p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    move-object p0, v0

    .line 1700
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1701
    throw p0
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;
    .registers 16

    .line 1558
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1562
    :try_start_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1563
    invoke-virtual {p0, v1, v2, p5, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v3

    if-eqz p2, :cond_47

    .line 1567
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mcreateSessionInternal(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 1572
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;

    move-result-object p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2b} :catch_3c
    .catchall {:try_start_c .. :try_end_2b} :catchall_39

    if-eqz p0, :cond_31

    .line 1581
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1574
    :cond_31
    :try_start_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid session record"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_39
    move-exception v0

    move-object p0, v0

    goto :goto_57

    :catch_3c
    move-exception v0

    move-object p0, v0

    goto :goto_4f

    .line 1570
    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to create a new session record"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1565
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Controller callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4f} :catch_3c
    .catchall {:try_start_31 .. :try_end_4f} :catchall_39

    .line 1578
    :goto_4f
    :try_start_4f
    const-string p1, "MediaSessionService"

    const-string p2, "Exception in creating a new session"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    throw p0
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_39

    .line 1581
    :goto_57
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1582
    throw p0
.end method

.method public dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 19

    .line 2324
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2328
    :try_start_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2a

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 2329
    :try_start_1e
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    .line 2331
    monitor-exit v12
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_26

    .line 2333
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception v0

    move-object p0, v0

    .line 2331
    :try_start_28
    monitor-exit v12
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_26

    :try_start_29
    throw p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    move-object p0, v0

    .line 2333
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2334
    throw p0
.end method

.method public final dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V
    .registers 22

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2568
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_25

    .line 2569
    :cond_17
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    .line 2572
    :goto_25
    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    .line 2573
    invoke-static {v6, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    move v1, v2

    .line 2575
    :goto_35
    const-string v3, "MediaSessionService"

    if-eqz v0, :cond_6d

    .line 2576
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v5

    if-eq v5, v4, :cond_6d

    .line 2578
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmAudioPlayerStateMonitor(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v5

    .line 2579
    invoke-virtual {v5, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->hasUidPlayedAudioLast(I)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 2582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring session="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and adjusting suggestedStream="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instead"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2587
    :cond_6d
    const-string v5, ", preferSuggestedStream="

    const-string v9, ". flags="

    const-string v10, " by "

    if-eqz v0, :cond_b3

    if-eqz v1, :cond_78

    goto :goto_b3

    .line 2640
    :cond_78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusting "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", suggestedStream="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v5, p5

    move v6, v7

    move/from16 v7, p8

    .line 2644
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecordImpl;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    return-void

    .line 2589
    :cond_b3
    :goto_b3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adjusting suggestedStream="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", session="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p9, :cond_ff

    const/4 v0, 0x3

    .line 2593
    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 2595
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Nothing is playing on the music stream. Skipping volume event, flags="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2601
    :cond_ff
    invoke-static {v3, v7, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->maybeHandleVolumeKeyEvent(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_106

    return-void

    .line 2611
    :cond_106
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v10

    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;

    move-object v1, p0

    move-object v9, p1

    move-object v3, p2

    move v5, p3

    move/from16 v4, p4

    move/from16 v2, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIIILjava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .registers 19

    move-object/from16 v5, p3

    if-eqz v5, :cond_120

    .line 1795
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_120

    .line 1800
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1801
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1804
    :try_start_1c
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_5d

    .line 1805
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent, pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", asSystem="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", event="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :catchall_59
    move-exception v0

    move-object p0, v0

    goto/16 :goto_11c

    :cond_5d
    move/from16 v4, p2

    .line 1809
    :goto_5f
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_70

    .line 1812
    const-string p0, "MediaSessionService"

    const-string p1, "Not dispatching media key event because user setup is in progress."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_1c .. :try_end_6c} :catchall_59

    .line 1851
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1817
    :cond_70
    :try_start_70
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_59

    .line 1818
    :try_start_77
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v12

    if-eqz v12, :cond_93

    const/16 v0, 0x3e8

    if-eq v3, v0, :cond_93

    .line 1822
    const-string p0, "MediaSessionService"

    const-string p1, "Only the system can dispatch media key event to the global priority session."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    monitor-exit v11
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_8f

    .line 1851
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_8f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_11a

    :cond_93
    if-nez v12, :cond_fd

    .line 1827
    :try_start_95
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    if-eqz v0, :cond_fd

    .line 1829
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to the media key listener"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_95 .. :try_end_bc} :catchall_8f

    .line 1832
    :try_start_bc
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v13

    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c8} :catch_e2
    .catchall {:try_start_bc .. :try_end_c8} :catchall_8f

    const/4 v8, 0x0

    move-object v1, p0

    move/from16 v7, p4

    move-object v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, p1

    :try_start_d1
    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionService-IA;)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_d4} :catch_df
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_8f

    move v2, v3

    move v3, v4

    move-object v5, v6

    :try_start_d7
    invoke-interface {v13, v5, v0}, Landroid/media/session/IOnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_da} :catch_e2
    .catchall {:try_start_d7 .. :try_end_da} :catchall_8f

    .line 1835
    :try_start_da
    monitor-exit v11
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_8f

    .line 1851
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_df
    move v2, v3

    move v3, v4

    move-object v5, v6

    .line 1837
    :catch_e2
    :try_start_e2
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to the media key listener"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    if-eqz v12, :cond_109

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p2

    move/from16 v6, p4

    .line 1843
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_115

    .line 1846
    :cond_109
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    move-object v1, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1849
    :goto_115
    monitor-exit v11
    :try_end_116
    .catchall {:try_start_e2 .. :try_end_116} :catchall_8f

    .line 1851
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1849
    :goto_11a
    :try_start_11a
    monitor-exit v11
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_8f

    :try_start_11b
    throw p0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_59

    .line 1851
    :goto_11c
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1852
    throw p0

    .line 1796
    :cond_120
    :goto_120
    const-string p0, "MediaSessionService"

    const-string p1, "Attempted to dispatch null or non-media key event."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    .line 2651
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/media/MediaSession2Record;

    if-eqz v1, :cond_14

    goto/16 :goto_12f

    .line 2658
    :cond_14
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    .line 2677
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    const/4 v14, 0x0

    if-nez v1, :cond_33

    .line 2680
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v2

    goto :goto_34

    :cond_33
    move-object v2, v14

    :goto_34
    const/4 v4, -0x1

    .line 2685
    const-string v15, "MediaSessionService"

    if-eqz v1, :cond_a8

    .line 2687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p6, :cond_5c

    .line 2690
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->acquireWakeLockLocked()V

    :cond_5c
    if-eqz p6, :cond_64

    .line 2694
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-$$Nest$fgetmLastTimeoutId(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v4

    :cond_64
    move v7, v4

    iget-object v8, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v3

    move/from16 v3, p2

    .line 2693
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-object v3, v6

    .line 2698
    :try_start_74
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyEventDispatchedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 2699
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    .line 2700
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    .line 2699
    invoke-interface {v2, v3, v4, v5}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->onMediaKeyEventDispatched(Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_9f} :catch_a0

    goto :goto_86

    :catch_a0
    move-exception v0

    .line 2703
    const-string v1, "Failed to send callback"

    invoke-static {v15, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12f

    :cond_a8
    if-eqz v2, :cond_12f

    if-eqz p6, :cond_b1

    .line 2707
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->acquireWakeLockLocked()V

    :cond_b1
    if-eqz p4, :cond_bf

    .line 2710
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_c1

    :cond_bf
    move-object/from16 v8, p1

    .line 2711
    :goto_c1
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v1

    move v5, v4

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    if-eqz p6, :cond_d2

    .line 2720
    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-$$Nest$fgetmLastTimeoutId(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v5

    :cond_d2
    move v9, v5

    iget-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v11

    .line 2724
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaButtonReceiverFgsAllowlistDurationMs()J

    move-result-wide v12

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    .line 2712
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/media/MediaButtonReceiverHolder;->send(Landroid/content/Context;Landroid/view/KeyEvent;Lcom/android/server/media/MediaSessionService;Ljava/lang/String;IILjava/lang/String;ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;J)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 2726
    invoke-virtual {v1}, Lcom/android/server/media/MediaButtonReceiverHolder;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2728
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyEventDispatchedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;

    move-result-object v0

    .line 2729
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2728
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_104
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 2731
    :try_start_111
    iget-object v0, v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    invoke-interface {v0, v3, v1, v14}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->onMediaKeyEventDispatched(Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_116} :catch_117

    goto :goto_104

    :catch_117
    move-exception v0

    .line 2733
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed notify key event dispatch, uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_104

    :cond_12f
    :goto_12f
    return-void
.end method

.method public dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z
    .registers 15

    .line 1869
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1873
    :try_start_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_79

    .line 1874
    :try_start_13
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1876
    const-string p0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sessionToken="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", event="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", session="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_69

    .line 1881
    const-string p0, "MediaSessionService"

    const-string p1, "Failed to find session to dispatch key event."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    monitor-exit v10
    :try_end_61
    .catchall {:try_start_13 .. :try_end_61} :catchall_66

    .line 1888
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_66
    move-exception v0

    move-object p0, v0

    goto :goto_77

    :cond_69
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    move-object v5, p2

    .line 1884
    :try_start_6e
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result p0

    monitor-exit v10
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_66

    .line 1888
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 1886
    :goto_77
    :try_start_77
    monitor-exit v10
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_66

    :try_start_78
    throw p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_79

    :catchall_79
    move-exception v0

    move-object p0, v0

    .line 1888
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1889
    throw p0
.end method

.method public dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .registers 19

    move-object/from16 v5, p4

    if-eqz v5, :cond_b4

    .line 2165
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1e

    .line 2166
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1e

    .line 2167
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_1e

    goto/16 :goto_b4

    .line 2172
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2177
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchVolumeKeyEvent, pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", opPkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", asSystem="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", event="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", stream="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", musicOnly="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :try_start_7c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_ae

    .line 2185
    :try_start_83
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_99

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v6, v5

    move v5, p3

    move v3, v2

    move-object v2, p2

    .line 2186
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_a7

    :catchall_96
    move-exception v0

    move-object p0, v0

    goto :goto_ac

    .line 2191
    :cond_99
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    move-object v1, p1

    move-object v6, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Ljava/lang/String;IZ)V

    .line 2194
    :goto_a7
    monitor-exit v11
    :try_end_a8
    .catchall {:try_start_83 .. :try_end_a8} :catchall_96

    .line 2196
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2194
    :goto_ac
    :try_start_ac
    monitor-exit v11
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_96

    :try_start_ad
    throw p0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception v0

    move-object p0, v0

    .line 2196
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2197
    throw p0

    .line 2168
    :cond_b4
    :goto_b4
    const-string p0, "MediaSessionService"

    const-string p1, "Attempted to dispatch null or non-volume key event."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .registers 25

    .line 2203
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 2204
    :goto_b
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v1

    .line 2207
    :goto_14
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_2b

    const/16 v5, 0x19

    if-eq v4, v5, :cond_2a

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_27

    move v2, v1

    move v4, v2

    goto :goto_2c

    :cond_27
    move v4, v2

    move v2, v1

    goto :goto_2c

    :cond_2a
    const/4 v2, -0x1

    :cond_2b
    move v4, v1

    :goto_2c
    if-nez v0, :cond_30

    if-eqz v3, :cond_79

    :cond_30
    if-nez p8, :cond_3b

    if-eqz v3, :cond_38

    const/16 v5, 0x1014

    :goto_36
    move v14, v5

    goto :goto_3e

    :cond_38
    const/16 v5, 0x1011

    goto :goto_36

    :cond_3b
    const/16 v5, 0x1000

    goto :goto_36

    :goto_3e
    if-eqz v2, :cond_5a

    if-eqz v3, :cond_54

    move v13, v1

    :goto_43
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    move/from16 v15, p8

    goto :goto_56

    :cond_54
    move v13, v2

    goto :goto_43

    .line 2233
    :goto_56
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    return-void

    :cond_5a
    if-eqz v4, :cond_79

    if-eqz v0, :cond_79

    .line 2236
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_79

    const/16 v13, 0x65

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    move/from16 v15, p8

    .line 2237
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    :cond_79
    return-void
.end method

.method public dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .registers 17

    move-object/from16 v0, p4

    .line 2260
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2264
    :try_start_e
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_106

    .line 2265
    :try_start_15
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 2267
    const-string v2, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchVolumeKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", opPkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sessionToken="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", event="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", session="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_92

    .line 2273
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find session to dispatch key event, token="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Fallbacks to the default handling."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 2275
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 2277
    monitor-exit v11
    :try_end_8a
    .catchall {:try_start_15 .. :try_end_8a} :catchall_8e

    .line 2317
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_8e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_104

    .line 2279
    :cond_92
    :try_start_92
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->canHandleVolumeKey()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 2280
    const-string v0, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session with packageName="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support volume adjustment. Fallbacks to the default handling."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 2283
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 2285
    monitor-exit v11
    :try_end_c3
    .catchall {:try_start_92 .. :try_end_c3} :catchall_8e

    .line 2317
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2287
    :cond_c7
    :try_start_c7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_dd

    if-eq p0, v0, :cond_d1

    goto :goto_ff

    :cond_d1
    const/16 v7, 0x1014

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v0, v1

    move-object v1, p1

    .line 2311
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    goto :goto_ff

    :cond_dd
    move p0, v0

    move-object v0, v1

    .line 2290
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_f0

    const/16 p0, 0x19

    if-eq v1, p0, :cond_f5

    const/16 p0, 0xa4

    if-eq v1, p0, :cond_f2

    const/4 p0, 0x0

    :cond_f0
    :goto_f0
    move v6, p0

    goto :goto_f7

    :cond_f2
    const/16 p0, 0x65

    goto :goto_f0

    :cond_f5
    const/4 p0, -0x1

    goto :goto_f0

    :goto_f7
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    .line 2301
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    .line 2315
    :goto_ff
    monitor-exit v11
    :try_end_100
    .catchall {:try_start_c7 .. :try_end_100} :catchall_8e

    .line 2317
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2315
    :goto_104
    :try_start_104
    monitor-exit v11
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_8e

    :try_start_105
    throw p0
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_106

    :catchall_106
    move-exception v0

    move-object p0, v0

    .line 2317
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2318
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 2376
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "MediaSessionService"

    invoke-static {p1, p3, p2}, Lcom/android/server/media/MediaServerUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 2378
    :cond_f
    const-string p1, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2379
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2381
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2382
    :try_start_1e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions listeners."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2383
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Global priority session is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p3

    if-eqz p3, :cond_6c

    .line 2385
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p3

    const-string v0, "  "

    invoke-virtual {p3, p2, v0}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6c

    :catchall_6a
    move-exception p0

    goto :goto_aa

    .line 2387
    :cond_6c
    :goto_6c
    const-string p3, "User Records:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2388
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_7c
    if-ge v0, p3, :cond_92

    .line 2390
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 2392
    :cond_92
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmAudioPlayerStateMonitor(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p3, p0, p2, v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2393
    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_1e .. :try_end_a4} :catchall_6a

    .line 2394
    const-string p0, ""

    invoke-static {p2, p0}, Lcom/android/server/media/MediaSessionDeviceConfig;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 2393
    :goto_aa
    :try_start_aa
    monitor-exit p1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_6a

    throw p0
.end method

.method public expireTempEngagedSessions()V
    .registers 4

    .line 2799
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2801
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmUserEngagedSessionsForFgs(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 2802
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 2803
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->expireTempEngaged()V

    goto :goto_25

    :catchall_35
    move-exception p0

    goto :goto_39

    .line 2806
    :cond_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_35

    throw p0
.end method

.method public getMediaKeyEventSession(Ljava/lang/String;)Landroid/media/session/MediaSession$Token;
    .registers 8

    .line 1608
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1610
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1611
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1614
    :try_start_14
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v1}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1615
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p1, v0, v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 1618
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_62

    .line 1619
    :try_start_29
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_4f

    .line 1621
    const-string p0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No matching user record to get the media key event session, userId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_4d

    .line 1633
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_4d
    move-exception p0

    goto :goto_68

    .line 1625
    :cond_4f
    :try_start_4f
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p0

    .line 1626
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_4d

    .line 1627
    :try_start_54
    instance-of p1, p0, Lcom/android/server/media/MediaSessionRecord;

    if-eqz p1, :cond_64

    .line 1628
    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_62

    .line 1633
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_62
    move-exception p0

    goto :goto_6a

    :cond_64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 1626
    :goto_68
    :try_start_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_4d

    :try_start_69
    throw p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_62

    .line 1633
    :goto_6a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1634
    throw p0
.end method

.method public getMediaKeyEventSessionPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1639
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1641
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1642
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1645
    :try_start_14
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v1}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1646
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p1, v0, v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 1649
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_7b

    .line 1650
    :try_start_29
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-nez p0, :cond_50

    .line 1652
    const-string p0, "MediaSessionService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No matching user record to get the media key event session package , userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const-string p0, ""

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_4e

    .line 1666
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_4e
    move-exception p0

    goto :goto_7d

    .line 1656
    :cond_50
    :try_start_50
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    .line 1657
    instance-of v1, v0, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_61

    .line 1658
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getPackageName()Ljava/lang/String;

    move-result-object p0

    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_4e

    .line 1666
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1660
    :cond_61
    :try_start_61
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 1661
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/MediaButtonReceiverHolder;->getPackageName()Ljava/lang/String;

    move-result-object p0

    monitor-exit p1
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_4e

    .line 1666
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1663
    :cond_74
    :try_start_74
    monitor-exit p1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_4e

    .line 1664
    :try_start_75
    const-string p0, ""
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_7b

    .line 1666
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_7b
    move-exception p0

    goto :goto_7f

    .line 1663
    :goto_7d
    :try_start_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_4e

    :try_start_7e
    throw p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7b

    .line 1666
    :goto_7f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1667
    throw p0
.end method

.method public getSessionPolicies(Landroid/media/session/MediaSession$Token;)I
    .registers 3

    .line 2459
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2460
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2462
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getSessionPolicies()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    goto :goto_1a

    .line 2464
    :cond_17
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7

    .line 1587
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1592
    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result p1

    .line 1593
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1594
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_43

    .line 1595
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetActiveSessionsLocked(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;

    move-result-object p0

    .line 1596
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaSessionRecord;

    .line 1597
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :catchall_3a
    move-exception p0

    goto :goto_41

    .line 1599
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_3a

    .line 1602
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    .line 1599
    :goto_41
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3a

    :try_start_42
    throw p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p0

    .line 1602
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1603
    throw p0
.end method

.method public final handleIncomingUser(IIILjava/lang/String;)I
    .registers 7

    .line 2510
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne p3, v0, :cond_b

    goto :goto_26

    .line 2515
    :cond_b
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_27

    .line 2518
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-ne p3, p0, :cond_26

    .line 2519
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0

    :cond_26
    :goto_26
    return p3

    .line 2524
    :cond_27
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission denied while calling from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with user id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; Need to run as either the calling user id ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), or with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " permission"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasCustomMediaKeyDispatcher(Ljava/lang/String;)Z
    .registers 2

    .line 2445
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    const/4 p0, 0x0

    return p0
.end method

.method public hasCustomMediaSessionPolicyProvider(Ljava/lang/String;)Z
    .registers 2

    .line 2452
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaSessionPolicyProvider(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionPolicyProvider;

    const/4 p0, 0x0

    return p0
.end method

.method public final hasEnabledNotificationListener(ILjava/lang/String;I)Z
    .registers 7

    .line 2531
    const-string v0, "MediaSessionService"

    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_e

    return v2

    .line 2540
    :cond_e
    :try_start_e
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2542
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2540
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    if-eq p3, p1, :cond_28

    .line 2544
    const-string p0, "Failed to check enabled notification listener. Package name and UID doesn\'t match"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_27} :catch_5b

    return v2

    .line 2554
    :cond_28
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 2555
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 2554
    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x1

    return p0

    .line 2558
    :cond_3a
    sget-boolean p0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz p0, :cond_5a

    .line 2559
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") doesn\'t have an enabled notification listener"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return v2

    .line 2549
    :catch_5b
    const-string p0, "Failed to check enabled notification listener. Package name doesn\'t exist"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isGlobalPriorityActive()Z
    .registers 2

    .line 2369
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2370
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 2371
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isTrusted(Ljava/lang/String;II)Z
    .registers 9

    .line 2408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2409
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2410
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 2411
    invoke-virtual {v2, p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    return v2

    .line 2415
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2425
    :try_start_20
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p2, p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z

    move-result p2

    if-nez p2, :cond_31

    .line 2426
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasEnabledNotificationListener(ILjava/lang/String;I)Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2f

    if-eqz p0, :cond_32

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_36

    :cond_31
    :goto_31
    const/4 v2, 0x1

    .line 2429
    :cond_32
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_36
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2430
    throw p0
.end method

.method public final isUserSetupComplete()Z
    .registers 4

    .line 2784
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2785
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2784
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v2
.end method

.method public final isValidLocalStreamType(I)Z
    .registers 2

    .line 0
    if-ltz p1, :cond_7

    const/4 p0, 0x5

    if-gt p1, p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final isVoiceKey(I)Z
    .registers 3

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_13

    .line 2779
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHasFeatureLeanback(Lcom/android/server/media/MediaSessionService;)Z

    move-result p0

    if-nez p0, :cond_11

    const/16 p0, 0x55

    if-ne p1, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 16

    .line 1544
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    .line 1545
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1546
    array-length v1, v0

    if-lez v1, :cond_1b

    const/4 v1, 0x0

    .line 1547
    aget-object v0, v0, v1

    goto :goto_1d

    .line 1548
    :cond_1b
    const-string v0, "com.android.shell"

    .line 1551
    :goto_1d
    new-instance v1, Lcom/android/server/media/MediaShellCommand;

    invoke-direct {v1, v0}, Lcom/android/server/media/MediaShellCommand;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 1552
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .registers 9

    .line 2339
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2342
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2344
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceStatusBarServicePermission(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 2345
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_28

    .line 2347
    :try_start_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2349
    monitor-exit v4

    return-void

    :catchall_26
    move-exception p0

    goto :goto_2d

    :catchall_28
    move-exception p0

    .line 2347
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2348
    throw p0

    .line 2349
    :goto_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_26

    throw p0
.end method

.method public removeOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .registers 9

    if-nez p1, :cond_b

    .line 1928
    const-string p0, "MediaSessionService"

    const-string/jumbo p1, "removeOnMediaKeyEventDispatchedListener: listener is null, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1931
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1932
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1933
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1936
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1940
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_8c

    .line 1941
    :try_start_2e
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_6f

    .line 1942
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v2, :cond_3d

    goto :goto_6f

    .line 1947
    :cond_3d
    invoke-virtual {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->removeOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V

    .line 1948
    const-string v2, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The MediaKeyEventDispatchedListener ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is removed by "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1949
    invoke-static {p0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1948
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_2e .. :try_end_69} :catchall_6d

    .line 1952
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6d
    move-exception p0

    goto :goto_8a

    .line 1943
    :cond_6f
    :goto_6f
    :try_start_6f
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the full user can remove the listener, userId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_6d

    .line 1952
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1950
    :goto_8a
    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_6d

    :try_start_8b
    throw p0

    :catchall_8c
    move-exception p0

    goto :goto_96

    .line 1937
    :cond_8e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MEDIA_CONTENT_CONTROL permission is required to  remove MediaKeyEventDispatchedListener"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_8c

    .line 1952
    :goto_96
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1953
    throw p0
.end method

.method public removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .registers 9

    if-nez p1, :cond_b

    .line 1994
    const-string p0, "MediaSessionService"

    const-string/jumbo p1, "removeOnMediaKeyEventSessionChangedListener: listener is null, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1999
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2001
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2002
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2004
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_83

    .line 2005
    :try_start_25
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 2006
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v1, :cond_34

    goto :goto_66

    .line 2011
    :cond_34
    invoke-virtual {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V

    .line 2012
    const-string v1, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The MediaKeyEventSessionChangedListener ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is removed by "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2013
    invoke-static {p0, v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2012
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_25 .. :try_end_60} :catchall_64

    .line 2016
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_64
    move-exception p0

    goto :goto_81

    .line 2007
    :cond_66
    :goto_66
    :try_start_66
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only the full user can remove the listener, userId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_64

    .line 2016
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2014
    :goto_81
    :try_start_81
    monitor-exit v4
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_64

    :try_start_82
    throw p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    :catchall_83
    move-exception p0

    .line 2016
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2017
    throw p0
.end method

.method public removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V
    .registers 6

    .line 1751
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 1752
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 1753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1756
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_39

    .line 1757
    :try_start_11
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result p1

    if-ltz p1, :cond_32

    .line 1759
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSession2TokensListenerRecords(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object p0

    .line 1760
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_30

    .line 1762
    :try_start_25
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {p1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_32
    .catchall {:try_start_25 .. :try_end_2f} :catchall_30

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_37

    .line 1767
    :catch_32
    :cond_32
    :goto_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_30

    .line 1769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1767
    :goto_37
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_30

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    .line 1769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1770
    throw p0
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .registers 4

    .line 1707
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1708
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_29

    .line 1710
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_27

    .line 1712
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_29
    .catchall {:try_start_1c .. :try_end_26} :catchall_27

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2b

    .line 1717
    :catch_29
    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_27

    throw p0
.end method

.method public setCustomMediaKeyDispatcher(Ljava/lang/String;)V
    .registers 2

    .line 2435
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$minstantiateCustomDispatcher(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomMediaSessionPolicyProvider(Ljava/lang/String;)V
    .registers 2

    .line 2440
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$minstantiateCustomProvider(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V

    return-void
.end method

.method public setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .registers 9

    .line 2082
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2084
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2087
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_MEDIA_KEY_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f7

    .line 2093
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_f5

    .line 2094
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2095
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_d8

    .line 2096
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v4, :cond_39

    goto/16 :goto_d8

    .line 2101
    :cond_39
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v4

    if-eqz v4, :cond_6f

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    if-eq v4, v1, :cond_6f

    .line 2102
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_21 .. :try_end_68} :catchall_6c

    .line 2132
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6c
    move-exception p0

    goto/16 :goto_f3

    .line 2108
    :cond_6f
    :try_start_6f
    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)V

    .line 2109
    invoke-static {v5, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V

    .line 2111
    const-string p1, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The media key listener "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is set by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2112
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2111
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object p1
    :try_end_a1
    .catchall {:try_start_6f .. :try_end_a1} :catchall_6c

    if-eqz p1, :cond_d3

    .line 2116
    :try_start_a3
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v1, p0, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 p0, 0x0

    invoke-interface {p1, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_b4} :catch_b5
    .catchall {:try_start_a3 .. :try_end_b4} :catchall_6c

    goto :goto_d3

    .line 2126
    :catch_b5
    :try_start_b5
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set death recipient "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 2127
    invoke-static {v5, p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)V

    .line 2130
    :cond_d3
    :goto_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_b5 .. :try_end_d4} :catchall_6c

    .line 2132
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2097
    :cond_d8
    :goto_d8
    :try_start_d8
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the full user can set the media key listener, userId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_d8 .. :try_end_ef} :catchall_6c

    .line 2132
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2130
    :goto_f3
    :try_start_f3
    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_6c

    :try_start_f4
    throw p0

    :catchall_f5
    move-exception p0

    goto :goto_ff

    .line 2090
    :cond_f7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must hold the SET_MEDIA_KEY_LISTENER permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ff
    .catchall {:try_start_f4 .. :try_end_ff} :catchall_f5

    .line 2132
    :goto_ff
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    throw p0
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .registers 10

    .line 2022
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2023
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2024
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2027
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f3

    .line 2034
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_f1

    .line 2035
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2036
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_d4

    .line 2037
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v4, :cond_39

    goto/16 :goto_d4

    .line 2042
    :cond_39
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v4

    if-eqz v4, :cond_6f

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    if-eq v4, v1, :cond_6f

    .line 2044
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_21 .. :try_end_68} :catchall_6c

    .line 2076
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6c
    move-exception p0

    goto/16 :goto_ef

    .line 2051
    :cond_6f
    :try_start_6f
    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    .line 2052
    invoke-static {v5, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V

    .line 2054
    const-string v4, "MediaSessionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The volume key long-press listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is set by "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2055
    invoke-static {p1, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2054
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object p1
    :try_end_9d
    .catchall {:try_start_6f .. :try_end_9d} :catchall_6c

    if-eqz p1, :cond_cf

    .line 2059
    :try_start_9f
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v1, p0, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 p0, 0x0

    invoke-interface {p1, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_b0} :catch_b1
    .catchall {:try_start_9f .. :try_end_b0} :catchall_6c

    goto :goto_cf

    .line 2069
    :catch_b1
    :try_start_b1
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set death recipient "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 2071
    invoke-static {v5, p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    .line 2074
    :cond_cf
    :goto_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_b1 .. :try_end_d0} :catchall_6c

    .line 2076
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2038
    :cond_d4
    :goto_d4
    :try_start_d4
    const-string p0, "MediaSessionService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the full user can set the volume key long-press listener, userId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_d4 .. :try_end_eb} :catchall_6c

    .line 2076
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2074
    :goto_ef
    :try_start_ef
    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_6c

    :try_start_f0
    throw p0

    :catchall_f1
    move-exception p0

    goto :goto_fb

    .line 2030
    :cond_f3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_fb
    .catchall {:try_start_f0 .. :try_end_fb} :catchall_f1

    .line 2076
    :goto_fb
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2077
    throw p0
.end method

.method public setSessionPolicies(Landroid/media/session/MediaSession$Token;I)V
    .registers 7

    .line 2470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2472
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_31

    .line 2473
    :try_start_b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p1

    .line 2474
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 2476
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionRecord;->setSessionPolicies(I)V

    .line 2477
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionBySessionPolicyChange(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2f

    .line 2479
    :cond_2a
    :goto_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_28

    .line 2481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2479
    :goto_2f
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_28

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 2481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2482
    throw p0
.end method

.method public final startVoiceInput(Z)V
    .registers 8

    .line 2747
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2748
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    .line 2749
    :goto_28
    const-string v4, "MediaSessionService"

    if-nez v1, :cond_40

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2751
    const-string/jumbo v1, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 2753
    :cond_40
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_56

    .line 2754
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    .line 2755
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_56

    move v2, v3

    .line 2754
    :cond_56
    const-string v1, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2756
    const-string/jumbo v1, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    if-eqz p1, :cond_6c

    .line 2760
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_6c
    const/high16 v1, 0x10800000

    .line 2764
    :try_start_6e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2766
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_8f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voiceIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :catchall_8b
    move-exception v0

    goto :goto_c6

    :catch_8d
    move-exception v0

    goto :goto_a6

    .line 2767
    :cond_8f
    :goto_8f
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6e .. :try_end_9a} :catch_8d
    .catchall {:try_start_6e .. :try_end_9a} :catchall_8b

    if-eqz p1, :cond_c5

    .line 2773
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 2770
    :goto_a6
    :try_start_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity for search: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_8b

    if-eqz p1, :cond_c5

    .line 2773
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_c5
    return-void

    :goto_c6
    if-eqz p1, :cond_d1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2775
    :cond_d1
    throw v0
.end method

.method public unregisterRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .registers 9

    .line 2354
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2357
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2359
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceStatusBarServicePermission(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 2360
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_28

    .line 2362
    :try_start_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2364
    monitor-exit v4

    return-void

    :catchall_26
    move-exception p0

    goto :goto_2d

    :catchall_28
    move-exception p0

    .line 2362
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    throw p0

    .line 2364
    :goto_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_26

    throw p0
.end method

.method public final verifySessionsRequest(Landroid/content/ComponentName;III)I
    .registers 6

    if-eqz p1, :cond_10

    .line 2492
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2493
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p4}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 2496
    :goto_11
    invoke-virtual {p0, p3, p4, p2, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 2499
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1, p3, p4, p2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    return p2
.end method
