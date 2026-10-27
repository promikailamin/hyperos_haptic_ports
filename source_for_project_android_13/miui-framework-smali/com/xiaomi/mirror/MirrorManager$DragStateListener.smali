.class final Lcom/xiaomi/mirror/MirrorManager$DragStateListener;
.super Lcom/xiaomi/mirror/IDragListener$Stub;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DragStateListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method private constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2

    .line 1302
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$DragStateListener;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IDragListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager;Lcom/xiaomi/mirror/MirrorManager$DragStateListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/MirrorManager$DragStateListener;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onDragFinish(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dragResult"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1311
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$DragStateListener;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$mdeliverDragFinish(Lcom/xiaomi/mirror/MirrorManager;Ljava/lang/String;Z)V

    .line 1312
    return-void
.end method

.method public blacklist onDragStart(Landroid/content/ClipData;IIILandroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "flag"    # I
    .param p5, "shadowImage"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$DragStateListener;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$mdeliverDragStart(Lcom/xiaomi/mirror/MirrorManager;Landroid/content/ClipData;IIILandroid/graphics/Bitmap;)V

    .line 1307
    return-void
.end method
