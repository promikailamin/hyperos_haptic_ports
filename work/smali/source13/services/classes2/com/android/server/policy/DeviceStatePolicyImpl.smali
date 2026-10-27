.class public final Lcom/android/server/policy/DeviceStatePolicyImpl;
.super Lcom/android/server/devicestate/DeviceStatePolicy;
.source "DeviceStatePolicyImpl.java"


# instance fields
.field private final mProvider:Lcom/android/server/devicestate/DeviceStateProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStatePolicy;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object v0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/DeviceStateProviderImpl;->create(Landroid/content/Context;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/devicestate/DeviceStateProvider;

    .line 36
    return-void
.end method


# virtual methods
.method public configureDeviceForState(ILjava/lang/Runnable;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "onComplete"    # Ljava/lang/Runnable;

    .line 44
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 45
    return-void
.end method

.method public getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/devicestate/DeviceStateProvider;

    return-object v0
.end method
