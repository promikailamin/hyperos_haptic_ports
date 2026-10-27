.class public final synthetic Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->lambda$resolveRotationLocked$0$com-android-server-rotationresolver-RotationResolverManagerPerUserService()V

    return-void
.end method
