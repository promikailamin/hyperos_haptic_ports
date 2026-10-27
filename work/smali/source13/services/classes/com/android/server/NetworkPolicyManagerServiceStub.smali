.class public interface abstract Lcom/android/server/NetworkPolicyManagerServiceStub;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/NetworkPolicyManagerServiceStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/NetworkPolicyManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkPolicyManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract initMiuiNMS(Landroid/content/Context;)V
.end method

.method public abstract miuiNotifyInterfaceClassActivity(IZJIZ)Z
.end method

.method public abstract setOemNetd(Landroid/net/INetd;)V
.end method

.method public abstract systemReady()V
.end method
