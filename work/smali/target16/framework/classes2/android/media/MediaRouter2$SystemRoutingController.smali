.class Landroid/media/MediaRouter2$SystemRoutingController;
.super Landroid/media/MediaRouter2$RoutingController;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemRoutingController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2609
    iput-object p1, p0, Landroid/media/MediaRouter2$SystemRoutingController;->this$0:Landroid/media/MediaRouter2;

    .line 2610
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 2611
    return-void
.end method


# virtual methods
.method public whitelist isReleased()Z
    .registers 2

    .line 2616
    const/4 v0, 0x0

    return v0
.end method

.method blacklist releaseInternal(Z)V
    .registers 4

    .line 2629
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableOutputSwitcherPersonalAudioSharing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2630
    iget-object v0, p0, Landroid/media/MediaRouter2$SystemRoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmImpl(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Impl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->releaseSession(ZZLandroid/media/MediaRouter2$RoutingController;)V

    .line 2635
    :cond_10
    return-void
.end method

.method blacklist scheduleRelease()Z
    .registers 2

    .line 2622
    const/4 v0, 0x1

    return v0
.end method
