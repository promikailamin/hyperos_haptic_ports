.class Lcom/xiaomi/mirror/MirrorManager$3;
.super Lcom/xiaomi/mirror/IMirrorStateListener$Stub;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/MirrorManager;->initService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/xiaomi/mirror/MirrorManager;

    .line 684
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$3;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IMirrorStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDelegateStateChanged(Z)V
    .registers 3
    .param p1, "delegating"    # Z

    .line 687
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$3;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0, p1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fputmDelegating(Lcom/xiaomi/mirror/MirrorManager;Z)V

    .line 688
    return-void
.end method

.method public blacklist onMouseShareModeStateChanged(Z)V
    .registers 3
    .param p1, "inMouseShareMode"    # Z

    .line 692
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$3;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0, p1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fputmInMouseShareMode(Lcom/xiaomi/mirror/MirrorManager;Z)V

    .line 693
    return-void
.end method
