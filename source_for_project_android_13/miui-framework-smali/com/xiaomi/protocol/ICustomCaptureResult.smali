.class public Lcom/xiaomi/protocol/ICustomCaptureResult;
.super Ljava/lang/Object;
.source "ICustomCaptureResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CAPTURE_RESULT_EXTRA_CLASS:Ljava/lang/String; = "android.hardware.camera2.impl.CaptureResultExtras"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/protocol/ICustomCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PHYSICAL_CAPTURE_RESULT_CLASS:Ljava/lang/String; = "android.hardware.camera2.impl.PhysicalCaptureResultInfo"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCaptureId:Ljava/lang/String;

.field private blacklist mFrameNumber:J

.field private blacklist mMainPhysicalResult:Landroid/os/Parcelable;

.field private blacklist mParcelRequest:Landroid/os/Parcelable;

.field private blacklist mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private blacklist mResults:Landroid/os/Parcelable;

.field private blacklist mSequenceId:I

.field private blacklist mSessionId:I

.field private blacklist mSubPhysicalResult:Landroid/os/Parcelable;

.field private blacklist mTimestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/xiaomi/protocol/ICustomCaptureResult$1;

    invoke-direct {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(IIJLandroid/os/Parcelable;Landroid/hardware/camera2/CaptureRequest;)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J
    .param p5, "results"    # Landroid/os/Parcelable;
    .param p6, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    .line 46
    iput p2, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    .line 47
    iput-wide p3, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    .line 48
    iput-object p5, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    .line 49
    iput-object p6, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(IIJLandroid/os/Parcelable;Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J
    .param p5, "results"    # Landroid/os/Parcelable;
    .param p6, "request"    # Landroid/os/Parcelable;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    .line 55
    iput p2, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    .line 56
    iput-wide p3, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    .line 57
    iput-object p5, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    .line 58
    iput-object p6, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mParcelRequest:Landroid/os/Parcelable;

    .line 59
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mTimestamp:J

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mCaptureId:Ljava/lang/String;

    .line 326
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    .line 327
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    iput-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 328
    return-void
.end method

.method public static blacklist getCameraMetaDataCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "CameraMetaDataNativeObj"    # Ljava/lang/Object;

    .line 279
    :try_start_0
    const-string v0, "android.hardware.camera2.impl.CameraMetadataNative"

    .line 280
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 281
    .local v0, "CameraMetaDataNativeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 282
    .local v2, "constructorParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    .line 283
    .local v1, "values":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 284
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v4

    .line 285
    .end local v0    # "CameraMetaDataNativeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "values":[Ljava/lang/Object;
    .end local v2    # "constructorParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_19
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v2, "getCameraMetaDataCopy: failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist retrieveLogicalCameraId(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;
    .registers 5
    .param p0, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 258
    :try_start_0
    const-class v0, Landroid/hardware/camera2/CaptureRequest;

    .line 259
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest;>;"
    const-string v1, "getLogicalCameraId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 260
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_37

    .line 261
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 262
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v2, :cond_37

    .line 264
    move-object v3, v2

    check-cast v3, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1c} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v3

    .line 271
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "ret":Ljava/lang/Object;
    :catch_1d
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v2, "Failed to invoke the method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 269
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_26
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v2, "Cannot access the method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_37

    .line 267
    :catch_2f
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_37
    :goto_37
    nop

    .line 274
    :goto_38
    const-string v0, "none"

    return-object v0
.end method

.method public static blacklist toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;
    .registers 3
    .param p0, "result"    # Lcom/xiaomi/protocol/ICustomCaptureResult;
    .param p1, "sessionId"    # I

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;IZ)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;IZ)Landroid/hardware/camera2/TotalCaptureResult;
    .registers 36
    .param p0, "result"    # Lcom/xiaomi/protocol/ICustomCaptureResult;
    .param p1, "sessionId"    # I
    .param p2, "preferPhysicalMeta"    # Z

    .line 156
    const-string v0, "|"

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v2

    .line 157
    .local v2, "requestId":I
    const/4 v3, 0x0

    .line 158
    .local v3, "subSequenceId":I
    const/4 v4, 0x0

    .line 159
    .local v4, "afTriggerId":I
    const/4 v5, 0x0

    .line 160
    .local v5, "precaptureTriggerId":I
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v6

    .line 161
    .local v6, "frameNumber":J
    const/4 v8, 0x0

    .line 162
    .local v8, "partialResultCount":I
    const/4 v9, 0x0

    .line 163
    .local v9, "errorStreamId":I
    sget-object v10, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "toTotalCaptureResult: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_3ac

    move/from16 v12, p1

    :try_start_1e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", sdk int "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v10, 0x0

    .line 166
    .local v10, "cons":Ljava/lang/reflect/Constructor;
    const/4 v11, 0x0

    .line 167
    .local v11, "paramExtras":Ljava/lang/Object;
    const-string v0, "android.hardware.camera2.impl.CaptureResultExtras"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v13, v0

    .line 169
    .local v13, "resultExtrasClass":Ljava/lang/Class;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_50} :catch_3aa

    const/16 v14, 0x1e

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/4 v15, 0x2

    const/16 v22, 0x1

    const/4 v1, 0x0

    if-lt v0, v14, :cond_16d

    .line 172
    const/16 v0, 0xb

    :try_start_5e
    new-array v14, v0, [Ljava/lang/Class;

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v14, v1

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v14, v22

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v14, v15

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v14, v20

    sget-object v25, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v25, v14, v19

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x5

    aput-object v25, v14, v23

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x6

    aput-object v25, v14, v21

    const-class v25, Ljava/lang/String;

    const/16 v18, 0x7

    aput-object v25, v14, v18

    sget-object v25, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x8

    aput-object v25, v14, v17

    sget-object v25, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x9

    aput-object v25, v14, v26

    sget-object v25, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v27, 0xa

    aput-object v25, v14, v27

    .line 174
    .local v14, "params":[Ljava/lang/Class;
    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v25

    move-object/from16 v10, v25

    .line 175
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v0, v22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v0, v15

    .line 176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v0, v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v0, v19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v23, 0x5

    aput-object v25, v0, v23

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v21, 0x6

    aput-object v25, v0, v21

    const/16 v16, 0x0

    const/16 v18, 0x7

    aput-object v16, v0, v18

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v17, 0x8

    aput-object v28, v0, v17

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v0, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v0, v27

    .line 175
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_ee} :catch_f1

    .line 183
    .end local v11    # "paramExtras":Ljava/lang/Object;
    .end local v14    # "params":[Ljava/lang/Class;
    .local v0, "paramExtras":Ljava/lang/Object;
    move-object v1, v0

    goto/16 :goto_23a

    .line 177
    .end local v0    # "paramExtras":Ljava/lang/Object;
    .restart local v11    # "paramExtras":Ljava/lang/Object;
    :catch_f1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f2
    sget-object v14, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v15, "could not reflect constructor with more params, try anthor"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/16 v14, 0x8

    new-array v15, v14, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v15, v1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v15, v22

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x2

    aput-object v14, v15, v25

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v15, v20

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v15, v19

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x5

    aput-object v14, v15, v23

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x6

    aput-object v14, v15, v21

    const-class v14, Ljava/lang/String;

    const/16 v18, 0x7

    aput-object v14, v15, v18

    move-object v14, v15

    .line 180
    .restart local v14    # "params":[Ljava/lang/Class;
    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    move-object v10, v15

    .line 181
    const/16 v15, 0x8

    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v26, 0x0

    aput-object v15, v1, v26

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v25, 0x2

    aput-object v15, v1, v25

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v1, v19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v23, 0x5

    aput-object v15, v1, v23

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v21, 0x6

    aput-object v15, v1, v21

    const/4 v15, 0x0

    const/16 v16, 0x7

    aput-object v15, v1, v16

    .line 181
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 183
    .end local v11    # "paramExtras":Ljava/lang/Object;
    .end local v14    # "params":[Ljava/lang/Class;
    .local v0, "paramExtras":Ljava/lang/Object;
    goto/16 :goto_23a

    .line 184
    .end local v0    # "paramExtras":Ljava/lang/Object;
    .restart local v11    # "paramExtras":Ljava/lang/Object;
    :cond_16d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1dd

    .line 186
    const/16 v1, 0x8

    new-array v0, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v0, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v22

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v1, v0, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v20

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v19

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x5

    aput-object v1, v0, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x6

    aput-object v1, v0, v14

    const-class v1, Ljava/lang/String;

    const/4 v14, 0x7

    aput-object v1, v0, v14

    .line 187
    .local v0, "params":[Ljava/lang/Class;
    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    move-object v10, v1

    .line 188
    const/16 v1, 0x8

    new-array v14, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v14, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x2

    aput-object v1, v14, v15

    .line 189
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v14, v19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x5

    aput-object v1, v14, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x6

    aput-object v1, v14, v15

    const/4 v1, 0x0

    const/4 v15, 0x7

    aput-object v1, v14, v15

    .line 188
    invoke-virtual {v10, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 190
    .end local v11    # "paramExtras":Ljava/lang/Object;
    .local v0, "paramExtras":Ljava/lang/Object;
    goto :goto_23a

    .line 191
    .end local v0    # "paramExtras":Ljava/lang/Object;
    .restart local v11    # "paramExtras":Ljava/lang/Object;
    :cond_1dd
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v0, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v22

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v1, v0, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v20

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v19

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x5

    aput-object v1, v0, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x6

    aput-object v1, v0, v14

    .line 192
    .local v0, "params":[Ljava/lang/Class;
    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    move-object v10, v1

    .line 193
    const/4 v1, 0x7

    new-array v14, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v14, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x2

    aput-object v1, v14, v15

    .line 194
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v14, v19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x5

    aput-object v1, v14, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x6

    aput-object v1, v14, v15

    .line 193
    invoke-virtual {v10, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 196
    .end local v0    # "params":[Ljava/lang/Class;
    .end local v11    # "paramExtras":Ljava/lang/Object;
    .local v1, "paramExtras":Ljava/lang/Object;
    :goto_23a
    const-class v0, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object v11, v0

    .line 197
    .local v11, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v0, v11

    const/4 v14, 0x0

    :goto_243
    if-ge v14, v0, :cond_25c

    aget-object v15, v11, v14

    .line 199
    .local v15, "constructor":Ljava/lang/reflect/Constructor;
    move/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    array-length v0, v0

    move/from16 v28, v3

    const/4 v3, 0x2

    .end local v3    # "subSequenceId":I
    .local v28, "subSequenceId":I
    if-le v0, v3, :cond_255

    .line 200
    move-object v10, v15

    .line 201
    goto :goto_25e

    .line 197
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_255
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v27

    move/from16 v3, v28

    goto :goto_243

    .end local v28    # "subSequenceId":I
    .restart local v3    # "subSequenceId":I
    :cond_25c
    move/from16 v28, v3

    .line 205
    .end local v3    # "subSequenceId":I
    .restart local v28    # "subSequenceId":I
    :goto_25e
    if-eqz p2, :cond_278

    .line 206
    sget-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v3, "prefer physical meta"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getMainPhysicalResult()Landroid/os/Parcelable;

    move-result-object v3

    .line 208
    .local v3, "cameraMetadataNative":Landroid/os/Parcelable;
    if-nez v3, :cond_27d

    .line 209
    const-string v14, "no physical meta, use logical"

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    goto :goto_27d

    .line 213
    .end local v3    # "cameraMetadataNative":Landroid/os/Parcelable;
    :cond_278
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    .line 215
    .restart local v3    # "cameraMetadataNative":Landroid/os/Parcelable;
    :cond_27d
    :goto_27d
    invoke-static {v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getCameraMetaDataCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    .line 217
    .local v14, "cameraMetaDataNativeCopy":Ljava/lang/Object;
    if-nez v14, :cond_294

    .line 218
    sget-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v15, "null native metadata"

    move-object/from16 v27, v3

    .end local v3    # "cameraMetadataNative":Landroid/os/Parcelable;
    .local v27, "cameraMetadataNative":Landroid/os/Parcelable;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 v3, 0x0

    return-object v3

    .line 222
    .end local v27    # "cameraMetadataNative":Landroid/os/Parcelable;
    .restart local v3    # "cameraMetadataNative":Landroid/os/Parcelable;
    :cond_294
    move-object/from16 v27, v3

    .end local v3    # "cameraMetadataNative":Landroid/os/Parcelable;
    .restart local v27    # "cameraMetadataNative":Landroid/os/Parcelable;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v0, v3, :cond_2bb

    .line 223
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v0, v3

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    aput-object v3, v0, v22

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v3, 0x0

    aput-object v3, v0, v20

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v19

    .line 223
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    return-object v0

    .line 225
    :cond_2bb
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2bd
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_2bd} :catch_3aa

    const-string v3, "android.hardware.camera2.impl.PhysicalCaptureResultInfo"

    const/16 v15, 0x1e

    if-gt v0, v15, :cond_34b

    .line 227
    :try_start_2c3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v3, v0

    .line 228
    .local v3, "physicalResultClass":Ljava/lang/Class;
    const/4 v15, 0x0

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_2c3 .. :try_end_2cd} :catch_3aa

    move-object/from16 v24, v0

    .line 230
    .local v24, "emptyPhysicalResult":Ljava/lang/Object;
    const/4 v15, 0x6

    :try_start_2d0
    new-array v0, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v0, v15

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    aput-object v15, v0, v22

    const/4 v15, 0x2

    aput-object v1, v0, v15

    const/4 v15, 0x0

    aput-object v15, v0, v20

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v0, v19

    const/4 v15, 0x5

    aput-object v24, v0, v15

    .line 230
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_2f0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d0 .. :try_end_2f0} :catch_2f1
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_2f0} :catch_3aa

    return-object v0

    .line 232
    :catch_2f1
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2f2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    .line 234
    .local v15, "cr":Landroid/hardware/camera2/CaptureRequest;
    invoke-static {v15}, Lcom/xiaomi/protocol/ICustomCaptureResult;->retrieveLogicalCameraId(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v29

    .line 235
    .local v30, "logicalCameraId":Ljava/lang/String;
    move-object/from16 v29, v0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v29, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    move-object/from16 v31, v1

    .end local v1    # "paramExtras":Ljava/lang/Object;
    .local v31, "paramExtras":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v3

    .end local v3    # "physicalResultClass":Ljava/lang/Class;
    .local v32, "physicalResultClass":Ljava/lang/Class;
    const-string v3, "Still sdk 30: logicalCameraId is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v30

    .end local v30    # "logicalCameraId":Ljava/lang/String;
    .local v3, "logicalCameraId":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v1, 0x8

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    aput-object v14, v0, v22

    const/4 v1, 0x2

    aput-object v15, v0, v1

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v19

    const/4 v1, 0x0

    const/16 v16, 0x5

    aput-object v1, v0, v16

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v17, 0x6

    aput-object v1, v0, v17

    const/4 v1, 0x7

    aput-object v24, v0, v1

    .line 236
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    return-object v0

    .line 240
    .end local v3    # "logicalCameraId":Ljava/lang/String;
    .end local v15    # "cr":Landroid/hardware/camera2/CaptureRequest;
    .end local v24    # "emptyPhysicalResult":Ljava/lang/Object;
    .end local v29    # "e":Ljava/lang/IllegalArgumentException;
    .end local v31    # "paramExtras":Ljava/lang/Object;
    .end local v32    # "physicalResultClass":Ljava/lang/Class;
    .restart local v1    # "paramExtras":Ljava/lang/Object;
    :cond_34b
    move-object/from16 v31, v1

    .end local v1    # "paramExtras":Ljava/lang/Object;
    .restart local v31    # "paramExtras":Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 241
    .local v0, "physicalResultClass":Ljava/lang/Class;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 242
    .local v1, "emptyPhysicalResult":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 243
    .local v3, "cr":Landroid/hardware/camera2/CaptureRequest;
    invoke-static {v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->retrieveLogicalCameraId(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, "logicalCameraId":Ljava/lang/String;
    move-object/from16 v24, v0

    .end local v0    # "physicalResultClass":Ljava/lang/Class;
    .local v24, "physicalResultClass":Ljava/lang/Class;
    sget-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    move/from16 v29, v4

    .end local v4    # "afTriggerId":I
    .local v29, "afTriggerId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v5

    .end local v5    # "precaptureTriggerId":I
    .local v30, "precaptureTriggerId":I
    const-string v5, "logicalCameraId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v0, v4

    aput-object v14, v0, v22

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v19

    const/4 v4, 0x0

    const/4 v5, 0x5

    aput-object v4, v0, v5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v0, v5

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 245
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_3a9
    .catch Ljava/lang/Exception; {:try_start_2f2 .. :try_end_3a9} :catch_3aa

    return-object v0

    .line 248
    .end local v1    # "emptyPhysicalResult":Ljava/lang/Object;
    .end local v2    # "requestId":I
    .end local v3    # "cr":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "frameNumber":J
    .end local v8    # "partialResultCount":I
    .end local v9    # "errorStreamId":I
    .end local v10    # "cons":Ljava/lang/reflect/Constructor;
    .end local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v13    # "resultExtrasClass":Ljava/lang/Class;
    .end local v14    # "cameraMetaDataNativeCopy":Ljava/lang/Object;
    .end local v15    # "logicalCameraId":Ljava/lang/String;
    .end local v24    # "physicalResultClass":Ljava/lang/Class;
    .end local v27    # "cameraMetadataNative":Landroid/os/Parcelable;
    .end local v28    # "subSequenceId":I
    .end local v29    # "afTriggerId":I
    .end local v30    # "precaptureTriggerId":I
    .end local v31    # "paramExtras":Ljava/lang/Object;
    :catch_3aa
    move-exception v0

    goto :goto_3af

    :catch_3ac
    move-exception v0

    move/from16 v12, p1

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    :goto_3af
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    sget-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v2, "null capture result!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCaptureId()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mCaptureId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFrameNumber()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    return-wide v0
.end method

.method public blacklist getMainPhysicalResult()Landroid/os/Parcelable;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mMainPhysicalResult:Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist getParcelRequest()Landroid/os/Parcelable;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mParcelRequest:Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist getRequest()Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public blacklist getResults()Landroid/os/Parcelable;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist getSequenceId()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    return v0
.end method

.method public blacklist getSessionId()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    return v0
.end method

.method public blacklist getSubPhysicalResult()Landroid/os/Parcelable;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSubPhysicalResult:Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist getTimeStamp()J
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mTimestamp:J

    return-wide v0
.end method

.method public blacklist setCaptureId(Ljava/lang/String;)V
    .registers 2
    .param p1, "captureId"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mCaptureId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public blacklist setFrameNumber(J)V
    .registers 3
    .param p1, "frameNumber"    # J

    .line 98
    iput-wide p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    .line 99
    return-void
.end method

.method public blacklist setMainPhysicalResult(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "physicalResult"    # Landroid/os/Parcelable;

    .line 118
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mMainPhysicalResult:Landroid/os/Parcelable;

    .line 119
    return-void
.end method

.method public blacklist setParcelRequest(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "request"    # Landroid/os/Parcelable;

    .line 114
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mParcelRequest:Landroid/os/Parcelable;

    .line 115
    return-void
.end method

.method public blacklist setRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 90
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 91
    return-void
.end method

.method public blacklist setResults(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "results"    # Landroid/os/Parcelable;

    .line 66
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    .line 67
    return-void
.end method

.method public blacklist setSequenceId(I)V
    .registers 2
    .param p1, "sequenceId"    # I

    .line 94
    iput p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    .line 95
    return-void
.end method

.method public blacklist setSessionId(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 86
    iput p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    .line 87
    return-void
.end method

.method public blacklist setSubPhysicalResult(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "physicalResult"    # Landroid/os/Parcelable;

    .line 122
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSubPhysicalResult:Landroid/os/Parcelable;

    .line 123
    return-void
.end method

.method public blacklist setTimeStamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 106
    iput-wide p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mTimestamp:J

    .line 107
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICustomCaptureResult{mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 311
    iget v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 314
    iget-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 315
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mCaptureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 317
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 318
    return-void
.end method
