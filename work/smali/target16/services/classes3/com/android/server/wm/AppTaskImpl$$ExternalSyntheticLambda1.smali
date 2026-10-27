.class public final synthetic Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppTaskImpl;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:Lcom/android/server/wm/Task;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/IRemoteCallback;

.field public final synthetic f$6:Lcom/android/server/wm/TransitionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppTaskImpl;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;IILandroid/os/IRemoteCallback;Lcom/android/server/wm/TransitionController;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppTaskImpl;

    iput-object p2, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/Transition;

    iput-object p3, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/Task;

    iput p4, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$5:Landroid/os/IRemoteCallback;

    iput-object p7, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$6:Lcom/android/server/wm/TransitionController;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppTaskImpl;

    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/Transition;

    iget-object v2, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/Task;

    iget v3, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$4:I

    iget-object v5, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$5:Landroid/os/IRemoteCallback;

    iget-object v6, p0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;->f$6:Lcom/android/server/wm/TransitionController;

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/AppTaskImpl;->$r8$lambda$eFjoqfbR5yidy3tTjZKNgckXlZs(Lcom/android/server/wm/AppTaskImpl;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;IILandroid/os/IRemoteCallback;Lcom/android/server/wm/TransitionController;Z)V

    return-void
.end method
