.class public abstract synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceManagerService.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 669
    invoke-static {}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->values()[Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    :try_start_9
    sget-object v1, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->SERVICE_UNAVAILABLE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    sget-object v1, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->REMOTE_FAILURE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    sget-object v1, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->TIMEOUT:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
