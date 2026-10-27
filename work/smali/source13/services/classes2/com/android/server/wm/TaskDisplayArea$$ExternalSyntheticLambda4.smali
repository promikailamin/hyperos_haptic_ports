.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    return-void
.end method


# virtual methods
.method public final onPreAssignChildLayers()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->lambda$onParentChanged$6$com-android-server-wm-TaskDisplayArea()V

    return-void
.end method
