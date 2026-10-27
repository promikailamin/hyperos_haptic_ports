.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FullScreenMagnificationController"


# instance fields
.field private final mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationFollowTypingEnabled:Z

.field private final mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

.field private final mMainThreadId:J

.field private final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field private final mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMagnificationInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainThreadId(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->logTrace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monScreenTurnedOff(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->traceEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterCallbackLocked(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterCallbackLocked(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtransformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "traceManager"    # Lcom/android/server/accessibility/AccessibilityTraceManager;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "magnificationInfoChangedCallback"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
    .param p5, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 700
    new-instance v7, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 701
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Landroid/os/Handler;

    .line 702
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 703
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V

    .line 700
    invoke-direct {p0, v7, p3, p4, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    .line 705
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 7
    .param p1, "ctx"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "magnificationInfoChangedCallback"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
    .param p4, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    .line 715
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 716
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 717
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    .line 718
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    .line 719
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    .line 720
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 721
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 722
    return-void
.end method

.method private logTrace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .line 1338
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManagerInternal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x200

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1340
    return-void
.end method

.method private onScreenTurnedOff()V
    .registers 3

    .line 1274
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;-><init>()V

    .line 1275
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1274
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1276
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1277
    return-void
.end method

.method private traceEnabled()Z
    .registers 4

    .line 1333
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    return v0
.end method

.method private static transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .registers 2
    .param p0, "animate"    # Z

    .line 1627
    if-eqz p0, :cond_5

    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method

.method private unregisterCallbackLocked(IZ)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1315
    if-eqz p2, :cond_7

    .line 1316
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1319
    :cond_7
    const/4 v0, 0x0

    .line 1320
    .local v0, "hasRegister":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1321
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1322
    .local v2, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v0

    .line 1323
    if-eqz v0, :cond_20

    .line 1324
    goto :goto_23

    .line 1320
    .end local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1327
    .end local v1    # "i":I
    :cond_23
    :goto_23
    if-nez v0, :cond_2a

    .line 1328
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->unregister()V

    .line 1330
    :cond_2a
    return-void
.end method

.method private unregisterLocked(IZ)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1292
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1293
    .local v0, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v0, :cond_b

    .line 1294
    return-void

    .line 1296
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1297
    if-eqz p2, :cond_18

    .line 1298
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1300
    :cond_18
    return-void

    .line 1302
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1303
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregister(Z)V

    goto :goto_26

    .line 1305
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregisterPending(Z)V

    .line 1307
    :goto_26
    return-void
.end method


# virtual methods
.method public getCenterX(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 950
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 951
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 952
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 953
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 955
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 956
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getCenterY(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 984
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 986
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 987
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 989
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 990
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .registers 5
    .param p1, "displayId"    # I

    .line 1159
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1161
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 1162
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 1164
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    monitor-exit v0

    return v2

    .line 1165
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getMagnificationBounds(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 881
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 883
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_f

    .line 884
    monitor-exit v0

    return-void

    .line 886
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 887
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 888
    return-void

    .line 887
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 899
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 901
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_f

    .line 902
    monitor-exit v0

    return-void

    .line 904
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 905
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 906
    return-void

    .line 905
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getOffsetX(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 933
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 935
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 936
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 938
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 939
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getOffsetY(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 967
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 969
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 970
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 972
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 973
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getPersistedScale(I)F
    .registers 3
    .param p1, "displayId"    # I

    .line 1184
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 916
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 918
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_11

    .line 919
    const/high16 v2, 0x3f800000    # 1.0f

    monitor-exit v0

    return v2

    .line 921
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result v2

    monitor-exit v0

    return v2

    .line 922
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isForceShowMagnifiableBounds(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 1264
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1265
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1266
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 1267
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1269
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isForceShowMagnifiableBounds()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1270
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method isMagnificationFollowTypingEnabled()Z
    .registers 2

    .line 803
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    return v0
.end method

.method public isMagnifying(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 842
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 844
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 845
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 847
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 848
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public isRegistered(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 829
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 830
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 832
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 833
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public magnificationRegionContains(IFF)Z
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 862
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 864
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 865
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 867
    :cond_10
    invoke-virtual {v1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->magnificationRegionContains(FF)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 868
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method notifyImeWindowVisibilityChanged(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "shown"    # Z

    .line 1255
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onImeWindowVisibilityChanged(IZ)V

    .line 1256
    return-void
.end method

.method public offsetMagnifiedRegion(IFFI)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "id"    # I

    .line 1143
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1145
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_f

    .line 1146
    monitor-exit v0

    return-void

    .line 1148
    :cond_f
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 1149
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1150
    return-void

    .line 1149
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 812
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 814
    monitor-exit v0

    .line 815
    return-void

    .line 814
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 778
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    if-nez v1, :cond_9

    .line 780
    monitor-exit v0

    return-void

    .line 782
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 783
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_15

    .line 784
    monitor-exit v0

    return-void

    .line 786
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 787
    monitor-exit v0

    return-void

    .line 789
    :cond_1d
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 790
    .local v2, "magnifiedRegionBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 791
    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 792
    monitor-exit v0

    return-void

    .line 794
    :cond_2a
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onRectangleOnScreenRequested(IIII)V

    .line 795
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    .end local v2    # "magnifiedRegionBounds":Landroid/graphics/Rect;
    monitor-exit v0

    .line 796
    return-void

    .line 795
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public persistScale(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    .line 1173
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    .line 1174
    return-void
.end method

.method public register(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 734
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 736
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_13

    .line 737
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;I)V

    move-object v1, v2

    .line 739
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 740
    monitor-exit v0

    return-void

    .line 742
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->register()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 743
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->registerIfNecessary()V

    .line 746
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_2b
    monitor-exit v0

    .line 747
    return-void

    .line 746
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 1019
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1021
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 1022
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1024
    :cond_10
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1025
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public reset(IZ)Z
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 1004
    if-eqz p2, :cond_5

    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method public resetAllIfNeeded(I)V
    .registers 5
    .param p1, "connectionId"    # I

    .line 1193
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 1195
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(II)Z

    .line 1194
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1197
    .end local v1    # "i":I
    :cond_18
    monitor-exit v0

    .line 1198
    return-void

    .line 1197
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method resetAllIfNeeded(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .line 1284
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 1286
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(IZ)Z

    .line 1285
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1288
    .end local v1    # "i":I
    :cond_18
    monitor-exit v0

    .line 1289
    return-void

    .line 1288
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method resetIfNeeded(II)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "connectionId"    # I

    .line 1226
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1227
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1228
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1229
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    if-eq p2, v2, :cond_1a

    goto :goto_20

    .line 1232
    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1233
    monitor-exit v0

    return v2

    .line 1230
    :cond_20
    :goto_20
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1234
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method resetIfNeeded(IZ)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 1208
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1209
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1210
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_1a

    .line 1213
    :cond_14
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1214
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1211
    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1215
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public setCenter(IFFZI)Z
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 1070
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1072
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 1073
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1075
    :cond_10
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 1076
    if-eqz p4, :cond_17

    sget-object v2, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move-object v6, v2

    .line 1075
    move-object v2, v1

    move v4, p2

    move v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1077
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method setForceShowMagnifiableBounds(IZ)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "show"    # Z

    .line 1238
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1240
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_f

    .line 1241
    monitor-exit v0

    return-void

    .line 1243
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setForceShowMagnifiableBounds(Z)V

    .line 1244
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1245
    return-void

    .line 1244
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method setMagnificationFollowTypingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 799
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    .line 800
    return-void
.end method

.method public setScale(IFFFZI)Z
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 1045
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1047
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 1048
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1050
    :cond_10
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScale(FFFZI)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1051
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setScaleAndCenter(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p6, "id"    # I

    .line 1122
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1123
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1124
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 1125
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1127
    :cond_10
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1128
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setScaleAndCenter(IFFFZI)Z
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 1099
    nop

    .line 1100
    invoke-static {p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v5

    .line 1099
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1345
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MagnificationController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    const-string v1, ", mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1347
    const-string v1, ", mScaleProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1348
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregister(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 756
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 758
    monitor-exit v0

    .line 759
    return-void

    .line 758
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public unregisterAll()V
    .registers 6

    .line 765
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 769
    .local v1, "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 770
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 769
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 772
    .end local v1    # "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;>;"
    .end local v2    # "i":I
    :cond_1b
    monitor-exit v0

    .line 773
    return-void

    .line 772
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
