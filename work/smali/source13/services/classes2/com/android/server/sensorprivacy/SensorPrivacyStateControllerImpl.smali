.class Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;
.super Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
.source "SensorPrivacyStateControllerImpl.java"


# static fields
.field private static final SENSOR_PRIVACY_XML_FILE:Ljava/lang/String; = "sensor_privacy_impl.xml"

.field private static sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;


# instance fields
.field private mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;-><init>()V

    .line 45
    const-string/jumbo v0, "sensor_privacy_impl.xml"

    invoke-static {v0}, Lcom/android/server/sensorprivacy/PersistedState;->fromFile(Ljava/lang/String;)Lcom/android/server/sensorprivacy/PersistedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->persistAll()V

    .line 47
    return-void
.end method

.method private static getDefaultSensorState()Lcom/android/server/sensorprivacy/SensorState;
    .registers 2

    .line 59
    new-instance v0, Lcom/android/server/sensorprivacy/SensorState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    return-object v0
.end method

.method static getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
    .registers 1

    .line 38
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;-><init>()V

    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 41
    :cond_b
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    return-object v0
.end method

.method private notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 13
    .param p1, "toggleType"    # I
    .param p2, "userId"    # I
    .param p3, "sensor"    # I
    .param p4, "sensorState"    # Lcom/android/server/sensorprivacy/SensorState;

    .line 90
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    if-eqz v1, :cond_27

    .line 91
    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v7, p4}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    .line 91
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->schedulePersistLocked()V

    .line 96
    return-void
.end method


# virtual methods
.method dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 3
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 129
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0, p1}, Lcom/android/server/sensorprivacy/PersistedState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 130
    return-void
.end method

.method forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V
    .registers 4
    .param p1, "consumer"    # Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;

    .line 116
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sensorprivacy/PersistedState;->forEachKnownState(Lcom/android/internal/util/function/QuadConsumer;)V

    .line 117
    return-void
.end method

.method getStateLocked(III)Lcom/android/server/sensorprivacy/SensorState;
    .registers 6
    .param p1, "toggleType"    # I
    .param p2, "userId"    # I
    .param p3, "sensor"    # I

    .line 51
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    .line 52
    .local v0, "sensorState":Lcom/android/server/sensorprivacy/SensorState;
    if-eqz v0, :cond_e

    .line 53
    new-instance v1, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v1, v0}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    return-object v1

    .line 55
    :cond_e
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getDefaultSensorState()Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v1

    return-object v1
.end method

.method resetForTestingImpl()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/PersistedState;->resetForTesting()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 123
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 124
    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 125
    return-void
.end method

.method schedulePersistLocked()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/PersistedState;->schedulePersist()V

    .line 112
    return-void
.end method

.method setSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    if-nez v0, :cond_f

    .line 105
    iput-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 106
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 107
    return-void

    .line 103
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setStateLocked(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V
    .registers 11
    .param p1, "toggleType"    # I
    .param p2, "userId"    # I
    .param p3, "sensor"    # I
    .param p4, "enabled"    # Z
    .param p5, "callbackHandler"    # Landroid/os/Handler;
    .param p6, "callback"    # Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;

    .line 67
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    .line 68
    .local v0, "lastState":Lcom/android/server/sensorprivacy/SensorState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    .line 69
    if-nez p4, :cond_10

    .line 70
    invoke-static {p5, p6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    .line 71
    return-void

    .line 72
    :cond_10
    if-eqz p4, :cond_23

    .line 73
    new-instance v1, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v1, v2}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    .line 74
    .local v1, "sensorState":Lcom/android/server/sensorprivacy/SensorState;
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v3, p1, p2, p3, v1}, Lcom/android/server/sensorprivacy/PersistedState;->setState(IIILcom/android/server/sensorprivacy/SensorState;)Lcom/android/server/sensorprivacy/SensorState;

    .line 75
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 76
    invoke-static {p5, p6, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    .line 77
    return-void

    .line 80
    .end local v1    # "sensorState":Lcom/android/server/sensorprivacy/SensorState;
    :cond_23
    invoke-virtual {v0, p4}, Lcom/android/server/sensorprivacy/SensorState;->setEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 81
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 82
    invoke-static {p5, p6, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    .line 83
    return-void

    .line 85
    :cond_30
    invoke-static {p5, p6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    .line 86
    return-void
.end method
