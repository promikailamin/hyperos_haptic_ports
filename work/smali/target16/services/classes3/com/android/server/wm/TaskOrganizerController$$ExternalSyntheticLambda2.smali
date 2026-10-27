.class public final synthetic Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController;

.field public final synthetic f$1:Landroid/window/ITaskOrganizer;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;II)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$1:Landroid/window/ITaskOrganizer;

    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    iput p5, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$1:Landroid/window/ITaskOrganizer;

    iget v2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$4:I

    iget v5, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/TaskOrganizerController;->$r8$lambda$samLIGUg6FxvtHxEHwKtseEbzTY(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;II)V

    return-void
.end method
