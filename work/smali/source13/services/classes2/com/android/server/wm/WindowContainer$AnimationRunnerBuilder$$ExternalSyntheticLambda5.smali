.class public final synthetic Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainerInsetsSourceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Lcom/android/server/wm/WindowContainerInsetsSourceProvider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->lambda$hideInsetSourceViewOverflows$1$com-android-server-wm-WindowContainer$AnimationRunnerBuilder(Lcom/android/server/wm/WindowContainerInsetsSourceProvider;)V

    return-void
.end method
