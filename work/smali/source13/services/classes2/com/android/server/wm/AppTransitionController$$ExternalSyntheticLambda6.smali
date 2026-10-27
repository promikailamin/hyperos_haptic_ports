.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method public synthetic constructor <init>([Landroid/window/ITaskFragmentOrganizer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda6;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda6;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppTransitionController;->lambda$findTaskFragmentOrganizer$2([Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)Z

    move-result p1

    return p1
.end method
