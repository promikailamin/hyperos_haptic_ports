.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Lcom/android/server/wm/Transition$ReadyCondition;

.field public final synthetic f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$5:Landroid/window/RemoteTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition$ReadyCondition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$1:Landroid/window/WindowContainerTransaction;

    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Transition;

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/Transition$ReadyCondition;

    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iput-object p6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$5:Landroid/window/RemoteTransition;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$1:Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Transition;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/Transition$ReadyCondition;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$5:Landroid/window/RemoteTransition;

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->$r8$lambda$b9SZ7IAloD3MuUhvAJTdz5zHJ5k(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition$ReadyCondition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;Z)V

    return-void
.end method
