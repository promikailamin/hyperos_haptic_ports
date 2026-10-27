.class final Landroid/media/MediaRouter2$ControllerCreationRequest;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControllerCreationRequest"
.end annotation


# instance fields
.field public final blacklist mManagerRequestId:J

.field public final blacklist mOldController:Landroid/media/MediaRouter2$RoutingController;

.field public final blacklist mRequestId:I

.field public final blacklist mRoute:Landroid/media/MediaRoute2Info;


# direct methods
.method constructor blacklist <init>(IJLandroid/media/MediaRoute2Info;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 6

    .line 2813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2814
    iput p1, p0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRequestId:I

    .line 2815
    iput-wide p2, p0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mManagerRequestId:J

    .line 2816
    const-string p1, "route must not be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRoute2Info;

    iput-object p1, p0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 2817
    nop

    .line 2818
    const-string p1, "oldController must not be null"

    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter2$RoutingController;

    iput-object p1, p0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mOldController:Landroid/media/MediaRouter2$RoutingController;

    .line 2819
    return-void
.end method
