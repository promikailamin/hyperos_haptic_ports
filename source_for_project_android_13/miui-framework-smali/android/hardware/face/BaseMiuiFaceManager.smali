.class public abstract Landroid/hardware/face/BaseMiuiFaceManager;
.super Ljava/lang/Object;
.source "BaseMiuiFaceManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricFaceConstants;
.implements Landroid/hardware/face/MiuiFaceConstants;


# static fields
.field public static final blacklist COMMAND_ENROLL_RESET_ENROLL_LOGIC:I = 0x1

.field public static final blacklist COMMAND_ENROLL_RESUME_ENROLL_LOGIC:I = 0x0

.field public static final blacklist COMMAND_ENROLL_STOP_ENROLL_LOGIC:I = 0x2

.field public static final blacklist MIUI_FACE:Ljava/lang/String; = "miui_face"

.field public static final blacklist TAG:Ljava/lang/String; = "MiuiFaceManager"


# instance fields
.field blacklist isSupportTee:Z

.field blacklist mContext:Landroid/content/Context;

.field public blacklist mFaceManager:Landroid/hardware/face/FaceManager;

.field blacklist mService:Landroid/hardware/face/IFaceService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/face/IFaceService;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "support_tee_face_unlock"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/face/BaseMiuiFaceManager;->isSupportTee:Z

    .line 38
    iput-object p1, p0, Landroid/hardware/face/BaseMiuiFaceManager;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Landroid/hardware/face/BaseMiuiFaceManager;->mService:Landroid/hardware/face/IFaceService;

    .line 40
    if-eqz v0, :cond_19

    .line 41
    new-instance v0, Landroid/hardware/face/FaceManager;

    invoke-direct {v0, p1, p2}, Landroid/hardware/face/FaceManager;-><init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    iput-object v0, p0, Landroid/hardware/face/BaseMiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 43
    :cond_19
    return-void
.end method


# virtual methods
.method public abstract blacklist addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
.end method

.method public abstract blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;)V
.end method

.method public abstract blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;I)V
.end method

.method public abstract blacklist detectFace(Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$FaceDetectionCallback;I)V
.end method

.method public abstract blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
.end method

.method public abstract blacklist enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
.end method

.method public abstract blacklist extCmd(II)I
.end method

.method public abstract blacklist generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
.end method

.method public blacklist getAuthTimeoutLimit()I
    .registers 2

    .line 122
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getEnrollTimeoutLimits()I
    .registers 2

    .line 118
    const/16 v0, 0x3c

    return v0
.end method

.method public abstract blacklist getEnrolledFaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getFailedAttempts()I
    .registers 2

    .line 110
    const/4 v0, 0x5

    return v0
.end method

.method public abstract blacklist getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V
.end method

.method public blacklist getLiveAttackAttempts()I
    .registers 2

    .line 114
    const/4 v0, 0x3

    return v0
.end method

.method public abstract blacklist getLockoutModeForUser(II)I
.end method

.method public blacklist getMessageInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "msgId"    # I

    .line 126
    const-string v0, "define by client"

    .line 127
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_7e

    goto/16 :goto_7d

    .line 234
    :sswitch_7
    const-string v0, "binder\u8c03\u7528\u5f02\u5e38"

    .line 235
    goto/16 :goto_7d

    .line 231
    :sswitch_b
    const-string v0, "\u53d6\u6d88\u6210\u529f"

    .line 232
    goto/16 :goto_7d

    .line 228
    :sswitch_f
    const-string v0, "\u6253\u5f00\u76f8\u673a\u6210\u529f"

    .line 229
    goto/16 :goto_7d

    .line 225
    :sswitch_13
    const-string v0, "\u6253\u5f00\u76f8\u673a\u5931\u8d25"

    .line 226
    goto/16 :goto_7d

    .line 222
    :sswitch_17
    const-string v0, "\u9634\u9633\u8138"

    .line 223
    goto/16 :goto_7d

    .line 219
    :sswitch_1b
    const-string v0, "\u5149\u7ebf\u592a\u4eae"

    .line 220
    goto/16 :goto_7d

    .line 216
    :sswitch_1f
    const-string v0, "\u5149\u7ebf\u592a\u6697"

    .line 217
    goto/16 :goto_7d

    .line 213
    :sswitch_23
    const-string v0, "\u8138\u90e8\u4e0d\u5b8c\u6574"

    .line 214
    goto/16 :goto_7d

    .line 210
    :sswitch_27
    const-string v0, "\u8138\u90e8\u6a21\u7cca"

    .line 211
    goto/16 :goto_7d

    .line 207
    :sswitch_2b
    const-string v0, "\u591a\u5f20\u4eba\u8138"

    .line 208
    goto/16 :goto_7d

    .line 204
    :sswitch_2f
    const-string v0, "\u5149\u7ebf\u4e0d\u597d"

    .line 205
    goto :goto_7d

    .line 201
    :sswitch_32
    const-string v0, "Feature\u7248\u672c\u9519\u8bef"

    .line 202
    goto :goto_7d

    .line 198
    :sswitch_35
    const-string v0, "\u5904\u7406Feature\u8bfb\u53d6\u5f02\u5e38"

    .line 199
    goto :goto_7d

    .line 195
    :sswitch_38
    const-string v0, "\u5634\u90e8\u906e\u6321"

    .line 196
    goto :goto_7d

    .line 192
    :sswitch_3b
    const-string v0, "\u95ed\u773c"

    .line 193
    goto :goto_7d

    .line 189
    :sswitch_3e
    const-string v0, "\u773c\u90e8\u906e\u6321"

    .line 190
    goto :goto_7d

    .line 186
    :sswitch_41
    const-string v0, "\u56fe\u7247\u6a21\u7cca"

    .line 187
    goto :goto_7d

    .line 183
    :sswitch_44
    const-string v0, "\u7ee7\u7eed\u8c03\u7528\u4f20\u5165\u6570\u636e"

    .line 184
    goto :goto_7d

    .line 180
    :sswitch_47
    const-string v0, "\u4f4e\u5934"

    .line 181
    goto :goto_7d

    .line 177
    :sswitch_4a
    const-string v0, "\u5411\u53f3\u8f6c\u5934"

    .line 178
    goto :goto_7d

    .line 174
    :sswitch_4d
    const-string v0, "\u62ac\u5934"

    .line 175
    goto :goto_7d

    .line 171
    :sswitch_50
    const-string v0, "\u5411\u5de6\u8f6c\u5934"

    .line 172
    goto :goto_7d

    .line 168
    :sswitch_53
    const-string v0, "\u6d3b\u4f53\u68c0\u6d4b\u5931\u8d25"

    .line 169
    goto :goto_7d

    .line 165
    :sswitch_56
    const-string v0, "\u6d3b\u4f53\u653b\u51fb\u8b66\u544a"

    .line 166
    goto :goto_7d

    .line 162
    :sswitch_59
    const-string v0, "\u5bf9\u6bd4\u5931\u8d25"

    .line 163
    goto :goto_7d

    .line 159
    :sswitch_5c
    const-string v0, "\u8138\u504f\u4e0b"

    .line 160
    goto :goto_7d

    .line 156
    :sswitch_5f
    const-string v0, "\u8138\u504f\u53f3"

    .line 157
    goto :goto_7d

    .line 153
    :sswitch_62
    const-string v0, "\u8138\u504f\u4e0a"

    .line 154
    goto :goto_7d

    .line 150
    :sswitch_65
    const-string v0, "\u8138\u504f\u5de6"

    .line 151
    goto :goto_7d

    .line 147
    :sswitch_68
    const-string v0, "\u8138\u592a\u5927"

    .line 148
    goto :goto_7d

    .line 144
    :sswitch_6b
    const-string v0, "\u8138\u592a\u5c0f"

    .line 145
    goto :goto_7d

    .line 141
    :sswitch_6e
    const-string v0, "\u672a\u68c0\u6d4b\u5230\u4eba\u8138"

    .line 142
    goto :goto_7d

    .line 138
    :sswitch_71
    const-string v0, "\u4f20\u5165\u6570\u636e\u8d28\u91cf\u4e0d\u597d"

    .line 139
    goto :goto_7d

    .line 135
    :sswitch_74
    const-string v0, "FACE_ERROR_TIMEOUT\u8d85\u65f6"

    .line 136
    goto :goto_7d

    .line 132
    :sswitch_77
    const-string v0, "Handler\u4e0d\u6b63\u786e"

    .line 133
    goto :goto_7d

    .line 129
    :sswitch_7a
    const-string v0, "\u53c2\u6570\u4e0d\u5408\u6cd5"

    .line 130
    nop

    .line 240
    :goto_7d
    return-object v0

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_7a
        0x2 -> :sswitch_77
        0x3 -> :sswitch_74
        0x4 -> :sswitch_71
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_6b
        0x7 -> :sswitch_68
        0x8 -> :sswitch_65
        0x9 -> :sswitch_62
        0xa -> :sswitch_5f
        0xb -> :sswitch_5c
        0xc -> :sswitch_59
        0xd -> :sswitch_56
        0xe -> :sswitch_53
        0xf -> :sswitch_50
        0x10 -> :sswitch_4d
        0x11 -> :sswitch_4a
        0x12 -> :sswitch_47
        0x13 -> :sswitch_44
        0x14 -> :sswitch_41
        0x15 -> :sswitch_3e
        0x16 -> :sswitch_3b
        0x17 -> :sswitch_38
        0x18 -> :sswitch_35
        0x19 -> :sswitch_32
        0x1a -> :sswitch_2f
        0x1b -> :sswitch_2b
        0x1c -> :sswitch_27
        0x1d -> :sswitch_23
        0x1e -> :sswitch_1f
        0x1f -> :sswitch_1b
        0x20 -> :sswitch_17
        0x3e8 -> :sswitch_13
        0x3e9 -> :sswitch_f
        0x7d0 -> :sswitch_b
        0x834 -> :sswitch_7
    .end sparse-switch
.end method

.method public abstract blacklist getSensorProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSensorPropertiesInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist hasEnrolledTemplates()Z
.end method

.method public abstract blacklist hasEnrolledTemplates(I)Z
.end method

.method public abstract blacklist isFaceFeatureEnabled()Z
.end method

.method public blacklist isFaceFeatureSupport()Z
    .registers 5

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 78
    .local v1, "supportRegion":[Ljava/lang/String;
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_d

    .line 79
    const-string v2, "support_face_unlock_region_global"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 81
    :cond_d
    const-string v2, "support_face_unlock_region_dom"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_13
    if-eqz v1, :cond_30

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "ALL"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 84
    :cond_2f
    const/4 v0, 0x1

    .line 86
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inernational:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supportR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nowR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string v3, "MiuiFaceManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v0
.end method

.method public abstract blacklist isFaceUnlockInited()Z
.end method

.method public abstract blacklist isHardwareDetected()Z
.end method

.method public blacklist isSupportMultiFaceInput()Z
    .registers 4

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "res":Z
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 94
    const-string v1, "support_multi_face_input_global"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_13

    .line 96
    :cond_d
    const-string v1, "support_multi_face_input"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 98
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportMultiFaceInput:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v0
.end method

.method public blacklist isSupportScreenOnDelayed()Z
    .registers 4

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "res":Z
    const-string v1, "support_screen_on_delayed"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportScreenOnDelayed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v0
.end method

.method public abstract blacklist preInitAuthen()V
.end method

.method public abstract blacklist remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V
.end method

.method public abstract blacklist revokeChallenge(IIJ)V
.end method

.method public abstract blacklist setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V
.end method
