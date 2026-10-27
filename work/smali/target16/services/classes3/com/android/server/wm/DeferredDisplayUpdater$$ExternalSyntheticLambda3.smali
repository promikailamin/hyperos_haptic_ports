.class public final synthetic Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeferredDisplayUpdater;ZLcom/android/server/wm/Transition;Ljava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    iput-boolean p2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/Transition;

    iput-object p4, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    iget-boolean v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/Transition;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/DeferredDisplayUpdater;->$r8$lambda$EZQ6K2U_Mo4eFXuwvhvw0yaau6c(Lcom/android/server/wm/DeferredDisplayUpdater;ZLcom/android/server/wm/Transition;Ljava/lang/Runnable;Z)V

    return-void
.end method
