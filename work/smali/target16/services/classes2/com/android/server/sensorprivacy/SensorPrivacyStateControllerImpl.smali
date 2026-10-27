.class public Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;
.super Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
.source "SensorPrivacyStateControllerImpl.java"


# static fields
.field public static sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;


# instance fields
.field public mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

.field public mListenerHandler:Landroid/os/Handler;

.field public mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;-><init>()V

    .line 49
    const-string/jumbo v0, "sensor_privacy_impl.xml"

    invoke-static {v0}, Lcom/android/server/sensorprivacy/PersistedState;->fromFile(Ljava/lang/String;)Lcom/android/server/sensorprivacy/PersistedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->persistAll()V

    return-void
.end method

.method public static getDefaultSensorState()Lcom/android/server/sensorprivacy/SensorState;
    .registers 2

    .line 63
    new-instance v0, Lcom/android/server/sensorprivacy/SensorState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
    .registers 1

    .line 42
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;-><init>()V

    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 45
    :cond_b
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    return-object v0
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 2

    .line 160
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    return-void
.end method

.method public forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V
    .registers 3

    .line 147
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/PersistedState;->forEachKnownState(Lcom/android/internal/util/function/QuadConsumer;)V

    return-void
.end method

.method public getStateLocked(III)Lcom/android/server/sensorprivacy/SensorState;
    .registers 4

    .line 55
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 57
    new-instance p1, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    return-object p1

    .line 59
    :cond_e
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getDefaultSensorState()Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    return-object p0
.end method

.method public final notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 13

    .line 121
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    if-eqz v1, :cond_27

    .line 122
    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda1;-><init>()V

    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v7, p4}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    .line 122
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->schedulePersistLocked()V

    return-void
.end method

.method public schedulePersistLocked()V
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/PersistedState;->schedulePersist()V

    return-void
.end method

.method public setSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V
    .registers 4

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    if-nez v0, :cond_f

    .line 136
    iput-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 137
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    return-void

    .line 134
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Listener is already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStateLocked(IIIILandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V
    .registers 10

    .line 98
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_22

    const/4 v0, 0x2

    if-ne p4, v0, :cond_11

    .line 101
    invoke-static {p5, p6, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void

    .line 104
    :cond_11
    new-instance v0, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v0, p4}, Lcom/android/server/sensorprivacy/SensorState;-><init>(I)V

    .line 105
    iget-object p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/android/server/sensorprivacy/PersistedState;->setState(IIILcom/android/server/sensorprivacy/SensorState;)Lcom/android/server/sensorprivacy/SensorState;

    .line 106
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 107
    invoke-static {p5, p6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void

    .line 111
    :cond_22
    invoke-virtual {v0, p4}, Lcom/android/server/sensorprivacy/SensorState;->setState(I)Z

    move-result p4

    if-eqz p4, :cond_2f

    .line 112
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 113
    invoke-static {p5, p6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void

    .line 116
    :cond_2f
    invoke-static {p5, p6, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void
.end method

.method public setStateLocked(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V
    .registers 10

    .line 71
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    if-nez p4, :cond_10

    .line 74
    invoke-static {p5, p6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void

    :cond_10
    if-eqz p4, :cond_23

    .line 77
    new-instance p4, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {p4, v2}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/PersistedState;->setState(IIILcom/android/server/sensorprivacy/SensorState;)Lcom/android/server/sensorprivacy/SensorState;

    .line 79
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 80
    invoke-static {p5, p6, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void

    .line 84
    :cond_23
    invoke-virtual {v0, p4}, Lcom/android/server/sensorprivacy/SensorState;->setEnabled(Z)Z

    move-result p4

    if-eqz p4, :cond_30

    .line 85
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 86
    invoke-static {p5, p6, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void

    .line 89
    :cond_30
    invoke-static {p5, p6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void
.end method
