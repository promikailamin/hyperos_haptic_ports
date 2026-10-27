.class Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;
.super Ljava/lang/Object;
.source "Vcn.java"

# interfaces
.implements Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnGatewayStatusCallbackImpl"
.end annotation


# instance fields
.field public final mGatewayConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/Vcn;Landroid/net/vcn/VcnGatewayConnectionConfig;)V
    .registers 3
    .param p2, "gatewayConnectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 690
    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p2, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->mGatewayConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 692
    return-void
.end method


# virtual methods
.method public onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "gatewayConnectionName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "exceptionClass"    # Ljava/lang/String;
    .param p4, "exceptionMessage"    # Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-static {v0}, Lcom/android/server/vcn/Vcn;->-$$Nest$fgetmVcnCallback(Lcom/android/server/vcn/Vcn;)Lcom/android/server/VcnManagementService$VcnCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/VcnManagementService$VcnCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public onQuit()V
    .registers 4

    .line 696
    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->mGatewayConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/vcn/Vcn;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    .line 697
    return-void
.end method

.method public onSafeModeStatusChanged()V
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    .line 702
    return-void
.end method
