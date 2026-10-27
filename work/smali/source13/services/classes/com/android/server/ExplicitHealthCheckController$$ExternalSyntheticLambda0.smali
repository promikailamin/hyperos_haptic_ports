.class public final synthetic Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ExplicitHealthCheckController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExplicitHealthCheckController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    invoke-virtual {v0, p1}, Lcom/android/server/ExplicitHealthCheckController;->lambda$initState$6$com-android-server-ExplicitHealthCheckController(Landroid/os/Bundle;)V

    return-void
.end method
