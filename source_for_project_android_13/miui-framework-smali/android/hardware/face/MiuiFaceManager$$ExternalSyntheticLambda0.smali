.class public final synthetic Landroid/hardware/face/MiuiFaceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/face/MiuiFaceManager;

.field public final synthetic blacklist f$1:Landroid/hardware/face/FaceManager$AuthenticationCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/FaceManager$AuthenticationCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/MiuiFaceManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/face/MiuiFaceManager;

    iput-object p2, p0, Landroid/hardware/face/MiuiFaceManager$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/face/MiuiFaceManager;

    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/face/MiuiFaceManager;->lambda$authenticate$0$android-hardware-face-MiuiFaceManager(Landroid/hardware/face/FaceManager$AuthenticationCallback;)V

    return-void
.end method
