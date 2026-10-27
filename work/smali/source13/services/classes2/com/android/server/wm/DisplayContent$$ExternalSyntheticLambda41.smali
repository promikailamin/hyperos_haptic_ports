.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$4:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;->f$4:Z

    move-object v5, p1

    check-cast v5, Lcom/android/server/wm/Task;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->lambda$ensureActivitiesVisible$47$com-android-server-wm-DisplayContent(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V

    return-void
.end method
