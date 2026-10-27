.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/TaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/TaskInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;->f$0:Landroid/app/TaskInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;->f$0:Landroid/app/TaskInfo;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p1}, Lcom/android/server/wm/Task;->lambda$fillTaskInfo$17(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
