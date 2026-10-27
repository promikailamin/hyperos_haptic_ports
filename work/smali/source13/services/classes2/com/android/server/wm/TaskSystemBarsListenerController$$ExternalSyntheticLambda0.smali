.class public final synthetic Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;IZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    iput p2, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    iget v1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/TaskSystemBarsListenerController;->lambda$dispatchTransientSystemBarVisibilityChanged$0(Ljava/util/HashSet;IZZ)V

    return-void
.end method
