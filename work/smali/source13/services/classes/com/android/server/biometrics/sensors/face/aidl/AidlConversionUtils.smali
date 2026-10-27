.class final Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "AidlConversionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AidlConversionUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static convertAidlToFrameworkFeature(B)I
    .registers 3
    .param p0, "feature"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    packed-switch p0, :pswitch_data_26

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlConversionUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 203
    :pswitch_21
    const/4 v0, 0x2

    return v0

    .line 201
    :pswitch_23
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_21
    .end packed-switch
.end method

.method public static convertFrameworkToAidlFeature(I)B
    .registers 3
    .param p0, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 187
    packed-switch p0, :pswitch_data_26

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlConversionUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 191
    :pswitch_21
    const/4 v0, 0x1

    return v0

    .line 189
    :pswitch_23
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_21
    .end packed-switch
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .registers 2
    .param p0, "aidlAcquiredInfo"    # B

    .line 76
    packed-switch p0, :pswitch_data_4c

    .line 131
    const/16 v0, 0x17

    return v0

    .line 128
    :pswitch_6
    const/16 v0, 0x1a

    return v0

    .line 126
    :pswitch_9
    const/16 v0, 0x19

    return v0

    .line 124
    :pswitch_c
    const/16 v0, 0x18

    return v0

    .line 122
    :pswitch_f
    const/16 v0, 0x16

    return v0

    .line 120
    :pswitch_12
    const/16 v0, 0x15

    return v0

    .line 118
    :pswitch_15
    const/16 v0, 0x14

    return v0

    .line 116
    :pswitch_18
    const/16 v0, 0x13

    return v0

    .line 114
    :pswitch_1b
    const/16 v0, 0x12

    return v0

    .line 112
    :pswitch_1e
    const/16 v0, 0x11

    return v0

    .line 110
    :pswitch_21
    const/16 v0, 0x10

    return v0

    .line 108
    :pswitch_24
    const/16 v0, 0xf

    return v0

    .line 106
    :pswitch_27
    const/16 v0, 0xe

    return v0

    .line 104
    :pswitch_2a
    const/16 v0, 0xd

    return v0

    .line 102
    :pswitch_2d
    const/16 v0, 0xc

    return v0

    .line 100
    :pswitch_30
    const/16 v0, 0xb

    return v0

    .line 98
    :pswitch_33
    const/16 v0, 0xa

    return v0

    .line 96
    :pswitch_36
    const/16 v0, 0x9

    return v0

    .line 94
    :pswitch_39
    const/16 v0, 0x8

    return v0

    .line 92
    :pswitch_3c
    const/4 v0, 0x7

    return v0

    .line 90
    :pswitch_3e
    const/4 v0, 0x6

    return v0

    .line 88
    :pswitch_40
    const/4 v0, 0x5

    return v0

    .line 86
    :pswitch_42
    const/4 v0, 0x4

    return v0

    .line 84
    :pswitch_44
    const/4 v0, 0x3

    return v0

    .line 82
    :pswitch_46
    const/4 v0, 0x2

    return v0

    .line 80
    :pswitch_48
    const/4 v0, 0x1

    return v0

    .line 78
    :pswitch_4a
    const/4 v0, 0x0

    return v0

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_48
        :pswitch_46
        :pswitch_44
        :pswitch_42
        :pswitch_40
        :pswitch_3e
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static toFrameworkAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)Landroid/hardware/face/FaceAuthenticationFrame;
    .registers 3
    .param p0, "frame"    # Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 159
    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame;

    iget-object v1, p0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    return-object v0
.end method

.method public static toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;
    .registers 9
    .param p0, "frame"    # Landroid/hardware/biometrics/face/BaseFrame;

    .line 172
    new-instance v7, Landroid/hardware/face/FaceDataFrame;

    iget-byte v0, p0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 173
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v1

    iget v2, p0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    iget v3, p0, Landroid/hardware/biometrics/face/BaseFrame;->pan:F

    iget v4, p0, Landroid/hardware/biometrics/face/BaseFrame;->tilt:F

    iget v5, p0, Landroid/hardware/biometrics/face/BaseFrame;->distance:F

    iget-boolean v6, p0, Landroid/hardware/biometrics/face/BaseFrame;->isCancellable:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/face/FaceDataFrame;-><init>(IIFFFZ)V

    .line 172
    return-object v7
.end method

.method public static toFrameworkCell(Landroid/hardware/biometrics/face/Cell;)Landroid/hardware/face/FaceEnrollCell;
    .registers 5
    .param p0, "cell"    # Landroid/hardware/biometrics/face/Cell;

    .line 183
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_f

    :cond_4
    new-instance v0, Landroid/hardware/face/FaceEnrollCell;

    iget v1, p0, Landroid/hardware/biometrics/face/Cell;->x:I

    iget v2, p0, Landroid/hardware/biometrics/face/Cell;->y:I

    iget v3, p0, Landroid/hardware/biometrics/face/Cell;->z:I

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/face/FaceEnrollCell;-><init>(III)V

    :goto_f
    return-object v0
.end method

.method public static toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;
    .registers 5
    .param p0, "frame"    # Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 164
    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->cell:Landroid/hardware/biometrics/face/Cell;

    .line 165
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkCell(Landroid/hardware/biometrics/face/Cell;)Landroid/hardware/face/FaceEnrollCell;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->stage:B

    .line 166
    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentStage(I)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 167
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    .line 164
    return-object v0
.end method

.method public static toFrameworkEnrollmentStage(I)I
    .registers 2
    .param p0, "aidlEnrollmentStage"    # I

    .line 137
    packed-switch p0, :pswitch_data_12

    .line 152
    const/4 v0, 0x0

    return v0

    .line 149
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 147
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 145
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 143
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 141
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 139
    :pswitch_f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static toFrameworkError(B)I
    .registers 2
    .param p0, "aidlError"    # B

    .line 51
    packed-switch p0, :pswitch_data_18

    .line 70
    const/16 v0, 0x11

    return v0

    .line 67
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 65
    :pswitch_9
    const/16 v0, 0x8

    return v0

    .line 63
    :pswitch_c
    const/4 v0, 0x6

    return v0

    .line 61
    :pswitch_e
    const/4 v0, 0x5

    return v0

    .line 59
    :pswitch_10
    const/4 v0, 0x4

    return v0

    .line 57
    :pswitch_12
    const/4 v0, 0x3

    return v0

    .line 55
    :pswitch_14
    const/4 v0, 0x2

    return v0

    .line 53
    :pswitch_16
    const/4 v0, 0x1

    return v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
