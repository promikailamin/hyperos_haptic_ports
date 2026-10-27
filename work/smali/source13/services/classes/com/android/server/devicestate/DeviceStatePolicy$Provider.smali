.class public interface abstract Lcom/android/server/devicestate/DeviceStatePolicy$Provider;
.super Ljava/lang/Object;
.source "DeviceStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# direct methods
.method public static fromResources(Landroid/content/res/Resources;)Lcom/android/server/devicestate/DeviceStatePolicy$Provider;
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 87
    const v0, 0x104026d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 90
    new-instance v1, Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;

    invoke-direct {v1}, Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;-><init>()V

    return-object v1

    .line 94
    :cond_13
    :try_start_13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStatePolicy$Provider;
    :try_end_1d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_13 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_1d} :catch_1e

    return-object v1

    .line 95
    :catch_1e
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t instantiate class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for config_deviceSpecificDeviceStatePolicyProvider: make sure it has a public zero-argument constructor and implements DeviceStatePolicy.Provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public abstract instantiate(Landroid/content/Context;)Lcom/android/server/devicestate/DeviceStatePolicy;
.end method
