.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$AccessibilityEventFilter;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;,
        Landroid/app/UiAutomation$ConnectionState;
    }
.end annotation


# static fields
.field public static final blacklist ALL_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final greylist-max-o CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES:I = 0x1

.field public static final whitelist FLAG_DONT_USE_ACCESSIBILITY:I = 0x2

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field public static final whitelist ROTATION_FREEZE_0:I = 0x0

.field public static final whitelist ROTATION_FREEZE_180:I = 0x2

.field public static final whitelist ROTATION_FREEZE_270:I = 0x3

.field public static final whitelist ROTATION_FREEZE_90:I = 0x1

.field public static final whitelist ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final whitelist ROTATION_UNFREEZE:I = -0x2


# instance fields
.field private greylist-max-o mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private greylist-max-o mConnectionId:I

.field private blacklist mConnectionState:I

.field private final greylist-max-o mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFlags:I

.field private blacklist mGenerationId:I

.field private greylist-max-o mIsDestroyed:Z

.field private greylist-max-o mLastEventTimeMillis:J

.field private final greylist-max-o mLocalCallbackHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private greylist-max-o mRemoteCallbackThread:Landroid/os/HandlerThread;

.field private final greylist-max-o mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private greylist-max-o mWaitingForEventDelivery:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventQueue(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGenerationId(Landroid/app/UiAutomation;)I
    .registers 1

    iget p0, p0, Landroid/app/UiAutomation;->mGenerationId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalCallbackHandler(Landroid/app/UiAutomation;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mLocalCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnAccessibilityEventListener(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitingForEventDelivery(Landroid/app/UiAutomation;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionId(Landroid/app/UiAutomation;I)V
    .registers 2

    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionState(Landroid/app/UiAutomation;I)V
    .registers 2

    iput p1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastEventTimeMillis(Landroid/app/UiAutomation;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    const-class v0, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 183
    const-string v0, "_ALL_PERMISSIONS_"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->ALL_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "connection"    # Landroid/app/IUiAutomationConnection;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 211
    iput v0, p0, Landroid/app/UiAutomation;->mGenerationId:I

    .line 262
    if-eqz p1, :cond_2f

    .line 265
    if-eqz p2, :cond_27

    .line 268
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLocalCallbackHandler:Landroid/os/Handler;

    .line 269
    iput-object p2, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 270
    return-void

    .line 266
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Looper cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist executeShellCommandInternal(Ljava/lang/String;Z)[Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "includeStderr"    # Z

    .line 1472
    const-string v0, "Error executing shell command!"

    invoke-direct {p0, p1}, Landroid/app/UiAutomation;->warnIfBetterCommand(Ljava/lang/String;)V

    .line 1474
    const/4 v1, 0x0

    .line 1475
    .local v1, "source_read":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 1477
    .local v2, "sink_read":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 1478
    .local v3, "source_write":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 1480
    .local v4, "sink_write":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 1481
    .local v5, "stderr_source_read":Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    .line 1484
    .local v6, "stderr_sink_read":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_d
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 1485
    .local v9, "pipe_read":[Landroid/os/ParcelFileDescriptor;
    aget-object v10, v9, v8

    move-object v1, v10

    .line 1486
    aget-object v10, v9, v7

    move-object v2, v10

    .line 1488
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 1489
    .local v10, "pipe_write":[Landroid/os/ParcelFileDescriptor;
    aget-object v11, v10, v8

    move-object v3, v11

    .line 1490
    aget-object v11, v10, v7

    move-object v4, v11

    .line 1492
    if-eqz p2, :cond_2d

    .line 1493
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    .line 1494
    .local v11, "stderr_read":[Landroid/os/ParcelFileDescriptor;
    aget-object v12, v11, v8

    move-object v5, v12

    .line 1495
    aget-object v12, v11, v7

    move-object v6, v12

    .line 1499
    .end local v11    # "stderr_read":[Landroid/os/ParcelFileDescriptor;
    :cond_2d
    iget-object v11, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v11, p1, v2, v3, v6}, Landroid/app/IUiAutomationConnection;->executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_32} :catch_35
    .catchall {:try_start_d .. :try_end_32} :catchall_33

    .line 1506
    .end local v9    # "pipe_read":[Landroid/os/ParcelFileDescriptor;
    .end local v10    # "pipe_write":[Landroid/os/ParcelFileDescriptor;
    goto :goto_44

    :catchall_33
    move-exception v0

    goto :goto_5f

    .line 1503
    :catch_35
    move-exception v9

    .line 1504
    .local v9, "re":Landroid/os/RemoteException;
    :try_start_36
    sget-object v10, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1506
    nop

    .end local v9    # "re":Landroid/os/RemoteException;
    goto :goto_44

    .line 1501
    :catch_3d
    move-exception v9

    .line 1502
    .local v9, "ioe":Ljava/io/IOException;
    sget-object v10, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_33

    .line 1506
    nop

    .end local v9    # "ioe":Ljava/io/IOException;
    :goto_44
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1507
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1508
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1509
    nop

    .line 1511
    const/4 v0, 0x2

    if-eqz p2, :cond_53

    const/4 v9, 0x3

    goto :goto_54

    :cond_53
    move v9, v0

    :goto_54
    new-array v9, v9, [Landroid/os/ParcelFileDescriptor;

    .line 1512
    .local v9, "result":[Landroid/os/ParcelFileDescriptor;
    aput-object v1, v9, v8

    .line 1513
    aput-object v4, v9, v7

    .line 1514
    if-eqz p2, :cond_5e

    .line 1515
    aput-object v5, v9, v0

    .line 1517
    :cond_5e
    return-object v9

    .line 1506
    .end local v9    # "result":[Landroid/os/ParcelFileDescriptor;
    :goto_5f
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1507
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1508
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1509
    throw v0
.end method

.method private greylist-max-o throwIfConnectedLocked()V
    .registers 4

    .line 1532
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 1535
    return-void

    .line 1533
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiAutomation connected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfNotConnectedLocked()V
    .registers 4

    .line 1539
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    .line 1540
    invoke-direct {p0}, Landroid/app/UiAutomation;->useAccessibility()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1541
    const-string v0, "UiAutomation not connected, "

    goto :goto_10

    .line 1542
    :cond_e
    const-string v0, "UiAutomation not connected: Accessibility-dependent method called with FLAG_DONT_USE_ACCESSIBILITY set, "

    :goto_10
    nop

    .line 1544
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1546
    .end local v0    # "msg":Ljava/lang/String;
    :cond_28
    return-void
.end method

.method private blacklist useAccessibility()Z
    .registers 2

    .line 1559
    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o warnIfBetterCommand(Ljava/lang/String;)V
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1549
    const-string/jumbo v0, "pm grant "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1550
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "UiAutomation.grantRuntimePermission() is more robust and should be used instead of \'pm grant\'"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1552
    :cond_11
    const-string/jumbo v0, "pm revoke "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1553
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "UiAutomation.revokeRuntimePermission() is more robust and should be used instead of \'pm revoke\'"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public whitelist adoptShellPermissionIdentity()V
    .registers 4

    .line 476
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IUiAutomationConnection;->adoptShellPermissionIdentity(I[Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 479
    goto :goto_13

    .line 477
    :catch_b
    move-exception v0

    .line 478
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error executing adopting shell permission identity!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public varargs whitelist adoptShellPermissionIdentity([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 501
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/IUiAutomationConnection;->adoptShellPermissionIdentity(I[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 504
    goto :goto_12

    .line 502
    :catch_a
    move-exception v0

    .line 503
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error executing adopting shell permission identity!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist clearWindowAnimationFrameStats()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1254
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->clearWindowAnimationFrameStats()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1257
    goto :goto_e

    .line 1255
    :catch_6
    move-exception v0

    .line 1256
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error clearing window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1258
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist clearWindowContentFrameStats(I)Z
    .registers 5
    .param p1, "windowId"    # I

    .line 1173
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1174
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1175
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 1181
    :try_start_7
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->clearWindowContentFrameStats(I)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 1182
    :catch_e
    move-exception v0

    .line 1183
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error clearing window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1185
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 1175
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public greylist-max-p connect()V
    .registers 4

    .line 281
    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    :try_start_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/UiAutomation;->connectWithTimeout(IJ)V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    .line 284
    nop

    .line 285
    return-void

    .line 282
    :catch_8
    move-exception v0

    .line 283
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o connect(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 294
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/UiAutomation;->connectWithTimeout(IJ)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_5} :catch_7

    .line 297
    nop

    .line 298
    return-void

    .line 295
    :catch_7
    move-exception v0

    .line 296
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist connectWithTimeout(IJ)V
    .registers 14
    .param p1, "flags"    # I
    .param p2, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    .line 316
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 317
    monitor-exit v0

    return-void

    .line 319
    :cond_d
    iput v2, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 320
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "UiAutomation"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 321
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 323
    new-instance v1, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    iget-object v3, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 324
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Landroid/app/UiAutomation;->mGenerationId:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/app/UiAutomation;->mGenerationId:I

    invoke-direct {v1, p0, v3, v4}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;I)V

    iput-object v1, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 325
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_9d

    .line 329
    :try_start_2e
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, v1, p1}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 330
    iput p1, p0, Landroid/app/UiAutomation;->mFlags:I

    .line 333
    invoke-direct {p0}, Landroid/app/UiAutomation;->useAccessibility()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionState:I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3e} :catch_83

    .line 335
    return-void

    .line 339
    :cond_3f
    nop

    .line 341
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 344
    .local v1, "startTimeMillis":J
    :goto_47
    iget v3, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4f

    .line 345
    nop

    .line 359
    .end local v1    # "startTimeMillis":J
    monitor-exit v0

    .line 360
    return-void

    .line 347
    .restart local v1    # "startTimeMillis":J
    :cond_4f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_80

    sub-long/2addr v3, v1

    .line 348
    .local v3, "elapsedTimeMillis":J
    sub-long v5, p2, v3

    .line 349
    .local v5, "remainingTimeMillis":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_64

    .line 354
    :try_start_5c
    iget-object v7, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_61} :catch_62
    .catchall {:try_start_5c .. :try_end_61} :catchall_80

    .line 357
    goto :goto_63

    .line 355
    :catch_62
    move-exception v7

    .line 358
    .end local v3    # "elapsedTimeMillis":J
    .end local v5    # "remainingTimeMillis":J
    :goto_63
    goto :goto_47

    .line 350
    .restart local v3    # "elapsedTimeMillis":J
    .restart local v5    # "remainingTimeMillis":J
    :cond_64
    const/4 v7, 0x3

    :try_start_65
    iput v7, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 351
    new-instance v7, Ljava/util/concurrent/TimeoutException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timeout while connecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "flags":I
    .end local p2    # "timeoutMillis":J
    throw v7

    .line 359
    .end local v1    # "startTimeMillis":J
    .end local v3    # "elapsedTimeMillis":J
    .end local v5    # "remainingTimeMillis":J
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "flags":I
    .restart local p2    # "timeoutMillis":J
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_65 .. :try_end_82} :catchall_80

    throw v1

    .line 337
    :catch_83
    move-exception v0

    .line 338
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while connecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 325
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_9d
    move-exception v1

    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method public blacklist destroy()V
    .registers 2

    .line 455
    invoke-virtual {p0}, Landroid/app/UiAutomation;->disconnect()V

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    .line 457
    return-void
.end method

.method public greylist-max-p disconnect()V
    .registers 6

    .line 380
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_56

    .line 385
    invoke-direct {p0}, Landroid/app/UiAutomation;->useAccessibility()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    if-nez v1, :cond_14

    .line 386
    monitor-exit v0

    return-void

    .line 388
    :cond_14
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 389
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 391
    iget v1, p0, Landroid/app/UiAutomation;->mGenerationId:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/app/UiAutomation;->mGenerationId:I

    .line 392
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_6f

    .line 395
    const/4 v0, 0x0

    :try_start_21
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_32
    .catchall {:try_start_21 .. :try_end_26} :catchall_30

    .line 399
    iget-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2f

    .line 400
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 401
    iput-object v0, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 404
    :cond_2f
    return-void

    .line 399
    :catchall_30
    move-exception v1

    goto :goto_4c

    .line 396
    :catch_32
    move-exception v1

    .line 397
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_33
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while disconnecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/UiAutomation;
    throw v2
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_30

    .line 399
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/UiAutomation;
    :goto_4c
    iget-object v2, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_55

    .line 400
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 401
    iput-object v0, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 403
    :cond_55
    throw v1

    .line 382
    :cond_56
    :try_start_56
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call disconnect() while connecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomation;
    throw v1

    .line 392
    .restart local p0    # "this":Landroid/app/UiAutomation;
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_56 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public whitelist dropShellPermissionIdentity()V
    .registers 4

    .line 517
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->dropShellPermissionIdentity()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 520
    goto :goto_e

    .line 518
    :catch_6
    move-exception v0

    .line 519
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error executing dropping shell permission identity!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .registers 24
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 939
    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    iget-object v4, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 940
    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 941
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 944
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_110

    .line 951
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 953
    .local v5, "executionStartTimeMillis":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 960
    .local v7, "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    const/4 v4, 0x0

    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 962
    .local v8, "startTimeMillis":J
    :goto_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 963
    .local v10, "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    iget-object v11, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_e4

    .line 964
    :try_start_2e
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 965
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 966
    monitor-exit v11
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_da

    .line 968
    :goto_39
    :try_start_39
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_e4

    if-nez v0, :cond_8b

    .line 969
    :try_start_3f
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    move-object v11, v0

    .line 971
    .local v11, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v12
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_86

    cmp-long v0, v12, v5

    if-gez v0, :cond_4f

    .line 972
    goto :goto_39

    .line 974
    :cond_4f
    move-object/from16 v12, p2

    :try_start_51
    invoke-interface {v12, v11}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_84

    if-eqz v0, :cond_7f

    .line 975
    nop

    .line 997
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    .line 998
    .local v13, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5d
    if-ge v0, v13, :cond_6b

    .line 999
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 998
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 1002
    .end local v0    # "i":I
    :cond_6b
    iget-object v14, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1003
    :try_start_6e
    iput-boolean v4, v1, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 1004
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1005
    iget-object v0, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1006
    monitor-exit v14

    .line 975
    .end local v13    # "size":I
    return-object v11

    .line 1006
    .restart local v13    # "size":I
    :catchall_7c
    move-exception v0

    monitor-exit v14
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_7c

    throw v0

    .line 977
    .end local v13    # "size":I
    :cond_7f
    :try_start_7f
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_84

    .line 978
    nop

    .end local v11    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_39

    .line 997
    .end local v8    # "startTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    :catchall_84
    move-exception v0

    goto :goto_89

    :catchall_86
    move-exception v0

    move-object/from16 v12, p2

    :goto_89
    move-wide v15, v5

    goto :goto_e8

    .line 980
    .restart local v8    # "startTimeMillis":J
    .restart local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    :cond_8b
    move-object/from16 v12, p2

    :try_start_8d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_d8

    sub-long/2addr v13, v8

    .line 981
    .local v13, "elapsedTimeMillis":J
    move-wide v15, v5

    .end local v5    # "executionStartTimeMillis":J
    .local v15, "executionStartTimeMillis":J
    sub-long v4, v2, v13

    .line 982
    .local v4, "remainingTimeMillis":J
    const-wide/16 v17, 0x0

    cmp-long v0, v4, v17

    if-lez v0, :cond_b5

    .line 986
    :try_start_9b
    iget-object v11, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_e0

    .line 987
    :try_start_9e
    iget-object v0, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_b2

    if-eqz v0, :cond_ad

    .line 989
    :try_start_a6
    iget-object v0, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_ab} :catch_ac
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_b2

    .line 992
    goto :goto_ad

    .line 990
    :catch_ac
    move-exception v0

    .line 994
    :cond_ad
    :goto_ad
    :try_start_ad
    monitor-exit v11

    .line 995
    .end local v4    # "remainingTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v13    # "elapsedTimeMillis":J
    move-wide v5, v15

    const/4 v4, 0x0

    goto/16 :goto_25

    .line 994
    .restart local v4    # "remainingTimeMillis":J
    .restart local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local v13    # "elapsedTimeMillis":J
    :catchall_b2
    move-exception v0

    monitor-exit v11
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_b2

    .end local v7    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v15    # "executionStartTimeMillis":J
    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .end local p3    # "timeoutMillis":J
    :try_start_b4
    throw v0

    .line 983
    .restart local v7    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local v15    # "executionStartTimeMillis":J
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "command":Ljava/lang/Runnable;
    .restart local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .restart local p3    # "timeoutMillis":J
    :cond_b5
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected event not received within: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " ms among: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local v7    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v15    # "executionStartTimeMillis":J
    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .end local p3    # "timeoutMillis":J
    throw v0
    :try_end_d8
    .catchall {:try_start_b4 .. :try_end_d8} :catchall_e0

    .line 997
    .end local v4    # "remainingTimeMillis":J
    .end local v8    # "startTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v13    # "elapsedTimeMillis":J
    .restart local v5    # "executionStartTimeMillis":J
    .restart local v7    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "command":Ljava/lang/Runnable;
    .restart local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .restart local p3    # "timeoutMillis":J
    :catchall_d8
    move-exception v0

    goto :goto_e7

    .line 966
    .restart local v8    # "startTimeMillis":J
    .restart local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    :catchall_da
    move-exception v0

    move-object/from16 v12, p2

    move-wide v15, v5

    .end local v5    # "executionStartTimeMillis":J
    .restart local v15    # "executionStartTimeMillis":J
    :goto_de
    :try_start_de
    monitor-exit v11
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_e2

    .end local v7    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v15    # "executionStartTimeMillis":J
    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .end local p3    # "timeoutMillis":J
    :try_start_df
    throw v0
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e0

    .line 997
    .end local v8    # "startTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local v7    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local v15    # "executionStartTimeMillis":J
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "command":Ljava/lang/Runnable;
    .restart local p2    # "filter":Landroid/app/UiAutomation$AccessibilityEventFilter;
    .restart local p3    # "timeoutMillis":J
    :catchall_e0
    move-exception v0

    goto :goto_e8

    .line 966
    .restart local v8    # "startTimeMillis":J
    .restart local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    :catchall_e2
    move-exception v0

    goto :goto_de

    .line 997
    .end local v8    # "startTimeMillis":J
    .end local v10    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v15    # "executionStartTimeMillis":J
    .restart local v5    # "executionStartTimeMillis":J
    :catchall_e4
    move-exception v0

    move-object/from16 v12, p2

    :goto_e7
    move-wide v15, v5

    .end local v5    # "executionStartTimeMillis":J
    .restart local v15    # "executionStartTimeMillis":J
    :goto_e8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 998
    .local v5, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ed
    if-ge v4, v5, :cond_fb

    .line 999
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 998
    add-int/lit8 v4, v4, 0x1

    goto :goto_ed

    .line 1002
    .end local v4    # "i":I
    :cond_fb
    iget-object v6, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1003
    const/4 v4, 0x0

    :try_start_ff
    iput-boolean v4, v1, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 1004
    iget-object v4, v1, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1005
    iget-object v4, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1006
    monitor-exit v6
    :try_end_10c
    .catchall {:try_start_ff .. :try_end_10c} :catchall_10d

    .line 1007
    .end local v5    # "size":I
    throw v0

    .line 1006
    .restart local v5    # "size":I
    :catchall_10d
    move-exception v0

    :try_start_10e
    monitor-exit v6
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_10d

    throw v0

    .line 944
    .end local v5    # "size":I
    .end local v7    # "receivedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v15    # "executionStartTimeMillis":J
    :catchall_110
    move-exception v0

    move-object/from16 v12, p2

    :goto_113
    :try_start_113
    monitor-exit v4
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_115

    throw v0

    :catchall_115
    move-exception v0

    goto :goto_113
.end method

.method public whitelist executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "command"    # Ljava/lang/String;

    .line 1407
    const-string v0, "Error executing shell command!"

    invoke-direct {p0, p1}, Landroid/app/UiAutomation;->warnIfBetterCommand(Ljava/lang/String;)V

    .line 1409
    const/4 v1, 0x0

    .line 1410
    .local v1, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 1413
    .local v2, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_7
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1414
    .local v3, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    move-object v1, v4

    .line 1415
    const/4 v4, 0x1

    aget-object v4, v3, v4

    move-object v2, v4

    .line 1418
    iget-object v4, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v2, v5}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1c
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    .line 1424
    .end local v3    # "pipe":[Landroid/os/ParcelFileDescriptor;
    goto :goto_2b

    :catchall_1a
    move-exception v0

    goto :goto_30

    .line 1421
    :catch_1c
    move-exception v3

    .line 1422
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1d
    sget-object v4, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1424
    nop

    .end local v3    # "re":Landroid/os/RemoteException;
    goto :goto_2b

    .line 1419
    :catch_24
    move-exception v3

    .line 1420
    .local v3, "ioe":Ljava/io/IOException;
    sget-object v4, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_1a

    .line 1424
    nop

    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_2b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1425
    nop

    .line 1427
    return-object v1

    .line 1424
    :goto_30
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1425
    throw v0
.end method

.method public whitelist executeShellCommandRw(Ljava/lang/String;)[Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 1445
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/UiAutomation;->executeShellCommandInternal(Ljava/lang/String;Z)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist executeShellCommandRwe(Ljava/lang/String;)[Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 1467
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/UiAutomation;->executeShellCommandInternal(Ljava/lang/String;Z)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "focus"    # I

    .line 595
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 597
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_16

    .line 598
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v3, -0x2

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 597
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist getAdoptedShellPermissions()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 534
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->getAdoptedShellPermissions()Ljava/util/List;

    move-result-object v0

    .line 535
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_b

    sget-object v1, Landroid/app/UiAutomation;->ALL_PERMISSIONS:Ljava/util/Set;

    goto :goto_10

    :cond_b
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v1

    .line 536
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_11
    move-exception v0

    .line 537
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting adopted shell permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getConnectionId()I
    .registers 3

    .line 414
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 416
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    monitor-exit v0

    return v1

    .line 417
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 370
    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    return v0
.end method

.method public whitelist getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 12

    .line 728
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 730
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 731
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_99

    .line 737
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    const/4 v2, 0x4

    .line 738
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 740
    .local v0, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_98

    const-string v2, "com.google.android.settings.gts"

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 741
    const-string v2, "com.android.settings"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 742
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 743
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 745
    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/16 v4, 0xc8

    if-le v3, v4, :cond_98

    .line 746
    invoke-virtual {p0}, Landroid/app/UiAutomation;->getWindows()Ljava/util/List;

    move-result-object v3

    .line 747
    .local v3, "windowInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    const/4 v4, 0x0

    .line 748
    .local v4, "accountsWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v5, 0x0

    .line 749
    .local v5, "settingsWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 750
    .local v7, "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    const-string v8, "Accounts & sync"

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_70

    .line 751
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v8

    if-ne v9, v8, :cond_70

    .line 752
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_70

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_70

    .line 753
    move-object v4, v7

    .line 755
    :cond_70
    const-string v8, "Settings"

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 756
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v8

    if-ne v9, v8, :cond_8f

    .line 757
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v8

    if-nez v8, :cond_8f

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v8

    if-nez v8, :cond_8f

    .line 758
    move-object v5, v7

    .line 760
    .end local v7    # "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_8f
    goto :goto_44

    .line 761
    :cond_90
    if-eqz v4, :cond_98

    if-eqz v5, :cond_98

    .line 762
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 767
    .end local v2    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v3    # "windowInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v4    # "accountsWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "settingsWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_98
    return-object v0

    .line 731
    .end local v0    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "connectionId":I
    :catchall_99
    move-exception v1

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v1
.end method

.method public final whitelist getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 5

    .line 615
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 617
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 618
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 619
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 621
    if-eqz v1, :cond_1f

    .line 623
    :try_start_12
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return-object v0

    .line 624
    :catch_17
    move-exception v0

    .line 625
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1f
    const/4 v0, 0x0

    return-object v0

    .line 619
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1295
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1296
    :catch_7
    move-exception v0

    .line 1297
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1299
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .registers 5
    .param p1, "windowId"    # I

    .line 1220
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1222
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 1228
    :try_start_7
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 1229
    :catch_e
    move-exception v0

    .line 1230
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1232
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0

    .line 1222
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getWindows()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 681
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 682
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 684
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 685
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v0

    .line 684
    return-object v0

    .line 682
    .end local v1    # "connectionId":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 712
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 713
    .local v1, "connectionId":I
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 715
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 716
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnAllDisplays(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 715
    return-object v0

    .line 713
    .end local v1    # "connectionId":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 1310
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1311
    return-void
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1322
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/UiAutomation;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1323
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 1340
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1341
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1340
    invoke-interface {v0, p1, p2, v1}, Landroid/app/IUiAutomationConnection;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 1344
    nop

    .line 1345
    return-void

    .line 1342
    :catch_b
    move-exception v0

    .line 1343
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Error granting runtime permission"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;Z)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .line 785
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;ZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;ZZ)Z
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z
    .param p3, "waitForAnimations"    # Z

    .line 812
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;ZZ)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 813
    :catch_7
    move-exception v0

    .line 814
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while injecting input event!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isDestroyed()Z
    .registers 2

    .line 428
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    return v0
.end method

.method public final whitelist performGlobalAction(I)Z
    .registers 6
    .param p1, "action"    # I

    .line 559
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 561
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 562
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 563
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 565
    if-eqz v1, :cond_1f

    .line 567
    :try_start_12
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return v0

    .line 568
    :catch_17
    move-exception v0

    .line 569
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1f
    const/4 v0, 0x0

    return v0

    .line 563
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 1355
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1356
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1367
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/UiAutomation;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1368
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 1385
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1386
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1385
    invoke-interface {v0, p1, p2, v1}, Landroid/app/IUiAutomationConnection;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 1389
    nop

    .line 1390
    return-void

    .line 1387
    :catch_b
    move-exception v0

    .line 1388
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Error granting runtime permission"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setAnimationScale(F)V
    .registers 5
    .param p1, "scale"    # F

    .line 836
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 837
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_16

    .line 839
    :try_start_b
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAnimationScale(F)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 842
    goto :goto_16

    .line 840
    :catch_f
    move-exception v1

    .line 841
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 844
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 441
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 443
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 444
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist setRotation(I)Z
    .registers 5
    .param p1, "rotation"    # I

    .line 898
    packed-switch p1, :pswitch_data_1c

    .line 914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rotation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :pswitch_b
    :try_start_b
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 908
    const/4 v0, 0x1

    return v0

    .line 909
    :catch_12
    move-exception v0

    .line 910
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting rotation!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    .end local v0    # "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    :pswitch_data_1c
    .packed-switch -0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist setRunAsMonkey(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 1150
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1153
    goto :goto_10

    .line 1151
    :catch_8
    move-exception v0

    .line 1152
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting run as monkey!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public final whitelist setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 643
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 645
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 646
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 647
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 648
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_28

    .line 650
    if-eqz v1, :cond_27

    .line 652
    :try_start_1b
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 655
    goto :goto_27

    .line 653
    :catch_1f
    move-exception v0

    .line 654
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    return-void

    .line 648
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist syncInputTransactions()V
    .registers 4

    .line 856
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IUiAutomationConnection;->syncInputTransactions(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 859
    goto :goto_f

    .line 857
    :catch_7
    move-exception v0

    .line 858
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while syncing input transactions!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 860
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public blacklist syncInputTransactions(Z)V
    .registers 5
    .param p1, "waitForAnimations"    # Z

    .line 875
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->syncInputTransactions(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 878
    goto :goto_e

    .line 876
    :catch_6
    move-exception v0

    .line 877
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while syncing input transactions!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist takeScreenshot()Landroid/graphics/Bitmap;
    .registers 11

    .line 1068
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 1069
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1070
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1071
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1073
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 1076
    .local v3, "rotation":I
    const/4 v4, 0x0

    .line 1079
    .local v4, "screenShot":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    :try_start_17
    iget-object v6, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v1, v1, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v6, v7}, Landroid/app/IUiAutomationConnection;->takeScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_26} :catch_2f

    move-object v4, v6

    .line 1081
    if-nez v4, :cond_2a

    .line 1082
    return-object v5

    .line 1087
    :cond_2a
    nop

    .line 1090
    invoke-virtual {v4, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1092
    return-object v4

    .line 1084
    :catch_2f
    move-exception v1

    .line 1085
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v6, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error while taking screenshot!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    return-object v5
.end method

.method public blacklist takeScreenshot(Landroid/view/Window;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "window"    # Landroid/view/Window;

    .line 1110
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1111
    return-object v0

    .line 1114
    :cond_4
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 1115
    .local v1, "decorView":Landroid/view/View;
    if-nez v1, :cond_b

    .line 1116
    return-object v0

    .line 1119
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1120
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_12

    .line 1121
    return-object v0

    .line 1124
    :cond_12
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1125
    .local v3, "sc":Landroid/view/SurfaceControl;
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1126
    return-object v0

    .line 1131
    :cond_1d
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 1133
    :try_start_26
    iget-object v4, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v4, v3}, Landroid/app/IUiAutomationConnection;->takeSurfaceControlScreenshot(Landroid/view/SurfaceControl;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return-object v0

    .line 1134
    :catch_2d
    move-exception v4

    .line 1135
    .local v4, "re":Landroid/os/RemoteException;
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error while taking screenshot!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1523
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "UiAutomation@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1525
    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1526
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist waitForIdle(JJ)V
    .registers 26
    .param p1, "idleTimeoutMillis"    # J
    .param p3, "globalTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1028
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    iget-object v6, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1029
    :try_start_9
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1031
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1032
    .local v7, "startTimeMillis":J
    iget-wide v9, v1, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-gtz v0, :cond_1a

    .line 1033
    iput-wide v7, v1, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 1037
    :cond_1a
    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1039
    .local v9, "currentTimeMillis":J
    sub-long v13, v9, v7

    .line 1040
    .local v13, "elapsedGlobalTimeMillis":J
    sub-long v15, v4, v13

    .line 1042
    .local v15, "remainingGlobalTimeMillis":J
    cmp-long v0, v15, v11

    if-lez v0, :cond_42

    .line 1048
    iget-wide v11, v1, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    sub-long v11, v9, v11

    .line 1049
    .local v11, "elapsedIdleTimeMillis":J
    move-wide/from16 v19, v7

    .end local v7    # "startTimeMillis":J
    .local v19, "startTimeMillis":J
    sub-long v7, v2, v11

    .line 1050
    .local v7, "remainingIdleTimeMillis":J
    const-wide/16 v17, 0x0

    cmp-long v0, v7, v17

    if-gtz v0, :cond_36

    .line 1051
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_67

    return-void

    .line 1054
    :cond_36
    :try_start_36
    iget-object v0, v1, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_67

    .line 1057
    goto :goto_3d

    .line 1055
    :catch_3c
    move-exception v0

    .line 1058
    .end local v7    # "remainingIdleTimeMillis":J
    .end local v9    # "currentTimeMillis":J
    .end local v11    # "elapsedIdleTimeMillis":J
    .end local v13    # "elapsedGlobalTimeMillis":J
    .end local v15    # "remainingGlobalTimeMillis":J
    :goto_3d
    move-wide/from16 v11, v17

    move-wide/from16 v7, v19

    goto :goto_1a

    .line 1043
    .end local v19    # "startTimeMillis":J
    .local v7, "startTimeMillis":J
    .restart local v9    # "currentTimeMillis":J
    .restart local v13    # "elapsedGlobalTimeMillis":J
    .restart local v15    # "remainingGlobalTimeMillis":J
    :cond_42
    move-wide/from16 v19, v7

    .end local v7    # "startTimeMillis":J
    .restart local v19    # "startTimeMillis":J
    :try_start_44
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No idle state with idle timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " within global timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomation;
    .end local p1    # "idleTimeoutMillis":J
    .end local p3    # "globalTimeoutMillis":J
    throw v0

    .line 1059
    .end local v9    # "currentTimeMillis":J
    .end local v13    # "elapsedGlobalTimeMillis":J
    .end local v15    # "remainingGlobalTimeMillis":J
    .end local v19    # "startTimeMillis":J
    .restart local p0    # "this":Landroid/app/UiAutomation;
    .restart local p1    # "idleTimeoutMillis":J
    .restart local p3    # "globalTimeoutMillis":J
    :catchall_67
    move-exception v0

    monitor-exit v6
    :try_end_69
    .catchall {:try_start_44 .. :try_end_69} :catchall_67

    throw v0
.end method
