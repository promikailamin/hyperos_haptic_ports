.class final Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
.super Ljava/lang/Object;
.source "AccessibilityController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityControllerInternalImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;


# instance fields
.field private mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

.field private volatile mEnabledTracingFlags:J

.field private final mLooper:Landroid/os/Looper;

.field private final mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1778
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mLooper:Landroid/os/Looper;

    .line 1779
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 1780
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    .line 1781
    return-void
.end method

.method static getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
    .registers 3
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 1764
    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->-$$Nest$sfgetSTATIC_LOCK()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1765
    :try_start_5
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    if-nez v1, :cond_10

    .line 1766
    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sput-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 1768
    :cond_10
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    monitor-exit v0

    return-object v1

    .line 1769
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method public hasWindowManagerEventDispatcher()Z
    .registers 5

    .line 1860
    const-wide/16 v0, 0xc00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".hasCallbacks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 1865
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public isAccessibilityTracingEnabled()Z
    .registers 2

    .line 1797
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method isTracingEnabled(J)Z
    .registers 7
    .param p1, "flags"    # J

    .line 1801
    iget-wide v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method logTrace(Ljava/lang/String;J)V
    .registers 5
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J

    .line 1805
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1806
    return-void
.end method

.method logTrace(Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;

    .line 1809
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI)V

    .line 1810
    return-void
.end method

.method logTrace(Ljava/lang/String;JLjava/lang/String;[BI)V
    .registers 15
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;
    .param p5, "a11yDump"    # [B
    .param p6, "callingUid"    # I

    .line 1814
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    new-instance v7, Ljava/util/HashSet;

    const-string v1, "logTrace"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1815
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1814
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BILjava/util/Set;)V

    .line 1816
    return-void
.end method

.method public logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V
    .registers 29
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;
    .param p5, "a11yDump"    # [B
    .param p6, "callingUid"    # I
    .param p7, "callStack"    # [Ljava/lang/StackTraceElement;
    .param p8, "timeStamp"    # J
    .param p10, "processId"    # I
    .param p11, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "JIJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1829
    .local p13, "ignoreStackEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V

    .line 1831
    return-void
.end method

.method public logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .registers 19
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;
    .param p5, "a11yDump"    # [B
    .param p6, "callingUid"    # I
    .param p7, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1821
    .local p8, "ignoreStackEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    .line 1823
    return-void
.end method

.method public onRectangleOnScreenRequested(ILandroid/graphics/Rect;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 1869
    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onRectangleOnScreenRequested"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rectangle={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1875
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    if-eqz v0, :cond_44

    .line 1876
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;->onRectangleOnScreenRequested(ILandroid/graphics/Rect;)V

    .line 1878
    :cond_44
    return-void
.end method

.method public setUiChangesForAccessibilityCallbacks(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;)V
    .registers 7
    .param p1, "callbacks"    # Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;

    .line 1836
    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".setAccessibilityWindowManagerCallbacks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callbacks={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1842
    :cond_3c
    if-eqz p1, :cond_54

    .line 1843
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    if-nez v0, :cond_4c

    .line 1847
    new-instance v0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;-><init>(Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;Landroid/os/Looper;Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    goto :goto_5b

    .line 1844
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Accessibility window manager callback already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1851
    :cond_54
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    if-eqz v0, :cond_5c

    .line 1855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    .line 1857
    :goto_5b
    return-void

    .line 1852
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Accessibility window manager callback already cleared!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTrace(J)V
    .registers 4
    .param p1, "loggingTypes"    # J

    .line 1785
    iput-wide p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    .line 1786
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->startTrace()V

    .line 1787
    return-void
.end method

.method public stopTrace()V
    .registers 3

    .line 1791
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->stopTrace()V

    .line 1792
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    .line 1793
    return-void
.end method
