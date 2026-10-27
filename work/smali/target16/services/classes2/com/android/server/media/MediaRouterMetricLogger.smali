.class public final Lcom/android/server/media/MediaRouterMetricLogger;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDeviceSuggestionsCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

.field public final mOngoingRoutingChangeCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

.field public final mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

.field public final mRlpCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

.field public final mRoutingChangeInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;


# direct methods
.method public static synthetic $r8$lambda$sBhtESo-A4hwpsWL0c23q8_8D1k(Landroid/media/RouteListingPreference$Item;)Z
    .registers 1

    .line 382
    invoke-virtual {p0}, Landroid/media/RouteListingPreference$Item;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogDeviceSuggestionsAccessed(Lcom/android/server/media/MediaRouterMetricLogger;Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->logDeviceSuggestionsAccessed(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogRlpCountForRouter(Lcom/android/server/media/MediaRouterMetricLogger;ILcom/android/server/media/MediaRouterMetricLogger$RlpCount;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->logRlpCountForRouter(ILcom/android/server/media/MediaRouterMetricLogger$RlpCount;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 114
    const-string v0, "MediaRouterMetricLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouterMetricLogger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    new-instance v1, Lcom/android/server/media/MediaRouterMetricLogger$OnRequestInfoEvictedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/MediaRouterMetricLogger$OnRequestInfoEvictedListener;-><init>(Lcom/android/server/media/MediaRouterMetricLogger;Lcom/android/server/media/MediaRouterMetricLogger-IA;)V

    const/16 v3, 0x64

    invoke-direct {v0, v3, v1}, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;-><init>(ILcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    .line 157
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    new-instance v1, Lcom/android/server/media/MediaRouterMetricLogger$OnRoutingChangeInfoEvictedListener;

    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouterMetricLogger$OnRoutingChangeInfoEvictedListener;-><init>(Lcom/android/server/media/MediaRouterMetricLogger-IA;)V

    invoke-direct {v0, v3, v1}, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;-><init>(ILcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRoutingChangeInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    .line 160
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    new-instance v1, Lcom/android/server/media/MediaRouterMetricLogger$OnOngoingRoutingChangeEvictedListener;

    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouterMetricLogger$OnOngoingRoutingChangeEvictedListener;-><init>(Lcom/android/server/media/MediaRouterMetricLogger-IA;)V

    invoke-direct {v0, v3, v1}, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;-><init>(ILcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mOngoingRoutingChangeCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    .line 163
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    new-instance v1, Lcom/android/server/media/MediaRouterMetricLogger$OnRlpSuggestionCountEvictedListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/MediaRouterMetricLogger$OnRlpSuggestionCountEvictedListener;-><init>(Lcom/android/server/media/MediaRouterMetricLogger;Lcom/android/server/media/MediaRouterMetricLogger-IA;)V

    const/16 v3, 0x14

    invoke-direct {v0, v3, v1}, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;-><init>(ILcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRlpCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    .line 166
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    new-instance v1, Lcom/android/server/media/MediaRouterMetricLogger$OnDeviceSuggestionsCountEvictedListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/MediaRouterMetricLogger$OnDeviceSuggestionsCountEvictedListener;-><init>(Lcom/android/server/media/MediaRouterMetricLogger;Lcom/android/server/media/MediaRouterMetricLogger-IA;)V

    invoke-direct {v0, v3, v1}, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;-><init>(ILcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mDeviceSuggestionsCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    return-void
.end method

.method public static convertEntryPointForLogging(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    const/4 v0, 0x3

    if-eq p0, v0, :cond_27

    const/4 v0, 0x4

    if-eq p0, v0, :cond_27

    const/4 v0, 0x5

    if-ne p0, v0, :cond_10

    return v0

    .line 501
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No mapping found for the given entry point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return v0
.end method

.method public static convertEventTypeForLogging(I)I
    .registers 4

    packed-switch p0, :pswitch_data_2e

    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No mapping found for the given event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    const/16 p0, 0x8

    return p0

    :pswitch_1d
    const/4 p0, 0x7

    return p0

    :pswitch_1f
    const/4 p0, 0x6

    return p0

    :pswitch_21
    const/4 p0, 0x5

    return p0

    :pswitch_23
    const/4 p0, 0x4

    return p0

    :pswitch_25
    const/4 p0, 0x3

    return p0

    :pswitch_27
    const/4 p0, 0x2

    return p0

    :pswitch_29
    const/4 p0, 0x1

    return p0

    :pswitch_2b
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static convertResultFromReason(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_14

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_a
    const/4 p0, 0x6

    return p0

    :pswitch_c
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_10
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/4 p0, 0x2

    return p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static convertTransferReasonForLogging(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v0, :cond_c

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v1

    :cond_d
    return v0
.end method


# virtual methods
.method public addRequestInfo(JILandroid/media/RoutingChangeInfo;)V
    .registers 6

    .line 207
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;-><init>(JILandroid/media/RoutingChangeInfo;)V

    .line 208
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    iget-wide p1, v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mUniqueRequestId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getElapsedRealTime()J
    .registers 3

    .line 566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOngoingRoutingChangeCacheSize()I
    .registers 1

    .line 561
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mOngoingRoutingChangeCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result p0

    return p0
.end method

.method public getRequestCacheSize()I
    .registers 1

    .line 551
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result p0

    return p0
.end method

.method public getRequestInfoCacheCapacity()I
    .registers 1

    .line 541
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->maxSize()I

    move-result p0

    return p0
.end method

.method public getRoutingChangeInfoCacheSize()I
    .registers 1

    .line 556
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRoutingChangeInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result p0

    return p0
.end method

.method public final logDeviceSuggestionsAccessed(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)V
    .registers 10

    .line 632
    invoke-static {p1}, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->-$$Nest$fgettargetPackageUid(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->-$$Nest$fgetoperatingPackageUid(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;)I

    move-result v2

    invoke-static {p2}, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;->-$$Nest$fgetupdateSuggestionsCount(Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;->-$$Nest$fgetrequestSuggestionsCount(Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)J

    move-result-wide v5

    const/16 v0, 0x49c

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaRouterStatsLog;->write(IIIJJ)V

    return-void
.end method

.method public final logDeviceSuggestionsCountForRouter(I)V
    .registers 5

    .line 623
    iget-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mDeviceSuggestionsCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 624
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->-$$Nest$fgettargetPackageUid(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;)I

    move-result v2

    if-ne v2, p1, :cond_e

    .line 625
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/media/MediaRouterMetricLogger;->logDeviceSuggestionsAccessed(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)V

    goto :goto_e

    :cond_36
    return-void
.end method

.method public final logMediaRouterEvent(IILandroid/media/RoutingChangeInfo;)V
    .registers 6

    const/4 p0, 0x0

    if-eqz p3, :cond_c

    .line 573
    invoke-virtual {p3}, Landroid/media/RoutingChangeInfo;->getEntryPoint()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/media/MediaRouterMetricLogger;->convertEntryPointForLogging(I)I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    if-eqz p3, :cond_16

    .line 575
    invoke-virtual {p3}, Landroid/media/RoutingChangeInfo;->isSuggested()Z

    move-result p3

    if-eqz p3, :cond_16

    const/4 p0, 0x1

    :cond_16
    const/16 p3, 0x3f9

    .line 578
    invoke-static {p1}, Lcom/android/server/media/MediaRouterMetricLogger;->convertEventTypeForLogging(I)I

    move-result v1

    .line 576
    invoke-static {p3, v1, p2, v0, p0}, Lcom/android/server/media/MediaRouterStatsLog;->write(IIIIZ)V

    .line 583
    sget-boolean p0, Lcom/android/server/media/MediaRouterMetricLogger;->DEBUG:Z

    if-eqz p0, :cond_41

    .line 584
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "logMediaRouterEvent: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouterMetricLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void
.end method

.method public logOperationFailure(IILandroid/media/RoutingChangeInfo;)V
    .registers 4

    .line 230
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(IILandroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public logOperationTriggered(IILandroid/media/RoutingChangeInfo;)V
    .registers 4

    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(IILandroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public logRequestResult(JI)V
    .registers 6

    .line 252
    iget-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    if-nez v0, :cond_25

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "logRequestResult: No RequestInfo found for uniqueRequestId="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouterMetricLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_25
    iget v1, v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mEventType:I

    .line 262
    iget-object v0, v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mRoutingChangeInfo:Landroid/media/RoutingChangeInfo;

    invoke-virtual {p0, v1, p3, v0}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(IILandroid/media/RoutingChangeInfo;)V

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->removeRequestInfo(J)V

    return-void
.end method

.method public final logRlpCountForRouter(I)V
    .registers 9

    .line 605
    iget-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRlpCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;

    if-nez v0, :cond_19

    .line 608
    new-instance v1, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;-><init>(JJLcom/android/server/media/MediaRouterMetricLogger-IA;)V

    move-object v0, v1

    .line 610
    :cond_19
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaRouterMetricLogger;->logRlpCountForRouter(ILcom/android/server/media/MediaRouterMetricLogger$RlpCount;)V

    return-void
.end method

.method public final logRlpCountForRouter(ILcom/android/server/media/MediaRouterMetricLogger$RlpCount;)V
    .registers 9

    .line 614
    invoke-static {p2}, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->-$$Nest$fgetrlpTotalCount(Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->-$$Nest$fgetrlpWithSuggestionCount(Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;)J

    move-result-wide v4

    const/16 v0, 0x490

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouterStatsLog;->write(IIJJ)V

    return-void
.end method

.method public final logScanningStarted()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 590
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(IILandroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public final logScanningStopped()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 598
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(IILandroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public final notifyDeviceSuggestionInteracted(III)V
    .registers 13

    .line 424
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;-><init>(IILcom/android/server/media/MediaRouterMetricLogger-IA;)V

    .line 425
    iget-object p1, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mDeviceSuggestionsCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    .line 426
    invoke-virtual {p1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;

    if-eqz p1, :cond_19

    .line 430
    invoke-static {p1}, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;->-$$Nest$fgetupdateSuggestionsCount(Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)J

    move-result-wide v1

    .line 431
    invoke-static {p1}, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;->-$$Nest$fgetrequestSuggestionsCount(Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)J

    move-result-wide p1

    goto :goto_1c

    :cond_19
    const-wide/16 v1, 0x0

    move-wide p1, v1

    :goto_1c
    const-wide/16 v3, 0x1

    if-eqz p3, :cond_28

    const/4 v5, 0x1

    if-eq p3, v5, :cond_26

    :goto_23
    move-wide v6, p1

    move-wide v4, v1

    goto :goto_2a

    :cond_26
    add-long/2addr p1, v3

    goto :goto_23

    :cond_28
    add-long/2addr v1, v3

    goto :goto_23

    .line 442
    :goto_2a
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mDeviceSuggestionsCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    new-instance v3, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;-><init>(JJLcom/android/server/media/MediaRouterMetricLogger-IA;)V

    invoke-virtual {p0, v0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyDeviceSuggestionsRequested(II)V
    .registers 4

    const/4 v0, 0x1

    .line 416
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/media/MediaRouterMetricLogger;->notifyDeviceSuggestionInteracted(III)V

    return-void
.end method

.method public notifyDeviceSuggestionsUpdated(II)V
    .registers 4

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/media/MediaRouterMetricLogger;->notifyDeviceSuggestionInteracted(III)V

    return-void
.end method

.method public notifyRouteListingPreferenceChanged(ILandroid/media/RouteListingPreference;)V
    .registers 19

    move-object/from16 v0, p0

    if-eqz p2, :cond_19

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/media/RouteListingPreference;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaRouterMetricLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouterMetricLogger$$ExternalSyntheticLambda0;-><init>()V

    .line 382
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_22

    move-wide v6, v2

    goto :goto_23

    :cond_22
    move-wide v6, v4

    .line 386
    :goto_23
    iget-object v1, v0, Lcom/android/server/media/MediaRouterMetricLogger;->mRlpCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;

    if-eqz v1, :cond_3a

    .line 388
    invoke-static {v1}, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->-$$Nest$fgetrlpTotalCount(Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;)J

    move-result-wide v4

    .line 389
    invoke-static {v1}, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->-$$Nest$fgetrlpWithSuggestionCount(Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;)J

    move-result-wide v8

    goto :goto_3b

    :cond_3a
    move-wide v8, v4

    .line 391
    :goto_3b
    iget-object v0, v0, Lcom/android/server/media/MediaRouterMetricLogger;->mRlpCountCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    .line 392
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;

    add-long v11, v4, v2

    add-long v13, v8, v6

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;-><init>(JJLcom/android/server/media/MediaRouterMetricLogger-IA;)V

    .line 391
    invoke-virtual {v0, v1, v10}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyRouterUnregistered(I)V
    .registers 2

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logRlpCountForRouter(I)V

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logDeviceSuggestionsCountForRouter(I)V

    return-void
.end method

.method public notifyRoutingChange(JLandroid/media/RoutingSessionInfo;I)V
    .registers 18

    .line 306
    iget-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRoutingChangeInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RoutingChangeInfo;

    if-nez v0, :cond_16

    .line 308
    const-string p0, "MediaRouterMetricLogger"

    const-string v0, "Unable to get routing change info for the specified request id."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 311
    :cond_16
    new-instance v1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;

    .line 313
    invoke-virtual {v0}, Landroid/media/RoutingChangeInfo;->getEntryPoint()I

    move-result v2

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v4

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v5

    .line 317
    invoke-virtual {v0}, Landroid/media/RoutingChangeInfo;->isSuggested()Z

    move-result v6

    .line 318
    invoke-virtual {v0}, Landroid/media/RoutingChangeInfo;->isSuggestedByRlp()Z

    move-result v7

    .line 319
    invoke-virtual {v0}, Landroid/media/RoutingChangeInfo;->isSuggestedByMediaApp()Z

    move-result v8

    .line 320
    invoke-virtual {v0}, Landroid/media/RoutingChangeInfo;->isSuggestedByAnotherApp()Z

    move-result v9

    .line 321
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterMetricLogger;->getElapsedRealTime()J

    move-result-wide v10

    const/4 v12, 0x0

    move/from16 v3, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;-><init>(IIZIZZZZJLcom/android/server/media/MediaRouterMetricLogger-IA;)V

    .line 322
    iget-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mOngoingRoutingChangeCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-virtual/range {p3 .. p3}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRoutingChangeInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyRoutingChangeRequested(JLandroid/media/RoutingChangeInfo;)V
    .registers 4

    .line 290
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRoutingChangeInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifySessionEnd(Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 332
    iget-object v2, v0, Lcom/android/server/media/MediaRouterMetricLogger;->mOngoingRoutingChangeCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;

    .line 333
    const-string v3, "MediaRouterMetricLogger"

    if-nez v2, :cond_16

    .line 334
    const-string v0, "Unable to get routing change logging info for the specified sessionId."

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 337
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterMetricLogger;->getElapsedRealTime()J

    move-result-wide v4

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetstartTimeInMillis(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)J

    move-result-wide v6

    sub-long v14, v4, v6

    .line 339
    sget-boolean v4, Lcom/android/server/media/MediaRouterMetricLogger;->DEBUG:Z

    if-eqz v4, :cond_62

    .line 340
    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetentryPoint(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)I

    move-result v4

    .line 346
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetclientPackageUid(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)I

    move-result v4

    .line 347
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetisSystemSession(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z

    move-result v4

    .line 348
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgettransferReason(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)I

    move-result v4

    .line 349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetisSuggested(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z

    move-result v4

    .line 350
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 351
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->getSuggestionProvidersDebugString()Ljava/lang/String;

    move-result-object v10

    .line 352
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v4

    .line 342
    const-string/jumbo v5, "notifySessionEnd | EntryPoint: %d, ClientPackageUid: %d, IsSystemSession: %b, TransferReason: %d, IsSuggested: %b, SuggestionProviders: %s, SessionLengthInMillis: %d"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_62
    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetentryPoint(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)I

    move-result v3

    .line 357
    invoke-static {v3}, Lcom/android/server/media/MediaRouterMetricLogger;->convertEntryPointForLogging(I)I

    move-result v9

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetclientPackageUid(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)I

    move-result v10

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetisSystemSession(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z

    move-result v11

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgettransferReason(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)I

    move-result v3

    .line 360
    invoke-static {v3}, Lcom/android/server/media/MediaRouterMetricLogger;->convertTransferReasonForLogging(I)I

    move-result v12

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetisSuggested(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z

    move-result v13

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetisSuggestedByRlp(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z

    move-result v16

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetisSuggestedByMediaApp(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z

    move-result v17

    invoke-static {v2}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->-$$Nest$fgetisSuggestedByAnotherApp(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z

    move-result v18

    const/16 v8, 0x476

    .line 355
    invoke-static/range {v8 .. v18}, Lcom/android/server/media/MediaRouterStatsLog;->write(IIIZIZJZZZ)V

    .line 367
    iget-object v0, v0, Lcom/android/server/media/MediaRouterMetricLogger;->mOngoingRoutingChangeCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeRequestInfo(J)V
    .registers 3

    .line 218
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateScanningState(Z)V
    .registers 2

    if-nez p1, :cond_6

    .line 274
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterMetricLogger;->logScanningStopped()V

    return-void

    .line 276
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterMetricLogger;->logScanningStarted()V

    return-void
.end method
