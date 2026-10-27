.class public final synthetic Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$handleDeviceIdleModeChangedUL$4$com-android-server-net-NetworkPolicyManagerService(I)V

    return-void
.end method
