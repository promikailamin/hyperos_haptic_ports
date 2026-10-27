.class public final synthetic Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsStateController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsStateController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->lambda$getSourceProvider$1$com-android-server-wm-InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p1

    return-object p1
.end method
