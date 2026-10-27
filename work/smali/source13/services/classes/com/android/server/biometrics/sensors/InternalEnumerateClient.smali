.class public abstract Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "InternalEnumerateClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/EnumerateConsumer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics/InternalEnumerateClient"


# instance fields
.field private mEnrolledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownHALTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userId"    # I
    .param p5, "owner"    # Ljava/lang/String;
    .param p7, "utils"    # Lcom/android/server/biometrics/sensors/BiometricUtils;
    .param p8, "sensorId"    # I
    .param p9, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p10, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
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
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p6, "enrolledList":Ljava/util/List;, "Ljava/util/List<+Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    move-object v11, p0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    .line 62
    move-object/from16 v0, p6

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 63
    move-object/from16 v1, p7

    iput-object v1, v11, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 64
    return-void
.end method

.method private doTemplateCleanup()V
    .registers 9

    .line 112
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    const-string v1, "Biometrics/InternalEnumerateClient"

    if-nez v0, :cond_c

    .line 113
    const-string v0, "Null enrolledList"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 119
    :cond_c
    const/4 v0, 0x0

    .line 120
    .local v0, "unknownEnrollmentInFrameworkNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_64

    .line 121
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 122
    .local v3, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doTemplateCleanup(): Removing dangling template from framework: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 123
    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 125
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getTargetUserId()I

    move-result v6

    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v7

    .line 124
    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/biometrics/sensors/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/biometrics/log/BiometricLogger;->logUnknownEnrollmentInFramework()V

    .line 128
    nop

    .end local v3    # "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    add-int/lit8 v0, v0, 0x1

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 130
    .end local v2    # "i":I
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->statsModality()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_74

    if-lez v0, :cond_74

    .line 131
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;->miSightEventReport(II)V

    .line 135
    :cond_74
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    return-void
.end method

.method private handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 90
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    const-string v0, "Biometrics/InternalEnumerateClient"

    if-nez p1, :cond_a

    .line 91
    const-string v1, "Null identifier"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 94
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEnumeratedTemplate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "matched":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 97
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    if-ne v3, v4, :cond_48

    .line 98
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    const/4 v1, 0x1

    .line 100
    goto :goto_4b

    .line 96
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 105
    .end local v2    # "i":I
    :cond_4b
    :goto_4b
    if-nez v1, :cond_58

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    if-eqz v2, :cond_58

    .line 106
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 144
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    const/4 v0, 0x6

    return v0
.end method

.method public getUnknownHALTemplates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    return-object v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 69
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 70
    if-nez p2, :cond_e

    .line 71
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->doTemplateCleanup()V

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 74
    :cond_e
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 83
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->startHalOperation()V

    .line 87
    return-void
.end method

.method public unableToStart()V
    .registers 1

    .line 79
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    return-void
.end method
