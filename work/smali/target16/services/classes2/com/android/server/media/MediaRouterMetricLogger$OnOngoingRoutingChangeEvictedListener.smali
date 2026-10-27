.class public Lcom/android/server/media/MediaRouterMetricLogger$OnOngoingRoutingChangeEvictedListener;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"

# interfaces
.implements Lcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouterMetricLogger-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterMetricLogger$OnOngoingRoutingChangeEvictedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEntryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 719
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger$OnOngoingRoutingChangeEvictedListener;->onEntryEvicted(Ljava/lang/String;Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)V

    return-void
.end method

.method public onEntryEvicted(Ljava/lang/String;Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)V
    .registers 3

    .line 723
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Routing change info evicted from cache with sessionId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouterMetricLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
