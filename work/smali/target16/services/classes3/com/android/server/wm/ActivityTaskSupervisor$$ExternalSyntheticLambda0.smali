.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:Lcom/android/server/wm/Task;

.field public final synthetic f$3:Lcom/android/server/wm/LockTaskController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/LockTaskController;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/Transition;

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/LockTaskController;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/Transition;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/LockTaskController;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->$r8$lambda$FDJ_j_FQY5yMSxziXCj2rFxBBHI(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/LockTaskController;Z)V

    return-void
.end method
