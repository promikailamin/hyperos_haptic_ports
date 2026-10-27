.class public final synthetic Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaRouter2$ControllerCallbackRecord;

.field public final synthetic blacklist f$1:Landroid/media/MediaRouter2$RoutingController;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaRouter2$ControllerCallbackRecord;

    iput-object p2, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$1:Landroid/media/MediaRouter2$RoutingController;

    iput-boolean p3, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaRouter2$ControllerCallbackRecord;

    iget-object v1, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$1:Landroid/media/MediaRouter2$RoutingController;

    iget-boolean v2, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/media/MediaRouter2;->lambda$notifyControllerUpdated$14(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Z)V

    return-void
.end method
