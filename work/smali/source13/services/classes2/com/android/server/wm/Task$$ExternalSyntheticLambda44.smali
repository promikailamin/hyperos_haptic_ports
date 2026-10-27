.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/wm/Task;

    iput p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/wm/Task;

    iget v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->lambda$setWindowingMode$21$com-android-server-wm-Task(IZ)V

    return-void
.end method
