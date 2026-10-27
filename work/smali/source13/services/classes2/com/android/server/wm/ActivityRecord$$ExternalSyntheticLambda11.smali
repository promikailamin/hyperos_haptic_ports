.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/StartingData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/StartingSurfaceController$StartingSurface;ZLcom/android/server/wm/StartingData;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    iput-boolean p3, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;->f$3:Lcom/android/server/wm/StartingData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;->f$3:Lcom/android/server/wm/StartingData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->lambda$removeStartingWindowAnimation$6$com-android-server-wm-ActivityRecord(Lcom/android/server/wm/StartingSurfaceController$StartingSurface;ZLcom/android/server/wm/StartingData;)V

    return-void
.end method
