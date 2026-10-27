.class public final synthetic Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .line 0
    check-cast p1, Landroid/media/MediaRouter2;

    check-cast p2, Landroid/media/RoutingSessionInfo;

    check-cast p3, Landroid/media/MediaRoute2Info;

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p5, Landroid/media/RoutingChangeInfo;

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-wide p3, v0

    invoke-virtual/range {p0 .. p5}, Landroid/media/MediaRouter2;->onRequestCreateControllerByManagerOnHandler(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;JLandroid/media/RoutingChangeInfo;)V

    return-void
.end method
