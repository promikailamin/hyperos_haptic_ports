.class public interface abstract Landroid/media/MediaRouter2Manager$Callback;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public blacklist onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    .line 1043
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 1044
    return-void
.end method

.method public blacklist onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1033
    return-void
.end method

.method public blacklist onRequestFailed(I)V
    .registers 2

    .line 1069
    return-void
.end method

.method public blacklist onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3

    .line 1057
    return-void
.end method

.method public blacklist onRoutesUpdated()V
    .registers 1

    .line 996
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 2

    .line 1009
    return-void
.end method

.method public blacklist onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 2

    .line 1002
    return-void
.end method

.method public blacklist onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 3

    .line 1024
    return-void
.end method

.method public blacklist onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    .line 1018
    return-void
.end method
