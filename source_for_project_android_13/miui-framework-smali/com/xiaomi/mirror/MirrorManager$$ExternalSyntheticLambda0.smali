.class public final synthetic Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/ClipData;

.field public final synthetic blacklist f$1:Landroid/graphics/Bitmap;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/ClipData;Landroid/graphics/Bitmap;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/ClipData;

    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/ClipData;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    check-cast v5, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mirror/MirrorManager;->lambda$deliverDragStart$1(Landroid/content/ClipData;Landroid/graphics/Bitmap;IIILcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;)V

    return-void
.end method
