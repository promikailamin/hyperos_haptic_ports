.class public Lcom/android/server/media/MediaRouterMetricLogger$OnRlpSuggestionCountEvictedListener;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"

# interfaces
.implements Lcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterMetricLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterMetricLogger;)V
    .registers 2

    .line 727
    iput-object p1, p0, Lcom/android/server/media/MediaRouterMetricLogger$OnRlpSuggestionCountEvictedListener;->this$0:Lcom/android/server/media/MediaRouterMetricLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouterMetricLogger;Lcom/android/server/media/MediaRouterMetricLogger-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterMetricLogger$OnRlpSuggestionCountEvictedListener;-><init>(Lcom/android/server/media/MediaRouterMetricLogger;)V

    return-void
.end method


# virtual methods
.method public onEntryEvicted(Ljava/lang/Integer;Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;)V
    .registers 5

    .line 731
    const-string v0, "MediaRouterMetricLogger"

    const-string v1, "Rlp suggestion count evicted from cache"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OnRlpSuggestionCountEvictedListener;->this$0:Lcom/android/server/media/MediaRouterMetricLogger;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->-$$Nest$mlogRlpCountForRouter(Lcom/android/server/media/MediaRouterMetricLogger;ILcom/android/server/media/MediaRouterMetricLogger$RlpCount;)V

    return-void
.end method

.method public bridge synthetic onEntryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 727
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger$OnRlpSuggestionCountEvictedListener;->onEntryEvicted(Ljava/lang/Integer;Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;)V

    return-void
.end method
