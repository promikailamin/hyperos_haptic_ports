.class public Lcom/android/server/media/MediaRouterMetricLogger$OnRequestInfoEvictedListener;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"

# interfaces
.implements Lcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterMetricLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterMetricLogger;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/android/server/media/MediaRouterMetricLogger$OnRequestInfoEvictedListener;->this$0:Lcom/android/server/media/MediaRouterMetricLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouterMetricLogger;Lcom/android/server/media/MediaRouterMetricLogger-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterMetricLogger$OnRequestInfoEvictedListener;-><init>(Lcom/android/server/media/MediaRouterMetricLogger;)V

    return-void
.end method


# virtual methods
.method public onEntryEvicted(Ljava/lang/Long;Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;)V
    .registers 5

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Evicted request info: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mUniqueRequestId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouterMetricLogger"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OnRequestInfoEvictedListener;->this$0:Lcom/android/server/media/MediaRouterMetricLogger;

    iget p1, p2, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mEventType:I

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mRoutingChangeInfo:Landroid/media/RoutingChangeInfo;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->logOperationTriggered(IILandroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public bridge synthetic onEntryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 697
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger$OnRequestInfoEvictedListener;->onEntryEvicted(Ljava/lang/Long;Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;)V

    return-void
.end method
