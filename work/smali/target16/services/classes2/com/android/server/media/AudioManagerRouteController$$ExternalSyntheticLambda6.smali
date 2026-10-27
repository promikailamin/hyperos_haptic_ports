.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/AudioManagerRouteController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    check-cast p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    invoke-static {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->$r8$lambda$mMOeBwwcy3dF-002GGE275r-zYk(Lcom/android/server/media/AudioManagerRouteController;Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)V

    return-void
.end method
