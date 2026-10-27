.class public final synthetic Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda3;->f$0:Lcom/xiaomi/mirror/MirrorManager;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda3;->f$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->$r8$lambda$_L6mn_j8ShVWyC-ojcWXrhbQPxU(Lcom/xiaomi/mirror/MirrorManager;)V

    return-void
.end method
