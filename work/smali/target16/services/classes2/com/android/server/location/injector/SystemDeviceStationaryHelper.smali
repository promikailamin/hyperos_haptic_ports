.class public Lcom/android/server/location/injector/SystemDeviceStationaryHelper;
.super Lcom/android/server/location/injector/DeviceStationaryHelper;
.source "SystemDeviceStationaryHelper.java"


# instance fields
.field public mDeviceIdle:Lcom/android/server/DeviceIdleInternal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/server/location/injector/DeviceStationaryHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemReady()V
    .registers 2

    .line 37
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    return-void
.end method
