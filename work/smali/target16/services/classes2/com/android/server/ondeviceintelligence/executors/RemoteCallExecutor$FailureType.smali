.class public final enum Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;
.super Ljava/lang/Enum;
.source "RemoteCallExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

.field public static final enum REMOTE_FAILURE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

.field public static final enum TIMEOUT:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;


# direct methods
.method public static synthetic $values()[Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;
    .registers 3

    .line 36
    sget-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->SERVICE_UNAVAILABLE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    sget-object v1, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->REMOTE_FAILURE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    sget-object v2, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->TIMEOUT:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->SERVICE_UNAVAILABLE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    .line 38
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    const-string v1, "REMOTE_FAILURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->REMOTE_FAILURE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    .line 39
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->TIMEOUT:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    .line 36
    invoke-static {}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->$values()[Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    move-result-object v0

    sput-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->$VALUES:[Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;
    .registers 2

    .line 36
    const-class v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;
    .registers 1

    .line 36
    sget-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->$VALUES:[Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    invoke-virtual {v0}, [Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    return-object v0
.end method
