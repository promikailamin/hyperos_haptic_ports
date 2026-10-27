.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/Task;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionController;->lambda$overrideWithTaskFragmentRemoteAnimation$4(Lcom/android/server/wm/Task;)V

    return-void
.end method
