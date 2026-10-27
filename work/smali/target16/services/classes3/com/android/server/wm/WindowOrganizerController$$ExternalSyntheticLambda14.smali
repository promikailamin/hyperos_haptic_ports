.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/TaskFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/wm/TaskFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p0}, Lcom/android/server/wm/WindowOrganizerController;->$r8$lambda$Dh6K-ZEVc8HCgFBye2JhFi18Idw(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method
