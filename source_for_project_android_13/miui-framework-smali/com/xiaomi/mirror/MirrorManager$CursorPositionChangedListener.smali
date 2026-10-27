.class final Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;
.super Lcom/xiaomi/mirror/ICursorPositionChangedListener$Stub;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorPositionChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method private constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2

    .line 1080
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {p0}, Lcom/xiaomi/mirror/ICursorPositionChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager;Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onCursorPositionChanged(IFF)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$mdeliverCursorPositionChanged(Lcom/xiaomi/mirror/MirrorManager;IFF)V

    .line 1084
    return-void
.end method
