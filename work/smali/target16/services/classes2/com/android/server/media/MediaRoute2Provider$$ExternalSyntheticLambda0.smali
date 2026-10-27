.class public final synthetic Lcom/android/server/media/MediaRoute2Provider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:Landroid/media/RoutingSessionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/media/MediaRoute2Provider$$ExternalSyntheticLambda0;->f$1:Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider$$ExternalSyntheticLambda0;->f$1:Landroid/media/RoutingSessionInfo;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/media/MediaRoute2Provider;->$r8$lambda$4Dlyv3Wrh0IepxUkvqKhJWxiLDU(Landroid/util/ArrayMap;Landroid/media/RoutingSessionInfo;Ljava/lang/String;)V

    return-void
.end method
