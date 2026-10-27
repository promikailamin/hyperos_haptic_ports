.class public final synthetic Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/SnapshotController$SnapshotManagerService$TaskSnapshotConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/window/TaskSnapshot;


# direct methods
.method public synthetic constructor <init>(ILandroid/window/TaskSnapshot;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda3;->f$1:Landroid/window/TaskSnapshot;

    return-void
.end method


# virtual methods
.method public final accept(Landroid/window/ITaskSnapshotListener;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda3;->f$0:I

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda3;->f$1:Landroid/window/TaskSnapshot;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->$r8$lambda$_APK1TAYluZQA9ZLOKFZ7pKWtuI(ILandroid/window/TaskSnapshot;Landroid/window/ITaskSnapshotListener;)V

    return-void
.end method
