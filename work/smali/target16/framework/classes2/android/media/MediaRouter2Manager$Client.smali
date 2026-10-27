.class Landroid/media/MediaRouter2Manager$Client;
.super Landroid/media/IMediaRouter2Manager$Stub;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter2Manager;


# direct methods
.method public static synthetic blacklist $r8$lambda$sGljAAQ1nflSd2P92_JBa-x0x6w(Landroid/media/MediaRouter2Manager;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->-$$Nest$mupdateRouteListingPreference(Landroid/media/MediaRouter2Manager;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRouter2Manager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1111
    iput-object p1, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-direct {p0}, Landroid/media/IMediaRouter2Manager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist invalidateInstance()V
    .registers 1

    .line 1186
    return-void
.end method

.method public blacklist notifyDeviceSuggestionRequested()V
    .registers 1

    .line 1171
    return-void
.end method

.method public blacklist notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1166
    return-void
.end method

.method public blacklist notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 6

    .line 1145
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1147
    return-void
.end method

.method public blacklist notifyRequestFailed(II)V
    .registers 6

    .line 1138
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    .line 1139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1138
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1140
    return-void
.end method

.method public blacklist notifyRouteListingPreferenceChange(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 6

    .line 1152
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    .line 1153
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1152
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1158
    return-void
.end method

.method public blacklist notifyRoutesUpdated(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    .line 1176
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1175
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1180
    return-void
.end method

.method public blacklist notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 1114
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    .line 1115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1114
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1116
    return-void
.end method

.method public blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 5

    .line 1131
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    return-void
.end method

.method public blacklist notifySessionUpdated(Landroid/media/RoutingSessionInfo;Z)V
    .registers 5

    .line 1122
    iget-object p2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object p2, p2, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    .line 1123
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1122
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1127
    return-void
.end method

.method public blacklist notifySystemSessionOverridesChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AppId;",
            ">;)V"
        }
    .end annotation

    .line 1191
    return-void
.end method
