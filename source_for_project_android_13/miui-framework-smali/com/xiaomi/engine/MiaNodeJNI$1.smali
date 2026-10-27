.class Lcom/xiaomi/engine/MiaNodeJNI$1;
.super Ljava/lang/Object;
.source "MiaNodeJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/engine/MiaNodeJNI;->tryToCloseNode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/engine/MiaNodeJNI;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/engine/MiaNodeJNI;)V
    .registers 2
    .param p1, "this$0"    # Lcom/xiaomi/engine/MiaNodeJNI;

    .line 52
    iput-object p1, p0, Lcom/xiaomi/engine/MiaNodeJNI$1;->this$0:Lcom/xiaomi/engine/MiaNodeJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI$1;->this$0:Lcom/xiaomi/engine/MiaNodeJNI;

    invoke-static {}, Lcom/xiaomi/engine/MiaNodeJNI;->-$$Nest$sfgetsType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/MiaNodeJNI;->-$$Nest$mdeInitialize(Lcom/xiaomi/engine/MiaNodeJNI;I)V

    .line 56
    return-void
.end method
