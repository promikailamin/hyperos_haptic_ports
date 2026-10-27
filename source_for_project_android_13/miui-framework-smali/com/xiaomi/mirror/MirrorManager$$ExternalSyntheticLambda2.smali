.class public final synthetic Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:F

.field public final synthetic blacklist f$2:F


# direct methods
.method public synthetic constructor blacklist <init>(IFF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda2;->f$1:F

    iput p3, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda2;->f$2:F

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda2;->f$1:F

    iget v2, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda2;->f$2:F

    check-cast p1, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;

    invoke-static {v0, v1, v2, p1}, Lcom/xiaomi/mirror/MirrorManager;->lambda$deliverCursorPositionChanged$0(IFFLcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;)V

    return-void
.end method
