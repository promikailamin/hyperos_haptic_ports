.class public Lcom/android/server/media/MediaRouterMetricLogger$OnDeviceSuggestionsCountEvictedListener;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"

# interfaces
.implements Lcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterMetricLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterMetricLogger;)V
    .registers 2

    .line 736
    iput-object p1, p0, Lcom/android/server/media/MediaRouterMetricLogger$OnDeviceSuggestionsCountEvictedListener;->this$0:Lcom/android/server/media/MediaRouterMetricLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouterMetricLogger;Lcom/android/server/media/MediaRouterMetricLogger-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterMetricLogger$OnDeviceSuggestionsCountEvictedListener;-><init>(Lcom/android/server/media/MediaRouterMetricLogger;)V

    return-void
.end method


# virtual methods
.method public onEntryEvicted(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)V
    .registers 5

    .line 740
    const-string v0, "MediaRouterMetricLogger"

    const-string v1, "Device suggestions count evicted from cache"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OnDeviceSuggestionsCountEvictedListener;->this$0:Lcom/android/server/media/MediaRouterMetricLogger;

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->-$$Nest$mlogDeviceSuggestionsAccessed(Lcom/android/server/media/MediaRouterMetricLogger;Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)V

    return-void
.end method

.method public bridge synthetic onEntryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 736
    check-cast p1, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;

    check-cast p2, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger$OnDeviceSuggestionsCountEvictedListener;->onEntryEvicted(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount;)V

    return-void
.end method
