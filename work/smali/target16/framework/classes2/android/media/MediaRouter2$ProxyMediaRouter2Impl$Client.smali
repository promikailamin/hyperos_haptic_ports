.class Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;
.super Landroid/media/IMediaRouter2Manager$Stub;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;


# direct methods
.method public static synthetic blacklist $r8$lambda$CH5sxmhmXVHHagM79JVl2h4Ncas(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$mnotifyDeviceSuggestionRequestedHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SMJhdL0uu4dNH5PuTwRTJNbCL0E(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$mnotifySystemSessionOverridesChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$afM8YrbqTbSbMsnn3Xlwb7uDsvs(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monRequestFailedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fdlCw522Ets56XcEJ_JHqHWPNbY(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monDiscoveryPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gWN3D3i6QTJ7BLUuJdyQi_uQ3OE(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;ILandroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monSessionCreatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;ILandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$id7Hy91EI3mB7NFYBC0SEbhoDK0(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monSessionUpdatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j7ISaTLRB7dyWbNK0zAYd7RTBQg(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monInvalidateInstanceOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mrVyffRBx4nsfSpuI3Qk3oigKa0(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monRouteListingPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$weFlKxNxSmpPLGtn_TsVwtAHp3w(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monSessionReleasedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yEXVH5t-ynBsYrqukTeHZOJe_Sw(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monDeviceSuggestionsChangeHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4005
    iput-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-direct {p0}, Landroid/media/IMediaRouter2Manager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/MediaRouter2-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;-><init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V

    return-void
.end method


# virtual methods
.method public blacklist invalidateInstance()V
    .registers 4

    .line 4100
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4101
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4104
    return-void
.end method

.method public blacklist notifyDeviceSuggestionRequested()V
    .registers 4

    .line 4075
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda8;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4076
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4075
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4079
    return-void
.end method

.method public blacklist notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
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

    .line 4064
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4065
    invoke-static {v1, v2, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4064
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4071
    return-void
.end method

.method public blacklist notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 6

    .line 4040
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda9;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4041
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4040
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4046
    return-void
.end method

.method public blacklist notifyRequestFailed(II)V
    .registers 6

    .line 4090
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4094
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4095
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4091
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4090
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4096
    return-void
.end method

.method public blacklist notifyRouteListingPreferenceChange(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 6

    .line 4051
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4052
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4051
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4057
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

    .line 4083
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v2, v2, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    .line 4084
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4083
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4086
    return-void
.end method

.method public blacklist notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 4009
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4013
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4010
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4009
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4015
    return-void
.end method

.method public blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 5

    .line 4030
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4031
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4030
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4035
    return-void
.end method

.method public blacklist notifySessionUpdated(Landroid/media/RoutingSessionInfo;Z)V
    .registers 6

    .line 4020
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4025
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 4021
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4020
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4026
    return-void
.end method

.method public blacklist notifySystemSessionOverridesChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AppId;",
            ">;)V"
        }
    .end annotation

    .line 4108
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 4109
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4108
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4113
    return-void
.end method
