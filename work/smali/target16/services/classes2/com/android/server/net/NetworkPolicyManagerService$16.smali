.class public Lcom/android/server/net/NetworkPolicyManagerService$16;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 5986
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 5989
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5990
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq p1, v1, :cond_15

    const/16 v1, 0x65

    if-eq p1, v1, :cond_f

    const/4 p0, 0x0

    return p0

    .line 5996
    :cond_f
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->handleUidGone(I)V

    return v2

    .line 5992
    :cond_15
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->handleUidChanged(I)V

    return v2
.end method
