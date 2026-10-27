.class public interface abstract Lcom/android/server/NetworkManagementServiceStub;
.super Ljava/lang/Object;
.source "NetworkManagementServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/NetworkManagementServiceStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/NetworkManagementServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract getMiuiNetworkManager()Landroid/os/IBinder;
.end method

.method public abstract setPidForPackage(Ljava/lang/String;II)V
.end method

.method public abstract showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
.end method
