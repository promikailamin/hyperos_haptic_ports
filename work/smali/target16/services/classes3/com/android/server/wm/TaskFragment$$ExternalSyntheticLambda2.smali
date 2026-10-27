.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFragment;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskFragment;

    iput-object p2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskFragment;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/ActivityRecord;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/TaskFragment;->$r8$lambda$hvPUjbhfwlWDy9_vsGw_5OH6Bw8(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method
