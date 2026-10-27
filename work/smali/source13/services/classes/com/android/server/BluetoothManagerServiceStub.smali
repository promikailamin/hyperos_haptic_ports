.class public interface abstract Lcom/android/server/BluetoothManagerServiceStub;
.super Ljava/lang/Object;
.source "BluetoothManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/BluetoothManagerServiceStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/BluetoothManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BluetoothManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract createNotification(Landroid/content/Context;Ljava/lang/String;Z)V
.end method

.method public getMaskDeviceAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method
