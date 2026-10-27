.class public Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;
.super Landroid/util/LruCache;
.source "MediaRouterMetricLogger.java"


# instance fields
.field public final mOnEntryEvictedListener:Lcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;


# direct methods
.method public constructor <init>(ILcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;)V
    .registers 3

    .line 685
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 686
    iput-object p2, p0, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;->mOnEntryEvictedListener:Lcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;

    return-void
.end method


# virtual methods
.method public entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_7

    .line 692
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$EvictionCallbackLruCache;->mOnEntryEvictedListener:Lcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;

    invoke-interface {p0, p2, p3}, Lcom/android/server/media/MediaRouterMetricLogger$OnEntryEvictedListener;->onEntryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
