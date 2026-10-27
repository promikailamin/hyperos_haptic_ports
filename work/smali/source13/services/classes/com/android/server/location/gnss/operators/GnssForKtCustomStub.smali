.class public interface abstract Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;
.super Ljava/lang/Object;
.source "GnssForKtCustomStub.java"


# static fields
.field public static final AGPS_TYPE_SUPL:I = 0x1

.field public static final KT_EXTRA_COMMAND_ACTIVATE_AGPS:Ljava/lang/String; = "activateAGPS"

.field public static final KT_EXTRA_COMMAND_ACTIVATE_GPS:Ljava/lang/String; = "activateGPS"

.field public static final KT_EXTRA_COMMAND_DEACTIVATE_AGPS:Ljava/lang/String; = "deactivateAGPS"

.field public static final KT_EXTRA_COMMAND_DEACTIVATE_GPS:Ljava/lang/String; = "deactivateGPS"

.field public static final KT_EXTRA_COMMAND_GET_MODE:Ljava/lang/String; = "getMode"

.field public static final KT_EXTRA_COMMAND_SET_MODE:Ljava/lang/String; = "setMode"

.field public static final KT_EXTRA_COMMAND_SET_NATIVE_SERVER:Ljava/lang/String; = "setNativeServer"

.field public static final KT_EXTRA_COMMAND_SET_OLLEH_SERVER:Ljava/lang/String; = "setOllehServer"


# direct methods
.method public static getInstance()Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/operators/GnssForKtCustomStub;

    return-object v0
.end method


# virtual methods
.method public isKtGlobalSystem()Z
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedSetSuplHostPort()Z
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onExtraCommand(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/android/server/location/gnss/GnssConfiguration;Lcom/android/server/location/gnss/hal/GnssNative;)V
.end method
