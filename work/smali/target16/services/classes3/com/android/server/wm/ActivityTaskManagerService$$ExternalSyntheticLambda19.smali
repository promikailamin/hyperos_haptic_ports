.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->$r8$lambda$D1yCx3DGpPhOuf94PteXcNnICXc(Ljava/lang/Runnable;Z)V

    return-void
.end method
