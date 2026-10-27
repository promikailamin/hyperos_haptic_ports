.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;->f$1:Landroid/window/WindowContainerTransaction;

    iput p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;->f$1:Landroid/window/WindowContainerTransaction;

    iget v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$1$com-android-server-wm-WindowOrganizerController(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    return-void
.end method
