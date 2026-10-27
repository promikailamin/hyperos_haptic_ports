.class public Lcom/android/server/appop/AudioRestrictionManager;
.super Ljava/lang/Object;
.source "AudioRestrictionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AudioRestrictionManager$Restriction;
    }
.end annotation


# static fields
.field static final CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "AudioRestriction"


# instance fields
.field mCameraAudioRestriction:I

.field mCameraLedRestriction:I

.field final mZenModeAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AudioRestrictionManager$Restriction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 52
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 53
    .local v0, "audioMutedUsages":Landroid/util/SparseBooleanArray;
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 54
    .local v1, "vibrationMutedUsages":Landroid/util/SparseBooleanArray;
    sget-object v2, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    const/4 v5, 0x3

    if-ge v4, v3, :cond_4d

    aget v6, v2, v4

    .line 55
    .local v6, "usage":I
    sget-object v7, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 56
    .local v7, "suppressionBehavior":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_44

    const/4 v9, 0x2

    if-eq v7, v9, :cond_44

    const/4 v9, 0x4

    if-ne v7, v9, :cond_23

    goto :goto_44

    .line 61
    :cond_23
    const/4 v8, 0x5

    if-eq v7, v8, :cond_4a

    const/4 v8, 0x6

    if-eq v7, v8, :cond_4a

    if-eq v7, v5, :cond_4a

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown audio suppression behavior"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "AudioRestriction"

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 59
    :cond_44
    :goto_44
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 60
    invoke-virtual {v1, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 54
    .end local v6    # "usage":I
    .end local v7    # "suppressionBehavior":I
    :cond_4a
    :goto_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 67
    :cond_4d
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    .line 68
    const/16 v3, 0x1c

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 70
    .end local v0    # "audioMutedUsages":Landroid/util/SparseBooleanArray;
    .end local v1    # "vibrationMutedUsages":Landroid/util/SparseBooleanArray;
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 47
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraLedRestriction:I

    return-void
.end method

.method private static cameraRestrictionModeToName(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 217
    sparse-switch p0, :sswitch_data_16

    .line 231
    const-string v0, "Unknown"

    return-object v0

    .line 228
    :sswitch_6
    const-string v0, "MuteLed"

    return-object v0

    .line 226
    :sswitch_9
    const-string v0, "LedNone"

    return-object v0

    .line 223
    :sswitch_c
    const-string v0, "MuteVibrationAndSound"

    return-object v0

    .line 221
    :sswitch_f
    const-string v0, "MuteVibration"

    return-object v0

    .line 219
    :sswitch_12
    const-string v0, "None"

    return-object v0

    nop

    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_12
        0x1 -> :sswitch_f
        0x3 -> :sswitch_c
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_6
    .end sparse-switch
.end method

.method private checkZenModeRestrictionLocked(IIILjava/lang/String;)I
    .registers 8
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 104
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AudioRestrictionManager$Restriction;>;"
    if-eqz v0, :cond_1d

    .line 105
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    .line 106
    .local v1, "r":Lcom/android/server/appop/AudioRestrictionManager$Restriction;
    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 107
    iget v2, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    return v2

    .line 110
    .end local v1    # "r":Lcom/android/server/appop/AudioRestrictionManager$Restriction;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 8
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 79
    monitor-enter p0

    .line 81
    :try_start_1
    iget v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz v0, :cond_21

    .line 82
    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    const/16 v2, 0x1c

    if-ne p1, v2, :cond_21

    if-ne v0, v1, :cond_21

    .line 85
    :cond_e
    sget-object v0, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 86
    .local v0, "mutedUsages":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_21

    .line 87
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 88
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 94
    .end local v0    # "mutedUsages":Landroid/util/SparseBooleanArray;
    :cond_21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkZenModeRestrictionLocked(IIILjava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "mode":I
    if-eqz v0, :cond_29

    .line 96
    monitor-exit p0

    return v0

    .line 98
    .end local v0    # "mode":I
    :cond_29
    monitor-exit p0

    .line 99
    const/4 v0, 0x0

    return v0

    .line 98
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)Z
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "printedHeader":Z
    invoke-virtual {p0}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    move-result v1

    .line 180
    .local v1, "needSep":Z
    monitor-enter p0

    .line 181
    const/4 v2, 0x0

    .local v2, "o":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8c

    .line 182
    iget-object v3, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "op":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 184
    .local v4, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AudioRestrictionManager$Restriction;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_88

    .line 185
    if-nez v0, :cond_30

    .line 186
    const-string v6, "  Zen Mode Audio Restrictions:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x1

    .line 190
    :cond_30
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 191
    .local v6, "usage":I
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    const-string v7, " usage="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    .line 194
    .local v7, "r":Lcom/android/server/appop/AudioRestrictionManager$Restriction;
    const-string v8, ": mode="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    invoke-static {v8}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    iget-object v8, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_85

    .line 196
    const-string v8, "      Exceptions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_6a
    iget-object v9, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_85

    .line 198
    const-string v9, "        "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    add-int/lit8 v8, v8, 0x1

    goto :goto_6a

    .line 184
    .end local v6    # "usage":I
    .end local v7    # "r":Lcom/android/server/appop/AudioRestrictionManager$Restriction;
    .end local v8    # "j":I
    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 181
    .end local v3    # "op":Ljava/lang/String;
    .end local v4    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AudioRestrictionManager$Restriction;>;"
    .end local v5    # "i":I
    :cond_88
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 203
    .end local v2    # "o":I
    :cond_8c
    iget v2, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz v2, :cond_ac

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Camera Audio Restriction Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 205
    invoke-static {v3}, Lcom/android/server/appop/AudioRestrictionManager;->cameraRestrictionModeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    :cond_ac
    iget v2, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraLedRestriction:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_ce

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Camera Led Restriction Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraLedRestriction:I

    .line 210
    invoke-static {v3}, Lcom/android/server/appop/AudioRestrictionManager;->cameraRestrictionModeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    :cond_ce
    monitor-exit p0

    .line 213
    return v1

    .line 212
    :catchall_d0
    move-exception v2

    monitor-exit p0
    :try_end_d2
    .catchall {:try_start_7 .. :try_end_d2} :catchall_d0

    throw v2
.end method

.method public hasActiveRestrictions()Z
    .registers 4

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "hasActiveRestrictions":Z
    monitor-enter p0

    .line 167
    :try_start_2
    iget-object v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_17

    iget v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-nez v1, :cond_17

    iget v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraLedRestriction:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    move v0, v1

    .line 171
    monitor-exit p0

    .line 172
    return v0

    .line 171
    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setCameraAudioRestriction(I)V
    .registers 9
    .param p1, "mode"    # I

    .line 141
    monitor-enter p0

    .line 144
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_40

    .line 145
    :try_start_5
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 146
    .local v1, "context":Landroid/content/Context;
    if-ne p1, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 148
    .local v0, "ledEnable":I
    :goto_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 149
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "light_turn_on"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    iput p1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraLedRestriction:I

    .line 153
    const-string v4, "AudioRestriction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ledEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    nop

    .end local v0    # "ledEnable":I
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "ident":J
    goto :goto_42

    .line 155
    :cond_40
    iput p1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 158
    :goto_42
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public setZenModeAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 117
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AudioRestrictionManager$Restriction;>;"
    if-nez v0, :cond_16

    .line 118
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 119
    iget-object v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_16
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 122
    if-eqz p4, :cond_43

    .line 123
    new-instance v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;-><init>(Lcom/android/server/appop/AudioRestrictionManager$Restriction-IA;)V

    .line 124
    .local v1, "r":Lcom/android/server/appop/AudioRestrictionManager$Restriction;
    iput p4, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    .line 125
    if-eqz p5, :cond_40

    .line 126
    array-length v2, p5

    .line 127
    .local v2, "N":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 128
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v2, :cond_40

    .line 129
    aget-object v4, p5, v3

    .line 130
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_3d

    .line 131
    iget-object v5, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 135
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_40
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    .end local v0    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AudioRestrictionManager$Restriction;>;"
    .end local v1    # "r":Lcom/android/server/appop/AudioRestrictionManager$Restriction;
    :cond_43
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method
