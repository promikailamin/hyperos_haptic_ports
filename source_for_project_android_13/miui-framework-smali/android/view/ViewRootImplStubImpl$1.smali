.class Landroid/view/ViewRootImplStubImpl$1;
.super Ljava/util/TimerTask;
.source "ViewRootImplStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImplStubImpl;->setScreenAntiBurn(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImplStubImpl;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImplStubImpl;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImplStubImpl;

    .line 306
    iput-object p1, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    iput-object p2, p0, Landroid/view/ViewRootImplStubImpl$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 309
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 310
    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v0}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCursor(Landroid/view/ViewRootImplStubImpl;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fputmCursor(Landroid/view/ViewRootImplStubImpl;I)V

    .line 312
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v0}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCursor(Landroid/view/ViewRootImplStubImpl;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    .line 313
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v0}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCurOffset(Landroid/view/ViewRootImplStubImpl;)[I

    move-result-object v0

    aput v1, v0, v1

    .line 314
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v0}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCurOffset(Landroid/view/ViewRootImplStubImpl;)[I

    move-result-object v0

    aput v1, v0, v2

    .line 315
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v0}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmQuadrant(Landroid/view/ViewRootImplStubImpl;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fputmQuadrant(Landroid/view/ViewRootImplStubImpl;I)V

    .line 316
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fputmIsLongApex(Landroid/view/ViewRootImplStubImpl;Z)V

    goto :goto_95

    .line 318
    :cond_3f
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v0}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCursor(Landroid/view/ViewRootImplStubImpl;)I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v3, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v3}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmQuadrant(Landroid/view/ViewRootImplStubImpl;)I

    move-result v3

    add-int/2addr v0, v3

    const/4 v3, 0x4

    rem-int/2addr v0, v3

    .line 319
    .local v0, "pos":I
    iget-object v4, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v4}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCurOffset(Landroid/view/ViewRootImplStubImpl;)[I

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v5}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetDIRECTION_VECTOR(Landroid/view/ViewRootImplStubImpl;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    aget v5, v5, v1

    iget-object v6, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v6}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmIsLongApex(Landroid/view/ViewRootImplStubImpl;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_6a

    move v6, v3

    goto :goto_6b

    :cond_6a
    move v6, v7

    :goto_6b
    mul-int/2addr v5, v6

    aput v5, v4, v1

    .line 320
    iget-object v4, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v4}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCurOffset(Landroid/view/ViewRootImplStubImpl;)[I

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v5}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetDIRECTION_VECTOR(Landroid/view/ViewRootImplStubImpl;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    aget v5, v5, v2

    iget-object v6, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v6}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmIsLongApex(Landroid/view/ViewRootImplStubImpl;)Z

    move-result v6

    if-eqz v6, :cond_87

    goto :goto_88

    :cond_87
    move v3, v7

    :goto_88
    mul-int/2addr v5, v3

    aput v5, v4, v2

    .line 321
    iget-object v3, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v3}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmIsLongApex(Landroid/view/ViewRootImplStubImpl;)Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-static {v3, v4}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fputmIsLongApex(Landroid/view/ViewRootImplStubImpl;Z)V

    .line 323
    .end local v0    # "pos":I
    :goto_95
    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    iget-object v3, p0, Landroid/view/ViewRootImplStubImpl$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCurOffset(Landroid/view/ViewRootImplStubImpl;)[I

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v5}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCurOffset(Landroid/view/ViewRootImplStubImpl;)[I

    move-result-object v5

    aget v5, v5, v2

    invoke-static {v0, v3, v4, v5}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$mdispatchOffsetForScreenAntiBurn(Landroid/view/ViewRootImplStubImpl;Landroid/view/View;II)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurOffset=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v3}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCurOffset(Landroid/view/ViewRootImplStubImpl;)[I

    move-result-object v3

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImplStubImpl$1;->this$0:Landroid/view/ViewRootImplStubImpl;

    invoke-static {v1}, Landroid/view/ViewRootImplStubImpl;->-$$Nest$fgetmCurOffset(Landroid/view/ViewRootImplStubImpl;)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiBurn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method
