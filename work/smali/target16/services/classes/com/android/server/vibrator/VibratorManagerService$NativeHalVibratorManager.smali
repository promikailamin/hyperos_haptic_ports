.class public Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/HalVibratorManager;


# instance fields
.field public volatile mCapabilities:J

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

.field public volatile mVibratorIds:[I

.field public final mVibrators:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;)V
    .registers 3

    .line 2181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibrators:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 2179
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibratorIds:[I

    .line 2182
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    return-void
.end method


# virtual methods
.method public cancelSynced()Z
    .registers 3

    .line 2248
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    const-wide/16 v0, 0x1

    .line 2249
    invoke-interface {p0, v0, v1}, Lcom/android/server/vibrator/HalVibratorManager;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 2265
    const-string v0, "Native HAL VibratorManager:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capabilitiesFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mCapabilities:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vibratorIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibratorIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2270
    const-string v0, "Vibrators:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 2272
    :goto_46
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 2273
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/HalVibrator;

    invoke-interface {v1, p1}, Lcom/android/server/vibrator/HalVibrator;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 2275
    :cond_5c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2277
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2278
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public endSession(JZ)Z
    .registers 5

    .line 2259
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->endSession(JZ)V

    const-wide/16 p1, 0x100

    .line 2260
    invoke-interface {p0, p1, p2}, Lcom/android/server/vibrator/HalVibratorManager;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public getCapabilities()J
    .registers 3

    .line 2221
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mCapabilities:J

    return-wide v0
.end method

.method public getVibrator(I)Lcom/android/server/vibrator/HalVibrator;
    .registers 2

    .line 2233
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/HalVibrator;

    return-object p0
.end method

.method public getVibratorIds()[I
    .registers 1

    .line 2227
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibratorIds:[I

    return-object p0
.end method

.method public init(Lcom/android/server/vibrator/HalVibratorManager$Callbacks;Lcom/android/server/vibrator/HalVibrator$Callbacks;)V
    .registers 8

    .line 2187
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->init(Lcom/android/server/vibrator/HalVibratorManager$Callbacks;)V

    .line 2192
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getCapabilities()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mCapabilities:J

    .line 2194
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getVibratorIds()[I

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 2196
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibratorIds:[I

    .line 2197
    array-length v0, p1

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_2e

    aget v2, p1, v1

    .line 2198
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->createVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object v3

    .line 2199
    invoke-interface {v3, p2}, Lcom/android/server/vibrator/HalVibrator;->init(Lcom/android/server/vibrator/HalVibrator$Callbacks;)V

    .line 2200
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 2206
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->cancelSynced()Z

    .line 2208
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->clearSessions()V

    return-void
.end method

.method public onSystemReady()V
    .registers 3

    const/4 v0, 0x0

    .line 2214
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2215
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/HalVibrator;

    invoke-interface {v1}, Lcom/android/server/vibrator/HalVibrator;->onSystemReady()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public prepareSynced([I)Z
    .registers 2

    .line 2238
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->prepareSynced([I)Z

    move-result p0

    return p0
.end method

.method public startSession(J[I)Z
    .registers 4

    .line 2254
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->startSession(J[I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeHalVibratorManager{mCapabilities flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mCapabilities:J

    .line 2284
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mVibratorIds:[I

    .line 2285
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public triggerSynced(J)Z
    .registers 3

    .line 2243
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->triggerSynced(J)Z

    move-result p0

    return p0
.end method
