.class public Lcom/android/server/media/MediaRouterMetricLogger$OnRoutingChangeInfoEvictedListener;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"

# interfaces
.implements Lcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouterMetricLogger-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterMetricLogger$OnRoutingChangeInfoEvictedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryEvicted(Ljava/lang/Long;Landroid/media/RoutingChangeInfo;)V
    .registers 3

    .line 715
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Routing change info evicted from cache with requestId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouterMetricLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onEntryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 710
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Landroid/media/RoutingChangeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger$OnRoutingChangeInfoEvictedListener;->onEntryEvicted(Ljava/lang/Long;Landroid/media/RoutingChangeInfo;)V

    return-void
.end method
