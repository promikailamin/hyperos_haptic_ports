.class Lcom/miui/mishare/app/view/MiShareTransmissionView$3$1;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView$3;->onConnectSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$3;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/miui/mishare/app/view/MiShareTransmissionView$3;

    .line 227
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 230
    const-string v0, "MiShareTransmissionView"

    const-string v1, "onScreenConnectSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$3;

    iget-object v0, v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setScreenThrowHighLight(Z)V

    .line 232
    return-void
.end method
