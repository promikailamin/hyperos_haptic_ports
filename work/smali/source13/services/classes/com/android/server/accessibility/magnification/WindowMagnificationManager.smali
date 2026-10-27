.class public Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionState;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowPosition;
    }
.end annotation


# static fields
.field private static final CONNECTED:I = 0x1

.field private static final CONNECTING:I = 0x0

.field private static final DBG:Z = false

.field private static final DISCONNECTED:I = 0x3

.field private static final DISCONNECTING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowMagnificationMgr"

.field private static final WAIT_CONNECTION_TIMEOUT_MILLIS:I = 0x64

.field public static final WINDOW_POSITION_AT_CENTER:I = 0x0

.field public static final WINDOW_POSITION_AT_TOP_LEFT:I = 0x1


# instance fields
.field private final mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

.field private mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

.field private mConnectionState:I

.field mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationFollowTypingEnabled:Z

.field private mReceiverRegistered:Z

.field private final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field protected final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field private mWindowMagnifiers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectionCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFF)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnifierInternal(IFF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetWindowMagnifiers(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->resetWindowMagnifiers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetConnectionState(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScaleInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setScaleInternal(IF)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
    .param p4, "trace"    # Lcom/android/server/accessibility/AccessibilityTraceManager;
    .param p5, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    .line 139
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 142
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    .line 207
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    .line 208
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 209
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 210
    return-void
.end method

.method private static connectionStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 112
    packed-switch p0, :pswitch_data_24

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :pswitch_17
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 115
    :pswitch_1a
    const-string v0, "DISCONNECTING"

    return-object v0

    .line 114
    :pswitch_1d
    const-string v0, "CONNECTED"

    return-object v0

    .line 113
    :pswitch_20
    const-string v0, "CONNECTING"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    .registers 4
    .param p1, "displayId"    # I

    .line 829
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    .line 830
    .local v0, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 831
    return-object v0
.end method

.method private disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 1144
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-nez v0, :cond_e

    .line 1145
    const-string v0, "WindowMagnificationMgr"

    const-string/jumbo v1, "mConnectionWrapper is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/4 v0, 0x0

    return v0

    .line 1148
    :cond_e
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->disableWindowMagnification(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method private enableAllTrackingTypingFocus()V
    .registers 5

    .line 460
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 462
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 463
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 461
    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 465
    .end local v1    # "i":I
    :cond_1b
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 22
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "magnificationFrameOffsetRatioX"    # F
    .param p6, "magnificationFrameOffsetRatioY"    # F
    .param p7, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 1117
    move-object v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    .line 1118
    .local v2, "endMillis":J
    :goto_8
    iget v0, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-nez v0, :cond_22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_22

    .line 1120
    :try_start_14
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    .line 1121
    :catch_20
    move-exception v0

    .line 1123
    :goto_21
    goto :goto_8

    .line 1125
    :cond_22
    iget-object v6, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-nez v6, :cond_46

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableWindowMagnificationInternal mConnectionWrapper is null. mConnectionState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 1128
    invoke-static {v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1126
    const-string v4, "WindowMagnificationMgr"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v0, 0x0

    return v0

    .line 1131
    :cond_46
    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method private moveWindowMagnifierInternal(IFF)Z
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 1154
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->moveWindowMagnifier(IFF)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "positionX"    # F
    .param p3, "positionY"    # F
    .param p4, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 1161
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private requestConnectionInternal(Z)Z
    .registers 6
    .param p1, "connect"    # Z

    .line 319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 321
    .local v0, "identity":J
    :try_start_4
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 323
    .local v2, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v2, :cond_16

    .line 324
    invoke-interface {v2, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->requestWindowMagnificationConnection(Z)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1c

    .line 327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    return v3

    .line 327
    .end local v2    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    nop

    .line 329
    const/4 v2, 0x0

    return v2

    .line 327
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    throw v2
.end method

.method private resetWindowMagnifiers()V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 383
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 384
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->reset()V

    .line 382
    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 386
    .end local v1    # "i":I
    :cond_1a
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private setConnectionState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 344
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 345
    return-void
.end method

.method private setScaleInternal(IF)Z
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 1138
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setScale(IF)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method disableAllWindowMagnifiers()V
    .registers 5

    .line 351
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 353
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 354
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 352
    nop

    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 356
    .end local v1    # "i":I
    :cond_1c
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v1
.end method

.method disableWindowMagnification(IZ)Z
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "clear"    # Z

    .line 607
    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method public disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "clear"    # Z
    .param p3, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 621
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 623
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 624
    monitor-exit v0

    return v2

    .line 627
    :cond_10
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v3

    .line 628
    .local v3, "disabled":Z
    if-eqz p2, :cond_1b

    .line 629
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 631
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_24

    .line 633
    if-eqz v3, :cond_23

    .line 634
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    invoke-interface {v0, p1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onWindowMagnificationActivationState(IZ)V

    .line 636
    :cond_23
    return v3

    .line 631
    .end local v3    # "disabled":Z
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public enableWindowMagnification(IFFF)Z
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 518
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v0

    return v0
.end method

.method public enableWindowMagnification(IFFFI)Z
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "windowPosition"    # I

    .line 557
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result v0

    return v0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p6, "id"    # I

    .line 538
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result v0

    return v0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .registers 20
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p6, "windowPosition"    # I
    .param p7, "id"    # I

    .line 580
    move-object v1, p0

    move v2, p1

    iget-object v3, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 581
    :try_start_5
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 582
    .local v0, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v0, :cond_14

    .line 583
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object v4

    move-object v0, v4

    .line 585
    :cond_14
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v4

    move v11, v4

    .line 586
    .local v11, "previousEnabled":Z
    move-object v4, v0

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result v4

    move v0, v4

    .line 588
    .local v0, "enabled":Z
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_38

    .line 590
    if-eqz v0, :cond_37

    .line 591
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setTrackingTypingFocusEnabled(IZ)V

    .line 592
    if-nez v11, :cond_37

    .line 593
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    invoke-interface {v4, p1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onWindowMagnificationActivationState(IZ)V

    .line 596
    :cond_37
    return v0

    .line 588
    .end local v0    # "enabled":Z
    .end local v11    # "previousEnabled":Z
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public getCenterX(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 769
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 771
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-eqz v1, :cond_1a

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_1a

    .line 774
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getCenterX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 772
    :cond_1a
    :goto_1a
    const/high16 v2, 0x7fc00000    # Float.NaN

    monitor-exit v0

    return v2

    .line 775
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getCenterY(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 785
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 787
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-eqz v1, :cond_1a

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_1a

    .line 790
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getCenterY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 788
    :cond_1a
    :goto_1a
    const/high16 v2, 0x7fc00000    # Float.NaN

    monitor-exit v0

    return v2

    .line 791
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getConnectionState()Ljava/lang/String;
    .registers 2

    .line 336
    iget v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .registers 5
    .param p1, "displayId"    # I

    .line 424
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 426
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-eqz v1, :cond_13

    .line 427
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 429
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :cond_13
    monitor-exit v0

    .line 430
    const/4 v0, -0x1

    return v0

    .line 429
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getMagnificationSourceBounds(ILandroid/graphics/Region;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 812
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 814
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-eqz v1, :cond_1c

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_1c

    .line 817
    :cond_14
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1f

    .line 815
    :cond_1c
    :goto_1c
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 819
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :goto_1f
    monitor-exit v0

    .line 820
    return-void

    .line 819
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method getPersistedScale(I)F
    .registers 3
    .param p1, "displayId"    # I

    .line 690
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 711
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 713
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-eqz v1, :cond_1a

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_1a

    .line 716
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getScale()F

    move-result v2

    monitor-exit v0

    return v2

    .line 714
    :cond_1a
    :goto_1a
    const/high16 v2, 0x3f800000    # 1.0f

    monitor-exit v0

    return v2

    .line 717
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public isConnected()Z
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 266
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method isMagnificationFollowTypingEnabled()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    return v0
.end method

.method isPositionInSourceBounds(IFF)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 658
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 659
    .local v0, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v0, :cond_c

    .line 660
    const/4 v1, 0x0

    return v1

    .line 662
    :cond_c
    invoke-virtual {v0, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isPositionInSourceBounds(FF)Z

    move-result v1

    return v1
.end method

.method isTrackingTypingFocusEnabled(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 795
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 797
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_10

    .line 798
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 800
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isTrackingTypingFocusEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 801
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public isWindowMagnifierEnabled(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 673
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 675
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_10

    .line 676
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 678
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 679
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method moveWindowMagnification(IFF)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 730
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 732
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_f

    .line 733
    monitor-exit v0

    return-void

    .line 735
    :cond_f
    invoke-virtual {v1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->move(FF)V

    .line 736
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    monitor-exit v0

    .line 737
    return-void

    .line 736
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 840
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    .line 841
    return-void
.end method

.method onImeWindowVisibilityChanged(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "shown"    # Z

    .line 474
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 475
    if-eqz p2, :cond_a

    .line 476
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableAllTrackingTypingFocus()V

    .line 478
    :cond_a
    return-void
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 392
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    if-nez v0, :cond_5

    .line 393
    return-void

    .line 396
    :cond_5
    add-int v0, p2, p4

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 397
    .local v0, "toCenterX":F
    add-int v2, p3, p5

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 399
    .local v2, "toCenterY":F
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_12
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 401
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isPositionInSourceBounds(IFF)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isTrackingTypingFocusEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 403
    sget-object v3, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 406
    :cond_2c
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_2e
    move-exception v3

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method persistScale(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v0

    .line 699
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    .line 700
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    .line 702
    :cond_f
    return-void
.end method

.method pointersInWindow(ILandroid/view/MotionEvent;)I
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 647
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 649
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_10

    .line 650
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 652
    :cond_10
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->pointersInWindow(Landroid/view/MotionEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 653
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public processScroll(IFF)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "distanceX"    # F
    .param p3, "distanceY"    # F

    .line 482
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnification(IFF)V

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setTrackingTypingFocusEnabled(IZ)V

    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method public removeMagnificationButton(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 758
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->removeMagnificationButton(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public requestConnection(Z)Z
    .registers 10
    .param p1, "connect"    # Z

    .line 282
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 283
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "WindowMagnificationMgr.requestWindowMagnificationConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 286
    :cond_24
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_34

    :try_start_2b
    iget v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-eq v3, v1, :cond_3e

    if-eqz v3, :cond_3e

    goto :goto_34

    .line 308
    :catchall_32
    move-exception v1

    goto :goto_a3

    .line 287
    :cond_34
    :goto_34
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-nez p1, :cond_69

    iget v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-eq v5, v4, :cond_3e

    if-ne v5, v3, :cond_69

    .line 290
    :cond_3e
    const-string v1, "WindowMagnificationMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestConnection duplicated request: connect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mConnectionState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 291
    invoke-static {v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v0

    return v2

    .line 295
    :cond_69
    if-eqz p1, :cond_80

    .line 296
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 297
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    iget-boolean v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    if-nez v6, :cond_7f

    .line 298
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 301
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    :cond_7f
    goto :goto_90

    .line 302
    :cond_80
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableAllWindowMagnifiers()V

    .line 303
    iget-boolean v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    if-eqz v5, :cond_90

    .line 304
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 308
    :cond_90
    :goto_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_2b .. :try_end_91} :catchall_32

    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->requestConnectionInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 310
    if-eqz p1, :cond_9a

    goto :goto_9b

    :cond_9a
    move v2, v3

    :goto_9b
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    .line 311
    return v1

    .line 313
    :cond_9f
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    .line 314
    return v2

    .line 308
    :goto_a3
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_32

    throw v1
.end method

.method public resetAllIfNeeded(I)V
    .registers 6
    .param p1, "connectionId"    # I

    .line 368
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 370
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 371
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-eqz v2, :cond_26

    invoke-static {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 373
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getIdOfLastServiceToControl()I

    move-result v3

    if-ne p1, v3, :cond_26

    .line 374
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 369
    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 377
    .end local v1    # "i":I
    :cond_29
    monitor-exit v0

    .line 378
    return-void

    .line 377
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public setConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .registers 8
    .param p1, "connection"    # Landroid/view/accessibility/IWindowMagnificationConnection;

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_24

    .line 225
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z

    .line 226
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    if-eqz v1, :cond_14

    .line 227
    invoke-static {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->-$$Nest$fputmExpiredDeathRecipient(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;Z)V

    .line 229
    :cond_14
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 230
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 235
    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-eqz v1, :cond_24

    .line 236
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    .line 239
    :cond_24
    if-eqz p1, :cond_2f

    .line 240
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v1, p1, v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IWindowMagnificationConnection;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 243
    :cond_2f
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_6b

    if-eqz v1, :cond_69

    .line 245
    :try_start_33
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback-IA;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    .line 246
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v5, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 247
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z

    .line 248
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_49} :catch_4e
    .catchall {:try_start_33 .. :try_end_49} :catchall_4c

    .line 254
    :try_start_49
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_6b

    goto :goto_5e

    :catchall_4c
    move-exception v1

    goto :goto_62

    .line 249
    :catch_4e
    move-exception v1

    .line 250
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v3, "WindowMagnificationMgr"

    const-string/jumbo v5, "setConnection failed"

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 252
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_4c

    .line 254
    .end local v1    # "e":Landroid/os/RemoteException;
    :try_start_5c
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    :goto_5e
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 255
    goto :goto_69

    .line 254
    :goto_62
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 255
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .end local p1    # "connection":Landroid/view/accessibility/IWindowMagnificationConnection;
    throw v1

    .line 257
    .restart local p0    # "this":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .restart local p1    # "connection":Landroid/view/accessibility/IWindowMagnificationConnection;
    :cond_69
    :goto_69
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method setMagnificationFollowTypingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 410
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    .line 411
    return-void
.end method

.method public setScale(IF)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 495
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 497
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_f

    .line 498
    monitor-exit v0

    return-void

    .line 500
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setScale(F)V

    .line 501
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method setTrackingTypingFocusEnabled(IZ)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "trackingTypingFocusEnabled"    # Z

    .line 447
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 449
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_f

    .line 450
    monitor-exit v0

    return-void

    .line 452
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 453
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public showMagnificationButton(II)Z
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I

    .line 747
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->showMagnificationButton(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
