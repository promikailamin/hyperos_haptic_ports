.class public final synthetic Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->lambda$createDetectionResultRemoteCallback$1$com-android-server-ambientcontext-AmbientContextManagerPerUserService(Landroid/os/Bundle;)V

    return-void
.end method
