.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Task;

    iput-wide p3, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Task;

    iget-wide v2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;->f$2:J

    check-cast p1, Lcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/wm/TaskSnapshotController;->$r8$lambda$N_rBg59kQetcUWv8FDEyw95qSls(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V

    return-void
.end method
