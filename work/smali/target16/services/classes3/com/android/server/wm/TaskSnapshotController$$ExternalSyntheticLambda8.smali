.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/Task;

    iput-wide p3, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;->f$2:J

    iput-object p5, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;->f$3:Lcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/Task;

    iget-wide v2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;->f$2:J

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;->f$3:Lcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/wm/TaskSnapshotController;->$r8$lambda$6q1v0QH4WWJwQbmjLBY6u-z_xMw(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V

    return-void
.end method
