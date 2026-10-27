.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricUtils;


# static fields
.field public static final sInstanceLock:Ljava/lang/Object;

.field public static sInstances:Landroid/util/SparseArray;


# instance fields
.field public mFileName:Ljava/lang/String;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    .line 104
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .registers 2

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .registers 5

    .line 77
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    if-nez v1, :cond_11

    .line 79
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_46

    .line 81
    :cond_11
    :goto_11
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3c

    if-nez p1, :cond_32

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settings_fingerprint_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_32
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    invoke-direct {v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    :cond_3c
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 88
    monitor-exit v0

    return-object p0

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_f

    throw p0
.end method

.method public static getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .registers 2

    .line 99
    const-string/jumbo v0, "settings_fingerprint.xml"

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p0

    return-object p0
.end method

.method public static isKnownAcquiredCode(I)Z
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isKnownErrorCode(I)Z
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 4

    .line 48
    check-cast p3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/fingerprint/Fingerprint;)V
    .registers 4

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    return-void
.end method

.method public deleteStateForUser(I)V
    .registers 3

    .line 154
    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    if-eqz v0, :cond_16

    .line 157
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->deleteBiometricFile()V

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_18

    .line 160
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_14

    throw p1
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .registers 3

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
    .registers 9

    .line 164
    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    if-nez v0, :cond_b1

    .line 167
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    const-string/jumbo v1, "settings_fingerprint_\\d+.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 169
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "settings_fingerprint.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_a5

    .line 173
    const-string v2, "FingerprintUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migration needed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 177
    const-string v2, "FingerprintUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete empty file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :catchall_7a
    move-exception p1

    goto :goto_b3

    .line 180
    :cond_7c
    :goto_7c
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 181
    const-string v2, "FingerprintUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to rename file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string/jumbo v0, "settings_fingerprint.xml"

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    .line 186
    :cond_a5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    :cond_b1
    monitor-exit p0

    return-object v0

    .line 190
    :goto_b3
    monitor-exit p0
    :try_end_b4
    .catchall {:try_start_1 .. :try_end_b4} :catchall_7a

    throw p1
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 3

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getUniqueName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasValidBiometricUserState(Landroid/content/Context;I)Z
    .registers 3

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->isInvalidBiometricState()Z

    move-result p0

    return p0
.end method

.method public isInvalidationInProgress(Landroid/content/Context;I)Z
    .registers 3

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->isInvalidationInProgress()Z

    move-result p0

    return p0
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .registers 4

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->removeBiometric(I)V

    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .registers 6

    .line 125
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 129
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/biometrics/sensors/BiometricUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setInvalidationInProgress(Landroid/content/Context;IZ)V
    .registers 4

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->setInvalidationInProgress(Z)V

    return-void
.end method
