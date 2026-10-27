.class public interface abstract Lcom/android/server/location/provider/AmapCustomStub;
.super Ljava/lang/Object;
.source "AmapCustomStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/location/provider/AmapCustomStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/location/provider/AmapCustomStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/AmapCustomStub;

    return-object v0
.end method


# virtual methods
.method public onSpecialExtraCommand(Lcom/android/server/location/provider/LocationProviderManager;ILjava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "manager"    # Lcom/android/server/location/provider/LocationProviderManager;
    .param p2, "uid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setLastSvStatus(Landroid/location/GnssStatus;)V
.end method
