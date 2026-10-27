.class public final synthetic Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mirror/MirrorManager;->lambda$deliverDragFinish$2(Ljava/lang/String;ZLcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;)V

    return-void
.end method
