.class final Landroid/media/MediaRouter2$RouteCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RouteCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field public final blacklist mPreference:Landroid/media/RouteDiscoveryPreference;

.field public final blacklist mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V
    .registers 4

    .line 2667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2668
    iput-object p2, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    .line 2669
    iput-object p1, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2670
    iput-object p3, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 2671
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2675
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2676
    return v0

    .line 2678
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2679
    return v2

    .line 2681
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    check-cast p1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    iget-object p1, p1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    if-ne v1, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2686
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
