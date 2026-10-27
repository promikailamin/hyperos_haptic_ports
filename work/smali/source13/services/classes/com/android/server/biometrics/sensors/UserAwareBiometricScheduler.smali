.class public Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
.super Lcom/android/server/biometrics/sensors/BiometricScheduler;
.source "UserAwareBiometricScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;,
        Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;,
        Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;
    }
.end annotation


# static fields
.field private static final BASE_TAG:Ljava/lang/String; = "UaBiometricScheduler"


# instance fields
.field private final mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

.field private mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/StopUserClient<",
            "*>;"
        }
    .end annotation
.end field

.field private final mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V
    .registers 15
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "sensorType"    # I
    .param p3, "gestureAvailabilityDispatcher"    # Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .param p4, "currentUserRetriever"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;
    .param p5, "userSwitchCallback"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 104
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v5

    .line 107
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v8

    .line 104
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;-><init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;Lcom/android/server/biometrics/sensors/CoexCoordinator;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;Lcom/android/server/biometrics/sensors/CoexCoordinator;)V
    .registers 18
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sensorType"    # I
    .param p4, "gestureAvailabilityDispatcher"    # Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .param p5, "biometricService"    # Landroid/hardware/biometrics/IBiometricService;
    .param p6, "currentUserRetriever"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;
    .param p7, "userSwitchCallback"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;
    .param p8, "coexCoordinator"    # Lcom/android/server/biometrics/sensors/CoexCoordinator;

    .line 92
    move-object v8, p0

    const/16 v6, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;ILcom/android/server/biometrics/sensors/CoexCoordinator;)V

    .line 95
    move-object v0, p6

    iput-object v0, v8, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

    .line 96
    move-object/from16 v1, p7

    iput-object v1, v8, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 97
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UaBiometricScheduler/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mBiometricTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUserStopped()V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    if-nez v0, :cond_e

    .line 161
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected onUserStopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 165
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnUserStopped]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/StopUserClient;->onUserStopped()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 168
    return-void
.end method

.method protected startNextOperationIfIdle()V
    .registers 9

    .line 117
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz v0, :cond_21

    .line 118
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not idle, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 122
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No operations, returning to idle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 126
    :cond_33
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;->getCurrentUserId()I

    move-result v0

    .line 127
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getTargetUserId()I

    move-result v1

    .line 129
    .local v1, "nextUserId":I
    if-ne v1, v0, :cond_4c

    .line 130
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    goto/16 :goto_ee

    .line 131
    :cond_4c
    const/16 v2, -0x2710

    const/4 v3, 0x2

    if-ne v0, v2, :cond_81

    .line 132
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 133
    invoke-interface {v2, v1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;->getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;

    move-result-object v2

    .line 134
    .local v2, "startClient":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    new-instance v4, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;

    invoke-direct {v4, p0, v2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 137
    .local v4, "finishedCallback":Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Starting User] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v5, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-direct {v5, v2, v4, v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V

    iput-object v5, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 140
    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 141
    .end local v2    # "startClient":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .end local v4    # "finishedCallback":Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
    goto :goto_ee

    .line 142
    :cond_81
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    if-eqz v2, :cond_a2

    .line 143
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Waiting for StopUser] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 145
    :cond_a2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 146
    invoke-interface {v2, v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;->getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 147
    new-instance v4, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;

    invoke-direct {v4, p0, v2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    move-object v2, v4

    .line 150
    .local v2, "finishedCallback":Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Stopping User] current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", next: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v4, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-direct {v4, v5, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 154
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v3, v2}, Lcom/android/server/biometrics/sensors/StopUserClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 157
    .end local v2    # "finishedCallback":Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
    :goto_ee
    return-void
.end method
