.class public abstract Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "InternalCleanupClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;
.implements Lcom/android/server/biometrics/sensors/RemovalConsumer;
.implements Lcom/android/server/biometrics/sensors/EnrollmentModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/EnumerateConsumer;",
        "Lcom/android/server/biometrics/sensors/RemovalConsumer;",
        "Lcom/android/server/biometrics/sensors/EnrollmentModifier;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics/InternalCleanupClient"


# instance fields
.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;"
        }
    .end annotation
.end field

.field private mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field private final mEnrolledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final mEnumerateCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field private final mHasEnrollmentsBeforeStarting:Z

.field private final mRemoveCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field private final mUnknownHALTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentTask(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnknownHALTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartCleanupUnknownHalTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->startCleanupUnknownHalTemplates()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "owner"    # Ljava/lang/String;
    .param p5, "sensorId"    # I
    .param p6, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p7, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/List<",
            "TS;>;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p8, "enrolledList":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p9, "utils":Lcom/android/server/biometrics/sensors/BiometricUtils;, "Lcom/android/server/biometrics/sensors/BiometricUtils<TS;>;"
    .local p10, "authenticatorIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move-object v11, p0

    move-object/from16 v12, p9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;-><init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnumerateCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 95
    new-instance v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;-><init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mRemoveCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 125
    iput-object v12, v11, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 126
    move-object/from16 v0, p10

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 127
    move-object/from16 v1, p8

    iput-object v1, v11, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnrolledList:Ljava/util/List;

    .line 128
    move-object v2, p1

    move/from16 v3, p3

    invoke-interface {v12, p1, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v11, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mHasEnrollmentsBeforeStarting:Z

    .line 129
    return-void
.end method

.method private startCleanupUnknownHalTemplates()V
    .registers 15

    .line 132
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCleanupUnknownHalTemplates, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    .line 135
    .local v0, "template":Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getToken()Landroid/os/IBinder;

    move-result-object v5

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 137
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v6

    iget v7, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mUserId:I

    .line 138
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getSensorId()I

    move-result v10

    .line 139
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 136
    move-object v2, p0

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 141
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->logUnknownEnrollmentInHal()V

    .line 143
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mRemoveCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected abstract getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TS;>;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")",
            "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getProtoEnum()I
    .registers 2

    .line 206
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    const/4 v0, 0x7

    return v0
.end method

.method protected abstract getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/server/biometrics/sensors/RemovalClient<",
            "TS;TT;>;"
        }
    .end annotation
.end method

.method public hasEnrollmentStateChanged()Z
    .registers 4

    .line 182
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 183
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 184
    .local v0, "hasEnrollmentsNow":Z
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mHasEnrollmentsBeforeStarting:Z

    if-eq v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public hasEnrollments()Z
    .registers 4

    .line 189
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 6
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 195
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    const-string v1, "Biometrics/InternalCleanupClient"

    if-nez v0, :cond_2a

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnumerationResult received during client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 197
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 200
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnumerated, remaining: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 202
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 172
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalClient;

    if-nez v1, :cond_2a

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoved received during client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_2a
    check-cast v0, Lcom/android/server/biometrics/sensors/RemovalClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/RemovalClient;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 178
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 13
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 153
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getTargetUserId()I

    move-result v4

    .line 157
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnrolledList:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getSensorId()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    .line 158
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v10

    .line 156
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting enumerate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnumerateCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 162
    return-void
.end method

.method protected startHalOperation()V
    .registers 1

    .line 168
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    return-void
.end method

.method public unableToStart()V
    .registers 1

    .line 149
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient<TS;TT;>;"
    return-void
.end method
