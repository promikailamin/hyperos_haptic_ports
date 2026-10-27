.class public interface abstract Landroid/bluetooth/BluetoothSocketStub;
.super Ljava/lang/Object;
.source "BluetoothSocketStub.java"


# direct methods
.method public static blacklist get()Landroid/bluetooth/BluetoothSocketStub;
    .registers 1

    .line 23
    const-class v0, Landroid/bluetooth/BluetoothSocketStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocketStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist startRecord(ZI)V
.end method
