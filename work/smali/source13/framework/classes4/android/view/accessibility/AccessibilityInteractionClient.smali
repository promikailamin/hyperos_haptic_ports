.class public final Landroid/view/accessibility/AccessibilityInteractionClient;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "AccessibilityInteractionClient.java"


# static fields
.field public static final blacklist CALL_STACK:Ljava/lang/String; = "call_stack"

.field private static final greylist-max-o CHECK_INTEGRITY:Z = true

.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DISABLE_PREFETCHING_FOR_SCROLLING_MILLIS:J

.field public static final blacklist IGNORE_CALL_STACK:Ljava/lang/String; = "ignore_call_stack"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final greylist-max-o NO_ID:I = -0x1

.field private static final greylist-max-o TIMEOUT_INTERACTION_MILLIS:J = 0x1388L

.field private static blacklist sCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sClients:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityInteractionClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sConnectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sScrollingWindows:Landroid/util/SparseLongArray;

.field private static final greylist-max-o sStaticLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private blacklist mCallStackOfCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mCallingUid:I

.field private blacklist mConnectionIdWaitingForPrefetchResult:I

.field private greylist-max-o mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private greylist-max-o mFindAccessibilityNodeInfosResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInstanceLock:Ljava/lang/Object;

.field private volatile greylist-max-o mInteractionId:I

.field private final greylist-max-o mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mInteractionIdWaitingForPrefetchResult:I

.field private blacklist mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

.field private greylist-max-o mPerformAccessibilityActionResult:Z

.field private greylist-max-o mSameThreadMessage:Landroid/os/Message;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityInteractionClient;->DISABLE_PREFETCHING_FOR_SCROLLING_MILLIS:J

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    .line 119
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 277
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 130
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 146
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 280
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 282
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 130
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 146
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    .line 283
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 284
    return-void
.end method

.method public static blacklist addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V
    .registers 7
    .param p0, "connectionId"    # I
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "initializeCache"    # Z

    .line 231
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 232
    return-void

    .line 234
    :cond_4
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 235
    :try_start_7
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    if-nez p2, :cond_e

    .line 237
    monitor-exit v0

    return-void

    .line 239
    :cond_e
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityCache;

    new-instance v3, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    invoke-direct {v3}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;-><init>()V

    invoke-direct {v2, v3}, Landroid/view/accessibility/AccessibilityCache;-><init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private greylist-max-o checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1331
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1332
    return-void

    .line 1335
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1336
    .local v0, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1337
    .local v1, "infoCount":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_32

    .line 1338
    move v3, v2

    .local v3, "j":I
    :goto_16
    if-ge v3, v1, :cond_2f

    .line 1339
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1340
    .local v4, "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2c

    .line 1341
    move-object v0, v4

    .line 1342
    goto :goto_2f

    .line 1338
    .end local v4    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1337
    .end local v3    # "j":I
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1346
    .end local v2    # "i":I
    :cond_32
    const-string v2, "AccessibilityInteractionClient"

    if-nez v0, :cond_3b

    .line 1347
    const-string v3, "No root."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_3b
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1351
    .local v3, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 1352
    .local v4, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1353
    :goto_48
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_86

    .line 1354
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1355
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 1356
    const-string v6, "Duplicate node."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return-void

    .line 1359
    :cond_60
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    .line 1360
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_65
    if-ge v7, v6, :cond_85

    .line 1361
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v8

    .line 1362
    .local v8, "childId":J
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6c
    if-ge v10, v1, :cond_82

    .line 1363
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1364
    .local v11, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v12

    cmp-long v12, v12, v8

    if-nez v12, :cond_7f

    .line 1365
    invoke-interface {v4, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1362
    .end local v11    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_7f
    add-int/lit8 v10, v10, 0x1

    goto :goto_6c

    .line 1360
    .end local v8    # "childId":J
    .end local v10    # "j":I
    :cond_82
    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    .line 1369
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childCount":I
    .end local v7    # "i":I
    :cond_85
    goto :goto_48

    .line 1370
    :cond_86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1371
    .local v5, "disconnectedCount":I
    if-lez v5, :cond_a7

    .line 1372
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Disconnected nodes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_a7
    return-void
.end method

.method private greylist-max-o clearResultLocked()V
    .registers 2

    .line 1213
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1215
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 1216
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 1217
    return-void
.end method

.method private blacklist deleteScrollingWindow(I)V
    .registers 4
    .param p1, "windowId"    # I

    .line 1394
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 1395
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1396
    monitor-exit v0

    .line 1397
    return-void

    .line 1396
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private greylist-max-o finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "connectionId"    # I
    .param p3, "bypassCache"    # Z
    .param p4, "packageNames"    # [Ljava/lang/String;

    .line 1264
    if-eqz p1, :cond_31

    .line 1265
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 1267
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1268
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1269
    .local v0, "packageName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1b

    .line 1270
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1273
    :cond_1b
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1276
    .end local v0    # "packageName":Ljava/lang/CharSequence;
    :cond_21
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 1277
    if-nez p3, :cond_31

    .line 1278
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 1279
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_2e

    .line 1283
    return-void

    .line 1285
    :cond_2e
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1288
    .end local v0    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :cond_31
    return-void
.end method

.method private greylist-max-o finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V
    .registers 8
    .param p2, "connectionId"    # I
    .param p3, "bypassCache"    # Z
    .param p4, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;IZ[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1301
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_15

    .line 1302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1303
    .local v0, "infosCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1304
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1305
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2, p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 1303
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1309
    .end local v0    # "infosCount":I
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public static blacklist getCache(I)Landroid/view/accessibility/AccessibilityCache;
    .registers 3
    .param p0, "connectionId"    # I

    .line 249
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 250
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityCache;

    monitor-exit v0

    return-object v1

    .line 251
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static greylist-max-o getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .registers 3
    .param p0, "connectionId"    # I

    .line 216
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 217
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    monitor-exit v0

    return-object v1

    .line 218
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private greylist-max-o getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5
    .param p1, "interactionId"    # I

    .line 1051
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 1053
    .local v1, "success":Z
    if-eqz v1, :cond_c

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 1054
    .local v2, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_d
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 1055
    monitor-exit v0

    return-object v2

    .line 1056
    .end local v1    # "success":Z
    .end local v2    # "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;
    .registers 6
    .param p1, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 1087
    .local v1, "success":Z
    if-eqz v1, :cond_c

    .line 1088
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    goto :goto_10

    .line 1090
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1092
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_10
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 1093
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1a

    .line 1094
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V

    .line 1096
    :cond_1a
    monitor-exit v0

    return-object v2

    .line 1097
    .end local v1    # "success":Z
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public static greylist getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 3

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 156
    .local v0, "threadId":J
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 183
    .local v0, "threadId":J
    if-eqz p0, :cond_f

    .line 184
    invoke-static {v0, v1, p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(JLandroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2

    .line 186
    :cond_f
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 6
    .param p0, "threadId"    # J

    .line 168
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 170
    .local v2, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v2, :cond_16

    .line 171
    new-instance v3, Landroid/view/accessibility/AccessibilityInteractionClient;

    invoke-direct {v3}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>()V

    move-object v2, v3

    .line 172
    invoke-virtual {v1, p0, p1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 174
    :cond_16
    monitor-exit v0

    return-object v2

    .line 175
    .end local v2    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static blacklist getInstanceForThread(JLandroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 7
    .param p0, "threadId"    # J
    .param p2, "context"    # Landroid/content/Context;

    .line 199
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 201
    .local v2, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v2, :cond_16

    .line 202
    new-instance v3, Landroid/view/accessibility/AccessibilityInteractionClient;

    invoke-direct {v3, p2}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 203
    invoke-virtual {v1, p0, p1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 205
    :cond_16
    monitor-exit v0

    return-object v2

    .line 206
    .end local v2    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private greylist-max-o getPerformAccessibilityActionResultAndClear(I)Z
    .registers 5
    .param p1, "interactionId"    # I

    .line 1185
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1186
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 1187
    .local v1, "success":Z
    if-eqz v1, :cond_c

    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 1188
    .local v2, "result":Z
    :goto_d
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 1189
    monitor-exit v0

    return v2

    .line 1190
    .end local v1    # "success":Z
    .end local v2    # "result":Z
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o getSameProcessMessageAndClear()Landroid/os/Message;
    .registers 4

    .line 1318
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1319
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 1320
    .local v1, "result":Landroid/os/Message;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 1321
    monitor-exit v0

    return-object v1

    .line 1322
    .end local v1    # "result":Landroid/os/Message;
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static greylist-max-o idToString(IJ)Ljava/lang/String;
    .registers 5
    .param p0, "accessibilityWindowId"    # I
    .param p1, "accessibilityNodeId"    # J

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 665
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->idToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    return-object v0
.end method

.method private blacklist isWindowScrolling(I)Z
    .registers 11
    .param p1, "windowId"    # I

    .line 1406
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 1407
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 1408
    .local v1, "latestScrollingTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    .line 1409
    monitor-exit v0

    return v4

    .line 1411
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1412
    .local v5, "currentUptime":J
    sget-wide v7, Landroid/view/accessibility/AccessibilityInteractionClient;->DISABLE_PREFETCHING_FOR_SCROLLING_MILLIS:J

    add-long/2addr v7, v1

    cmp-long v3, v5, v7

    if-lez v3, :cond_20

    .line 1413
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1414
    monitor-exit v0

    return v4

    .line 1416
    .end local v1    # "latestScrollingTime":J
    .end local v5    # "currentUptime":J
    :cond_20
    monitor-exit v0

    .line 1417
    const/4 v0, 0x1

    return v0

    .line 1416
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private blacklist logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V
    .registers 25
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p7, "logTypes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .local p5, "callStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    .local p6, "ignoreSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v1, p6

    .line 1435
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1436
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "call_stack"

    new-instance v3, Ljava/util/ArrayList;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_52

    move-object/from16 v14, p5

    :try_start_d
    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1437
    if-eqz v1, :cond_1a

    .line 1438
    const-string v2, "ignore_call_stack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1440
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccessibilityInteractionClient."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_29} :catch_4e

    move-object/from16 v15, p2

    :try_start_2b
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1442
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    .line 1440
    move-object/from16 v2, p1

    move-wide/from16 v6, p7

    move-object/from16 v8, p3

    move/from16 v12, p4

    move-object v13, v0

    invoke-interface/range {v2 .. v13}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4b} :catch_4c

    .line 1446
    .end local v0    # "b":Landroid/os/Bundle;
    goto :goto_6f

    .line 1444
    :catch_4c
    move-exception v0

    goto :goto_57

    :catch_4e
    move-exception v0

    move-object/from16 v15, p2

    goto :goto_57

    :catch_52
    move-exception v0

    move-object/from16 v15, p2

    move-object/from16 v14, p5

    .line 1445
    .local v0, "e":Landroid/os/RemoteException;
    :goto_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log trace. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessibilityInteractionClient"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6f
    return-void
.end method

.method private blacklist logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    new-instance v7, Ljava/util/HashSet;

    const-string v0, "getStackTrace"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1452
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1451
    const-wide/16 v8, 0x20

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V

    .line 1454
    return-void
.end method

.method private blacklist logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 1458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1459
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    const-string v0, "getStackTrace"

    const-string v1, "logTraceClient"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1460
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1458
    const-wide/32 v7, 0x40000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V

    .line 1462
    return-void
.end method

.method public static greylist-max-o removeConnection(I)V
    .registers 3
    .param p0, "connectionId"    # I

    .line 260
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 261
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 262
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static blacklist setCache(ILandroid/view/accessibility/AccessibilityCache;)V
    .registers 4
    .param p0, "connectionId"    # I
    .param p1, "cache"    # Landroid/view/accessibility/AccessibilityCache;

    .line 272
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 273
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist setInteractionWaitingForPrefetchResult(II[Ljava/lang/String;)V
    .registers 6
    .param p1, "interactionId"    # I
    .param p2, "connectionId"    # I
    .param p3, "packageNames"    # [Ljava/lang/String;

    .line 656
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_3
    iput p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    .line 658
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mConnectionIdWaitingForPrefetchResult:I

    .line 659
    iput-object p3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    .line 660
    monitor-exit v0

    .line 661
    return-void

    .line 660
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private blacklist shouldTraceCallback()Z
    .registers 2

    .line 1426
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_c

    .line 1427
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isA11yInteractionConnectionCBTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1426
    :goto_d
    return v0
.end method

.method private blacklist shouldTraceClient()Z
    .registers 2

    .line 1421
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_c

    .line 1422
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isA11yInteractionClientTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1421
    :goto_d
    return v0
.end method

.method private blacklist updateScrollingWindow(IJ)V
    .registers 6
    .param p1, "windowId"    # I
    .param p2, "uptimeMillis"    # J

    .line 1383
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 1384
    :try_start_3
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1385
    monitor-exit v0

    .line 1386
    return-void

    .line 1385
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private greylist-max-o waitForResultTimedLocked(I)Z
    .registers 13
    .param p1, "interactionId"    # I

    .line 1226
    const-wide/16 v0, 0x1388

    .line 1227
    .local v0, "waitTimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1230
    .local v2, "startTimeMillis":J
    :goto_6
    :try_start_6
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getSameProcessMessageAndClear()Landroid/os/Message;

    move-result-object v4

    .line 1231
    .local v4, "sameProcessMessage":Landroid/os/Message;
    if-eqz v4, :cond_13

    .line 1232
    invoke-virtual {v4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1235
    :cond_13
    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-ne v5, p1, :cond_19

    .line 1236
    const/4 v5, 0x1

    return v5

    .line 1238
    :cond_19
    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    const/4 v6, 0x0

    if-le v5, p1, :cond_1f

    .line 1239
    return v6

    .line 1241
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    .line 1242
    .local v7, "elapsedTimeMillis":J
    const-wide/16 v9, 0x1388

    sub-long v0, v9, v7

    .line 1243
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-gtz v5, :cond_2f

    .line 1244
    return v6

    .line 1246
    :cond_2f
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_34} :catch_35

    .end local v4    # "sameProcessMessage":Landroid/os/Message;
    .end local v7    # "elapsedTimeMillis":J
    goto :goto_36

    .line 1247
    :catch_35
    move-exception v4

    .line 1249
    :goto_36
    goto :goto_6
.end method


# virtual methods
.method public clearCache(I)V
    .registers 3
    .param p1, "connectionId"    # I

    .line 1009
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 1010
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_7

    .line 1011
    return-void

    .line 1013
    :cond_7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 1014
    return-void
.end method

.method public greylist-max-o findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 31
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I
    .param p7, "arguments"    # Landroid/os/Bundle;

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-wide/from16 v14, p3

    move/from16 v10, p5

    move/from16 v1, p6

    move-object/from16 v8, p7

    .line 536
    :try_start_e
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_208

    move-object v9, v0

    .line 537
    .local v9, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v9, :cond_205

    .line 538
    const-string v0, ";arguments="

    const-string v2, ";prefetchFlags="

    const-string v3, ";bypassCache="

    const-string v4, ";accessibilityNodeId="

    const-string v5, ";accessibilityWindowId="

    const-string v6, "connectionId="

    if-nez v10, :cond_91

    .line 539
    :try_start_23
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v7

    .line 540
    .local v7, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-eqz v7, :cond_88

    .line 541
    invoke-virtual {v7, v13, v14, v15}, Landroid/view/accessibility/AccessibilityCache;->getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v16

    .line 543
    .local v16, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v16, :cond_7d

    .line 548
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v17

    if-eqz v17, :cond_7a

    .line 549
    move-object/from16 v17, v7

    .end local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .local v17, "cache":Landroid/view/accessibility/AccessibilityCache;
    const-string v7, "findAccessibilityNodeInfoByAccessibilityId cache"

    move-object/from16 v18, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-direct {v11, v9, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 548
    .end local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :cond_7a
    move-object/from16 v17, v7

    .line 557
    .end local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :goto_7c
    return-object v16

    .line 559
    .end local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :cond_7d
    move-object/from16 v17, v7

    .end local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityCache;->isEnabled()Z

    move-result v7
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_83} :catch_8b

    if-nez v7, :cond_8a

    .line 561
    and-int/lit8 v1, v1, -0x40

    .end local p6    # "prefetchFlags":I
    .local v1, "prefetchFlags":I
    goto :goto_8a

    .line 540
    .end local v1    # "prefetchFlags":I
    .end local v16    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local p6    # "prefetchFlags":I
    :cond_88
    move-object/from16 v17, v7

    .line 572
    .end local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local p6    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :cond_8a
    :goto_8a
    goto :goto_93

    .line 647
    .end local v1    # "prefetchFlags":I
    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local p6    # "prefetchFlags":I
    :catch_8b
    move-exception v0

    move/from16 v22, v1

    move v15, v10

    goto/16 :goto_20c

    .line 574
    .restart local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_91
    and-int/lit8 v1, v1, -0x40

    .line 577
    .end local p6    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :goto_93
    and-int/lit8 v7, v1, 0x3f

    if-eqz v7, :cond_a7

    .line 578
    :try_start_97
    invoke-direct {v11, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->isWindowScrolling(I)Z

    move-result v7
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9b} :catch_a1

    if-eqz v7, :cond_a7

    .line 579
    and-int/lit8 v1, v1, -0x40

    move v7, v1

    goto :goto_a8

    .line 647
    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_a1
    move-exception v0

    move/from16 v22, v1

    move v15, v10

    goto/16 :goto_20c

    .line 582
    .restart local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_a7
    move v7, v1

    .end local v1    # "prefetchFlags":I
    .local v7, "prefetchFlags":I
    :goto_a8
    and-int/lit8 v16, v7, 0x1c

    .line 583
    .local v16, "descendantPrefetchFlags":I
    add-int/lit8 v1, v16, -0x1

    and-int v1, v16, v1

    if-nez v1, :cond_1f7

    .line 587
    :try_start_b0
    iget-object v1, v11, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 588
    .local v1, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v17
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_ba} :catch_1f2

    move-object/from16 v18, v9

    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v18, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    const-string v9, "InteractionId:"

    const-string v11, "findAccessibilityNodeInfoByAccessibilityId"

    if-eqz v17, :cond_11d

    .line 589
    move-object/from16 p6, v11

    :try_start_c4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_105} :catch_115

    move-object/from16 v11, p0

    move-object/from16 v5, p6

    move-object/from16 v6, v18

    .end local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v6, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_start_10b
    invoke-direct {v11, v6, v5, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_10e} :catch_10f

    goto :goto_122

    .line 647
    .end local v1    # "interactionId":I
    .end local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v16    # "descendantPrefetchFlags":I
    :catch_10f
    move-exception v0

    move/from16 v22, v7

    move v15, v10

    goto/16 :goto_20c

    :catch_115
    move-exception v0

    move-object/from16 v11, p0

    move/from16 v22, v7

    move v15, v10

    goto/16 :goto_20c

    .line 588
    .restart local v1    # "interactionId":I
    .restart local v16    # "descendantPrefetchFlags":I
    .restart local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_11d
    move-object v5, v11

    move-object/from16 v6, v18

    move-object/from16 v11, p0

    .line 597
    .end local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :goto_122
    :try_start_122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_126} :catch_1f2

    move-wide/from16 v17, v2

    .line 599
    .local v17, "identityToken":J
    nop

    .line 601
    :try_start_129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v19
    :try_end_131
    .catchall {:try_start_129 .. :try_end_131} :catchall_1e7

    .line 599
    move v3, v1

    .end local v1    # "interactionId":I
    .local v3, "interactionId":I
    move-object v1, v6

    move/from16 v2, p2

    move/from16 p6, v3

    .end local v3    # "interactionId":I
    .local p6, "interactionId":I
    move-wide/from16 v3, p3

    move-object v0, v5

    move/from16 v5, p6

    move-object/from16 v21, v6

    .end local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v21, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    move-object/from16 v6, p0

    move/from16 v22, v7

    .end local v7    # "prefetchFlags":I
    .local v22, "prefetchFlags":I
    move-object v14, v9

    move-object/from16 v13, v21

    .end local v21    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v13, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    move-wide/from16 v8, v19

    move v15, v10

    move-object/from16 v10, p7

    :try_start_14a
    invoke-interface/range {v1 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v1
    :try_end_14e
    .catchall {:try_start_14a .. :try_end_14e} :catchall_1e3

    .line 603
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_14e
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_151
    .catch Landroid/os/RemoteException; {:try_start_14e .. :try_end_151} :catch_203

    .line 604
    nop

    .line 605
    if-eqz v1, :cond_1de

    .line 606
    and-int/lit8 v2, v22, 0x20

    const-string v3, ";Result: "

    const-string v4, ";connectionId="

    if-eqz v2, :cond_1a1

    .line 608
    nop

    .line 609
    move/from16 v2, p6

    .end local p6    # "interactionId":I
    .local v2, "interactionId":I
    :try_start_15f
    invoke-direct {v11, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v5

    .line 611
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v6

    if-eqz v6, :cond_18d

    .line 612
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v13, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_18d
    invoke-direct {v11, v5, v12, v15, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 619
    if-eqz v5, :cond_1a0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 620
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0

    .line 622
    .end local v5    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_1a0
    goto :goto_1e0

    .line 623
    .end local v2    # "interactionId":I
    .restart local p6    # "interactionId":I
    :cond_1a1
    move/from16 v2, p6

    .line 624
    .end local p6    # "interactionId":I
    .restart local v2    # "interactionId":I
    invoke-direct {v11, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 625
    .local v5, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v6

    if-eqz v6, :cond_1d1

    .line 626
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v13, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_1d1
    and-int/lit8 v0, v22, 0x3f

    if-eqz v0, :cond_1da

    if-eqz v5, :cond_1da

    .line 633
    invoke-direct {v11, v2, v12, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setInteractionWaitingForPrefetchResult(II[Ljava/lang/String;)V

    .line 636
    :cond_1da
    invoke-direct {v11, v5, v12, v15, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 638
    return-object v5

    .line 605
    .end local v2    # "interactionId":I
    .end local v5    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local p6    # "interactionId":I
    :cond_1de
    move/from16 v2, p6

    .line 650
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v16    # "descendantPrefetchFlags":I
    .end local v17    # "identityToken":J
    .end local p6    # "interactionId":I
    :goto_1e0
    move/from16 v1, v22

    goto :goto_207

    .line 603
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v16    # "descendantPrefetchFlags":I
    .restart local v17    # "identityToken":J
    .restart local p6    # "interactionId":I
    :catchall_1e3
    move-exception v0

    move/from16 v2, p6

    .end local p6    # "interactionId":I
    .restart local v2    # "interactionId":I
    goto :goto_1ed

    .end local v2    # "interactionId":I
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v22    # "prefetchFlags":I
    .local v1, "interactionId":I
    .restart local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v7    # "prefetchFlags":I
    :catchall_1e7
    move-exception v0

    move v2, v1

    move-object v13, v6

    move/from16 v22, v7

    move v15, v10

    .end local v1    # "interactionId":I
    .end local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "prefetchFlags":I
    .restart local v2    # "interactionId":I
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v22    # "prefetchFlags":I
    :goto_1ed
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 604
    nop

    .end local v22    # "prefetchFlags":I
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "bypassCache":Z
    .end local p7    # "arguments":Landroid/os/Bundle;
    throw v0

    .line 647
    .end local v2    # "interactionId":I
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v16    # "descendantPrefetchFlags":I
    .end local v17    # "identityToken":J
    .restart local v7    # "prefetchFlags":I
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "bypassCache":Z
    .restart local p7    # "arguments":Landroid/os/Bundle;
    :catch_1f2
    move-exception v0

    move/from16 v22, v7

    move v15, v10

    .end local v7    # "prefetchFlags":I
    .restart local v22    # "prefetchFlags":I
    goto :goto_20c

    .line 584
    .end local v22    # "prefetchFlags":I
    .restart local v7    # "prefetchFlags":I
    .restart local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v16    # "descendantPrefetchFlags":I
    :cond_1f7
    move/from16 v22, v7

    move-object v13, v9

    move v15, v10

    .end local v7    # "prefetchFlags":I
    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v22    # "prefetchFlags":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There can be no more than one descendant prefetching strategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v22    # "prefetchFlags":I
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "bypassCache":Z
    .end local p7    # "arguments":Landroid/os/Bundle;
    throw v0
    :try_end_203
    .catch Landroid/os/RemoteException; {:try_start_15f .. :try_end_203} :catch_203

    .line 647
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v16    # "descendantPrefetchFlags":I
    .restart local v22    # "prefetchFlags":I
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "bypassCache":Z
    .restart local p7    # "arguments":Landroid/os/Bundle;
    :catch_203
    move-exception v0

    goto :goto_20c

    .line 537
    .end local v22    # "prefetchFlags":I
    .restart local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local p6, "prefetchFlags":I
    :cond_205
    move-object v13, v9

    move v15, v10

    .line 650
    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local p6    # "prefetchFlags":I
    .local v1, "prefetchFlags":I
    :goto_207
    goto :goto_215

    .line 647
    .end local v1    # "prefetchFlags":I
    .restart local p6    # "prefetchFlags":I
    :catch_208
    move-exception v0

    move v15, v10

    move/from16 v22, v1

    .line 648
    .end local p6    # "prefetchFlags":I
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v22    # "prefetchFlags":I
    :goto_20c
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfoByAccessibilityId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v1, v22

    .line 651
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v22    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :goto_215
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 22
    .param p1, "connectionId"    # I
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I
    .param p7, "arguments"    # Landroid/os/Bundle;

    .line 494
    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 495
    return-object v2

    .line 497
    :cond_6
    const/4 v3, -0x1

    .line 499
    .local v3, "windowId":I
    :try_start_7
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 500
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_12

    .line 501
    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindowIdForLeashToken(Landroid/os/IBinder;)I

    move-result v4
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13

    move v3, v4

    .line 509
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_12
    goto :goto_1b

    .line 507
    :catch_13
    move-exception v0

    .line 508
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityInteractionClient"

    const-string v5, "Error while calling remote getWindowIdForLeashToken"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1b
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1f

    .line 511
    return-object v2

    .line 513
    :cond_1f
    move-object v6, p0

    move v7, p1

    move v8, v3

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v6 .. v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;
    .registers 26
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    .line 754
    :try_start_4
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v12, v0

    .line 755
    .local v12, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v12, :cond_da

    .line 756
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v13, v0

    .line 757
    .local v13, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_dd

    const-string v14, "findAccessibilityNodeInfosByText"

    if-eqz v0, :cond_6c

    .line 758
    :try_start_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_39} :catch_63

    move/from16 v15, p2

    :try_start_3b
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_45} :catch_61

    move-wide/from16 v8, p3

    :try_start_47
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_51} :catch_5f

    move-object/from16 v7, p5

    :try_start_53
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v12, v14, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 792
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    :catch_5f
    move-exception v0

    goto :goto_68

    :catch_61
    move-exception v0

    goto :goto_66

    :catch_63
    move-exception v0

    move/from16 v15, p2

    :goto_66
    move-wide/from16 v8, p3

    :goto_68
    move-object/from16 v7, p5

    goto/16 :goto_e0

    .line 757
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v13    # "interactionId":I
    :cond_6c
    move/from16 v15, p2

    move-wide/from16 v8, p3

    move-object/from16 v7, p5

    .line 764
    :goto_72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_76} :catch_d8

    move-wide/from16 v16, v0

    .line 766
    .local v16, "identityToken":J
    nop

    .line 768
    :try_start_79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v18

    .line 766
    move-object v1, v12

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move v6, v13

    move-object/from16 v7, p0

    move-wide/from16 v8, v18

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_d2

    .line 770
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_91
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 771
    nop

    .line 773
    if-eqz v0, :cond_dc

    .line 774
    invoke-direct {v10, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v1

    .line 776
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";connectionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v12, v14, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_cb
    if-eqz v1, :cond_dc

    .line 782
    const/4 v2, 0x0

    invoke-direct {v10, v1, v11, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 784
    return-object v1

    .line 770
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_d2
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 771
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "text":Ljava/lang/String;
    throw v0
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_d8} :catch_d8

    .line 792
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    .end local v16    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "text":Ljava/lang/String;
    :catch_d8
    move-exception v0

    goto :goto_e0

    .line 755
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_da
    move/from16 v15, p2

    .line 795
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_dc
    goto :goto_e7

    .line 792
    :catch_dd
    move-exception v0

    move/from16 v15, p2

    .line 793
    .local v0, "re":Landroid/os/RemoteException;
    :goto_e0
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfosByViewText"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_e7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;
    .registers 26
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    .line 687
    :try_start_4
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v12, v0

    .line 688
    .local v12, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v12, :cond_ec

    .line 689
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v13, v0

    .line 691
    .local v13, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_ee

    move-wide v14, v0

    .line 693
    .local v14, "identityToken":J
    :try_start_17
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_e5

    const-string v8, ";connectionId="

    const-string v9, "InteractionId="

    const-string v7, "findAccessibilityNodeInfosByViewId"

    if-eqz v0, :cond_74

    .line 694
    :try_start_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_6a

    move/from16 v6, p2

    :try_start_40
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_68

    move-wide/from16 v3, p3

    :try_start_4c
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";viewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_66

    move-object/from16 v5, p5

    :try_start_58
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v12, v7, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_64

    goto :goto_7a

    .line 705
    :catchall_64
    move-exception v0

    goto :goto_71

    :catchall_66
    move-exception v0

    goto :goto_6f

    :catchall_68
    move-exception v0

    goto :goto_6d

    :catchall_6a
    move-exception v0

    move/from16 v6, p2

    :goto_6d
    move-wide/from16 v3, p3

    :goto_6f
    move-object/from16 v5, p5

    :goto_71
    move-object v3, v12

    goto/16 :goto_e7

    .line 693
    :cond_74
    move/from16 v6, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 701
    :goto_7a
    nop

    .line 703
    :try_start_7b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_e5

    .line 701
    move-object v1, v12

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move v6, v13

    move-object v0, v7

    move-object/from16 v7, p0

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v19, v12

    move-object v12, v9

    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v19, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    move-wide/from16 v8, v16

    :try_start_96
    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v1
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_e1

    .line 705
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_9a
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    nop

    .line 708
    if-eqz v1, :cond_de

    .line 709
    invoke-direct {v10, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v2

    .line 711
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":Result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    .end local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v3, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-direct {v10, v3, v4, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 711
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_d5
    move-object/from16 v3, v19

    .line 716
    .end local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :goto_d7
    if-eqz v2, :cond_ed

    .line 717
    const/4 v0, 0x0

    invoke-direct {v10, v2, v11, v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 719
    return-object v2

    .line 708
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_de
    move-object/from16 v3, v19

    .end local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    goto :goto_ed

    .line 705
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_e1
    move-exception v0

    move-object/from16 v3, v19

    .end local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    goto :goto_e7

    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_e5
    move-exception v0

    move-object v3, v12

    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :goto_e7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "viewId":Ljava/lang/String;
    throw v0
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_ec} :catch_ee

    .line 688
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    .end local v14    # "identityToken":J
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "viewId":Ljava/lang/String;
    :cond_ec
    move-object v3, v12

    .line 730
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_ed
    :goto_ed
    goto :goto_f6

    .line 727
    :catch_ee
    move-exception v0

    .line 728
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfoByViewIdInActiveWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_f6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 26
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "focusType"    # I

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-wide/from16 v13, p3

    move/from16 v15, p5

    .line 821
    :try_start_a
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v8, v0

    .line 822
    .local v8, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v8, :cond_d9

    .line 823
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    move-object v9, v0

    .line 824
    .local v9, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-eqz v9, :cond_1f

    .line 825
    invoke-virtual {v9, v15, v13, v14, v12}, Landroid/view/accessibility/AccessibilityCache;->getFocus(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 827
    .local v0, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1f

    .line 833
    return-object v0

    .line 844
    .end local v0    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1f
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v7, v0

    .line 845
    .local v7, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2a} :catch_db

    const-string v6, "findFocus"

    if-eqz v0, :cond_6c

    .line 846
    :try_start_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";focusType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v6, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_6c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_70} :catch_db

    move-wide/from16 v16, v0

    .line 855
    .local v16, "identityToken":J
    nop

    .line 857
    :try_start_73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v18
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_d0

    .line 855
    move-object v1, v8

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object v0, v6

    move v6, v7

    move v12, v7

    .end local v7    # "interactionId":I
    .local v12, "interactionId":I
    move-object/from16 v7, p0

    move-object v13, v8

    move-object v14, v9

    .end local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v9    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .local v13, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v14, "cache":Landroid/view/accessibility/AccessibilityCache;
    move-wide/from16 v8, v18

    :try_start_8b
    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_ce

    .line 859
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_8f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    nop

    .line 862
    if-eqz v1, :cond_da

    .line 863
    invoke-direct {v10, v12}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 865
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";connectionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v13, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_c9
    const/4 v0, 0x0

    invoke-direct {v10, v2, v11, v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 870
    return-object v2

    .line 859
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_ce
    move-exception v0

    goto :goto_d4

    .end local v12    # "interactionId":I
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v14    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v7    # "interactionId":I
    .restart local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v9    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :catchall_d0
    move-exception v0

    move v12, v7

    move-object v13, v8

    move-object v14, v9

    .end local v7    # "interactionId":I
    .end local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v9    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v12    # "interactionId":I
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v14    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :goto_d4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "focusType":I
    throw v0
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_d9} :catch_db

    .line 822
    .end local v12    # "interactionId":I
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v14    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v16    # "identityToken":J
    .restart local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "focusType":I
    :cond_d9
    move-object v13, v8

    .line 879
    .end local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_da
    goto :goto_e3

    .line 877
    :catch_db
    move-exception v0

    .line 878
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findFocus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_e3
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 26
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "direction"    # I

    move-object/from16 v10, p0

    move/from16 v11, p1

    .line 902
    :try_start_4
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v12, v0

    .line 903
    .local v12, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v12, :cond_d8

    .line 904
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v13, v0

    .line 905
    .local v13, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_db

    const-string v14, "focusSearch"

    if-eqz v0, :cond_6c

    .line 906
    :try_start_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_39} :catch_63

    move/from16 v15, p2

    :try_start_3b
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_45} :catch_61

    move-wide/from16 v8, p3

    :try_start_47
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_51} :catch_5f

    move/from16 v7, p5

    :try_start_53
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v12, v14, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 937
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    :catch_5f
    move-exception v0

    goto :goto_68

    :catch_61
    move-exception v0

    goto :goto_66

    :catch_63
    move-exception v0

    move/from16 v15, p2

    :goto_66
    move-wide/from16 v8, p3

    :goto_68
    move/from16 v7, p5

    goto/16 :goto_de

    .line 905
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v13    # "interactionId":I
    :cond_6c
    move/from16 v15, p2

    move-wide/from16 v8, p3

    move/from16 v7, p5

    .line 913
    :goto_72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_76} :catch_d6

    move-wide/from16 v16, v0

    .line 915
    .local v16, "identityToken":J
    nop

    .line 917
    :try_start_79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v18

    .line 915
    move-object v1, v12

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move v6, v13

    move-object/from16 v7, p0

    move-wide/from16 v8, v18

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_d0

    .line 919
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_91
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    nop

    .line 922
    if-eqz v0, :cond_da

    .line 923
    invoke-direct {v10, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 925
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    invoke-direct {v10, v1, v11, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 926
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";connectionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v12, v14, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :cond_cf
    return-object v1

    .line 919
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_d0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "direction":I
    throw v0
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_d6} :catch_d6

    .line 937
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    .end local v16    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "direction":I
    :catch_d6
    move-exception v0

    goto :goto_de

    .line 903
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_d8
    move/from16 v15, p2

    .line 939
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_da
    goto :goto_e5

    .line 937
    :catch_db
    move-exception v0

    move/from16 v15, p2

    .line 938
    .local v0, "re":Landroid/os/RemoteException;
    :goto_de
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote accessibilityFocusSearch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_e5
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRootInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11
    .param p1, "connectionId"    # I
    .param p2, "strategy"    # I

    .line 308
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const v2, 0x7fffffff

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 4
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 13
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "bypassCache"    # Z

    .line 339
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 340
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_8d

    .line 342
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_8e

    .line 343
    .local v1, "cache":Landroid/view/accessibility/AccessibilityCache;
    const-string v2, ";accessibilityWindowId="

    const-string v3, "connectionId="

    if-eqz v1, :cond_43

    .line 344
    if-nez p3, :cond_43

    .line 345
    :try_start_12
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityCache;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 346
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v4, :cond_43

    .line 350
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 351
    const-string v5, "getWindow cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";bypassCache=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v5, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_42
    return-object v4

    .line 367
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_47} :catch_8e

    .line 369
    .local v4, "identityToken":J
    :try_start_47
    invoke-interface {v0, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_87

    .line 371
    .local v6, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_start_4b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    nop

    .line 373
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 374
    const-string v7, "getWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";bypassCache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v7, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_7d
    if-eqz v6, :cond_8d

    .line 380
    if-nez p3, :cond_86

    if-eqz v1, :cond_86

    .line 381
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 383
    :cond_86
    return-object v6

    .line 371
    .end local v6    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_87
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "bypassCache":Z
    throw v2
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_8d} :catch_8e

    .line 392
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v4    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "bypassCache":Z
    :cond_8d
    goto :goto_96

    .line 390
    :catch_8e
    move-exception v0

    .line 391
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote getWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_96
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getWindows(I)Ljava/util/List;
    .registers 4
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 403
    nop

    .line 404
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnAllDisplays(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 405
    .local v0, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 406
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 408
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getWindowsOnAllDisplays(I)Landroid/util/SparseArray;
    .registers 12
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 420
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 421
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_6b

    .line 423
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_6c

    .line 424
    .local v1, "cache":Landroid/view/accessibility/AccessibilityCache;
    const-string v2, "connectionId="

    if-eqz v1, :cond_31

    .line 425
    :try_start_e
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityCache;->getWindowsOnAllDisplays()Landroid/util/SparseArray;

    move-result-object v3

    .line 426
    .local v3, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    if-eqz v3, :cond_31

    .line 430
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 431
    const-string v4, "getWindows cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_30
    return-object v3

    .line 446
    .end local v3    # "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    :cond_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_35} :catch_6c

    .line 448
    .local v3, "identityToken":J
    :try_start_35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 449
    .local v5, "populationTimeStamp":J
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object v7
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_65

    .line 451
    .local v7, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    :try_start_3d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    nop

    .line 453
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 454
    const-string v8, "getWindows"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v8, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_5d
    if-eqz v7, :cond_6b

    .line 457
    if-eqz v1, :cond_64

    .line 458
    invoke-virtual {v1, v7, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->setWindowsOnAllDisplays(Landroid/util/SparseArray;J)V

    .line 460
    :cond_64
    return-object v7

    .line 451
    .end local v5    # "populationTimeStamp":J
    .end local v7    # "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    :catchall_65
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    throw v2
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_6b} :catch_6c

    .line 469
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v3    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    :cond_6b
    goto :goto_74

    .line 467
    :catch_6c
    move-exception v0

    .line 468
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote getWindowsOnAllDisplays"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 472
    .local v0, "emptyWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    return-object v0
.end method

.method public blacklist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "connectionId"    # I

    .line 1022
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_2e

    goto :goto_23

    .line 1027
    :sswitch_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 1028
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->deleteScrollingWindow(I)V

    goto :goto_23

    .line 1024
    :sswitch_17
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->updateScrollingWindow(IJ)V

    .line 1025
    nop

    .line 1034
    :cond_23
    :goto_23
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 1035
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_2a

    .line 1039
    return-void

    .line 1041
    :cond_2a
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1042
    return-void

    :sswitch_data_2e
    .sparse-switch
        0x1000 -> :sswitch_17
        0x400000 -> :sswitch_8
    .end sparse-switch
.end method

.method public greylist-max-o performAccessibilityAction(IIJILandroid/os/Bundle;)Z
    .registers 27
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "action"    # I
    .param p6, "arguments"    # Landroid/os/Bundle;

    move-object/from16 v11, p0

    move/from16 v12, p1

    .line 961
    :try_start_4
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v13, v0

    .line 962
    .local v13, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v13, :cond_e8

    .line 963
    iget-object v0, v11, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v14, v0

    .line 964
    .local v14, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_e9

    const-string/jumbo v15, "performAccessibilityAction"

    if-eqz v0, :cond_7d

    .line 965
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3a} :catch_72

    move/from16 v9, p2

    :try_start_3c
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_46} :catch_70

    move-wide/from16 v7, p3

    :try_start_48
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_52} :catch_6e

    move/from16 v10, p5

    :try_start_54
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";arguments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5e} :catch_6c

    move-object/from16 v6, p6

    :try_start_60
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v13, v15, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 996
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v14    # "interactionId":I
    :catch_6c
    move-exception v0

    goto :goto_79

    :catch_6e
    move-exception v0

    goto :goto_77

    :catch_70
    move-exception v0

    goto :goto_75

    :catch_72
    move-exception v0

    move/from16 v9, p2

    :goto_75
    move-wide/from16 v7, p3

    :goto_77
    move/from16 v10, p5

    :goto_79
    move-object/from16 v6, p6

    goto/16 :goto_ea

    .line 964
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v14    # "interactionId":I
    :cond_7d
    move/from16 v9, p2

    move-wide/from16 v7, p3

    move/from16 v10, p5

    move-object/from16 v6, p6

    .line 972
    :goto_85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_89} :catch_e9

    move-wide/from16 v16, v0

    .line 974
    .local v16, "identityToken":J
    nop

    .line 976
    :try_start_8c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v18

    .line 974
    move-object v1, v13

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v14

    move-object/from16 v8, p0

    move-wide/from16 v9, v18

    invoke-interface/range {v1 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v0
    :try_end_a6
    .catchall {:try_start_8c .. :try_end_a6} :catchall_e2

    .line 978
    .local v0, "success":Z
    :try_start_a6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    nop

    .line 981
    if-eqz v0, :cond_e8

    .line 982
    nop

    .line 983
    invoke-direct {v11, v14}, Landroid/view/accessibility/AccessibilityInteractionClient;->getPerformAccessibilityActionResultAndClear(I)Z

    move-result v1

    .line 984
    .local v1, "result":Z
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";connectionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v13, v15, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_e1
    return v1

    .line 978
    .end local v0    # "success":Z
    .end local v1    # "result":Z
    :catchall_e2
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "action":I
    .end local p6    # "arguments":Landroid/os/Bundle;
    throw v0
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_e8} :catch_e9

    .line 998
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v14    # "interactionId":I
    .end local v16    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "action":I
    .restart local p6    # "arguments":Landroid/os/Bundle;
    :cond_e8
    goto :goto_f1

    .line 996
    :catch_e9
    move-exception v0

    .line 997
    .local v0, "re":Landroid/os/RemoteException;
    :goto_ea
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote performAccessibilityAction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_f1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactionId"    # I

    .line 1064
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_24

    .line 1066
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1067
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1068
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 1069
    new-instance v1, Ljava/util/ArrayList;

    .line 1070
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    .line 1072
    :cond_24
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1073
    monitor-exit v0

    .line 1074
    return-void

    .line 1073
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public greylist-max-o setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .registers 6
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1105
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1106
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_44

    .line 1107
    if-eqz p1, :cond_23

    .line 1110
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 1111
    .local v1, "isIpcCall":Z
    :goto_16
    if-nez v1, :cond_20

    .line 1112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    goto :goto_22

    .line 1114
    :cond_20
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 1116
    .end local v1    # "isIpcCall":Z
    :goto_22
    goto :goto_29

    .line 1117
    :cond_23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 1119
    :goto_29
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 1121
    new-instance v1, Ljava/util/ArrayList;

    .line 1122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    .line 1124
    :cond_44
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1125
    monitor-exit v0

    .line 1126
    return-void

    .line 1125
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public greylist-max-o setPerformAccessibilityActionResult(ZI)V
    .registers 6
    .param p1, "succeeded"    # Z
    .param p2, "interactionId"    # I

    .line 1197
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_24

    .line 1199
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 1200
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1201
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 1202
    new-instance v1, Ljava/util/ArrayList;

    .line 1203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    .line 1205
    :cond_24
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1206
    monitor-exit v0

    .line 1207
    return-void

    .line 1206
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    .registers 16
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1134
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v0, -0x1

    .line 1135
    .local v0, "interactionIdWaitingForPrefetchResultCopy":I
    const/4 v1, -0x1

    .line 1136
    .local v1, "connectionIdWaitingForPrefetchResultCopy":I
    const/4 v2, 0x0

    .line 1138
    .local v2, "packageNamesForNextPrefetchResultCopy":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1139
    return-void

    .line 1142
    :cond_a
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1143
    :try_start_d
    iget v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    if-ne v4, p2, :cond_2a

    .line 1144
    move v0, v4

    .line 1145
    iget v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mConnectionIdWaitingForPrefetchResult:I

    move v1, v4

    .line 1147
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    if-eqz v4, :cond_2a

    .line 1148
    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    move-object v2, v4

    .line 1150
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_2a

    .line 1151
    aget-object v5, v5, v4

    aput-object v5, v2, v4

    .line 1150
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1156
    .end local v4    # "i":I
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_87

    .line 1158
    if-ne v0, p2, :cond_86

    .line 1159
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 1162
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1163
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v5

    const-string/jumbo v6, "setPrefetchAccessibilityNodeInfoResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";connectionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/HashSet;

    const-string v3, "getStackTrace"

    .line 1169
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-wide/16 v11, 0x20

    .line 1163
    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V

    .line 1176
    :cond_86
    return-void

    .line 1156
    :catchall_87
    move-exception v4

    :try_start_88
    monitor-exit v3
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v4
.end method

.method public greylist-max-r setSameThreadMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 294
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 296
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 297
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
