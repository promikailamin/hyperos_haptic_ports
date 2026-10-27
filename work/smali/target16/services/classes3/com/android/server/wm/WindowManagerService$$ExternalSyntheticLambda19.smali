.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/wm/TransitionController;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Transition;IILcom/android/server/wm/TransitionController;Ljava/lang/Runnable;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/wm/Transition;

    iput p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$2:I

    iput p4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$3:I

    iput-object p5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$4:Lcom/android/server/wm/TransitionController;

    iput-object p6, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/wm/Transition;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$2:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$3:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$4:Lcom/android/server/wm/TransitionController;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$5:Ljava/lang/Runnable;

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$OwDuHh4OEjt1gfTuvq8ylDuT8lY(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Transition;IILcom/android/server/wm/TransitionController;Ljava/lang/Runnable;Z)V

    return-void
.end method
