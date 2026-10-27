.class public final Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$AudioCapabilities;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CAPABILITY_ECHO_CANCELLATION:I = 0x1

.field public static final whitelist AUDIO_CAPABILITY_NOISE_SUPPRESSION:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioCapabilities:I

.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mId:I

.field private final blacklist mImplementor:Ljava/lang/String;

.field private final blacklist mMaxBufferMillis:I

.field private final blacklist mMaxKeyphrases:I

.field private final blacklist mMaxSoundModels:I

.field private final blacklist mMaxUsers:I

.field private final blacklist mPowerConsumptionMw:I

.field private final blacklist mRecognitionModes:I

.field private final blacklist mReturnsTriggerInEvent:Z

.field private final blacklist mSupportedModelArch:Ljava/lang/String;

.field private final blacklist mSupportsCaptureTransition:Z

.field private final blacklist mSupportsConcurrentCapture:Z

.field private final blacklist mUuid:Ljava/util/UUID;

.field private final blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 1

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 284
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V
    .registers 17

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    .line 173
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    .line 174
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    .line 175
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    .line 176
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    .line 177
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    .line 178
    iput p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    .line 179
    iput p8, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    .line 180
    iput p9, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    .line 181
    iput p10, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    .line 182
    iput-boolean p11, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    .line 183
    iput p12, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    .line 184
    iput-boolean p13, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    .line 185
    iput p14, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    .line 186
    iput-boolean p15, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    .line 187
    move/from16 p1, p16

    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    .line 188
    return-void
.end method

.method private static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 18

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_33

    move v0, v11

    move v11, v12

    goto :goto_34

    :cond_33
    move v0, v11

    .line 307
    :goto_34
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v14

    if-ne v14, v12, :cond_41

    move v14, v13

    move v13, v12

    goto :goto_43

    :cond_41
    move v14, v13

    move v13, v0

    .line 309
    :goto_43
    move v15, v14

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v12, :cond_51

    move/from16 v16, v12

    goto :goto_53

    :cond_51
    const/16 v16, 0x0

    .line 311
    :goto_53
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    move v12, v15

    move/from16 v15, v16

    move/from16 v16, v0

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    invoke-direct/range {v0 .. v16}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 345
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 346
    return v0

    .line 348
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 349
    return v1

    .line 351
    :cond_8
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v2, :cond_d

    .line 352
    return v1

    .line 354
    :cond_d
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 355
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    if-eq v2, v3, :cond_16

    .line 356
    return v1

    .line 358
    :cond_16
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 359
    return v1

    .line 361
    :cond_21
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 362
    return v1

    .line 364
    :cond_2c
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 365
    return v1

    .line 367
    :cond_37
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    if-eq v2, v3, :cond_3e

    .line 368
    return v1

    .line 370
    :cond_3e
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 371
    return v1

    .line 373
    :cond_49
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    if-eq v2, v3, :cond_50

    .line 374
    return v1

    .line 376
    :cond_50
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    if-eq v2, v3, :cond_57

    .line 377
    return v1

    .line 379
    :cond_57
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    if-eq v2, v3, :cond_5e

    .line 380
    return v1

    .line 382
    :cond_5e
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    if-eq v2, v3, :cond_65

    .line 383
    return v1

    .line 385
    :cond_65
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    if-eq v2, v3, :cond_6c

    .line 386
    return v1

    .line 388
    :cond_6c
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    if-eq v2, v3, :cond_73

    .line 389
    return v1

    .line 391
    :cond_73
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    if-eq v2, v3, :cond_7a

    .line 392
    return v1

    .line 394
    :cond_7a
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    if-eq v2, v3, :cond_81

    .line 395
    return v1

    .line 397
    :cond_81
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    if-eq v2, v3, :cond_88

    .line 398
    return v1

    .line 400
    :cond_88
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    if-eq v2, p1, :cond_8f

    .line 401
    return v1

    .line 403
    :cond_8f
    return v0
.end method

.method public whitelist getAudioCapabilities()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 192
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    return v0
.end method

.method public whitelist getImplementor()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxBufferMillis()I
    .registers 2

    .line 256
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    return v0
.end method

.method public whitelist getMaxKeyphrases()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    return v0
.end method

.method public whitelist getMaxSoundModels()I
    .registers 2

    .line 230
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    return v0
.end method

.method public whitelist getMaxUsers()I
    .registers 2

    .line 240
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    return v0
.end method

.method public whitelist getPowerConsumptionMw()I
    .registers 2

    .line 266
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    return v0
.end method

.method public whitelist getRecognitionModes()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    return v0
.end method

.method public whitelist getSupportedModelArch()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 409
    nop

    .line 410
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 411
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 412
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 413
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 414
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    add-int/2addr v0, v2

    .line 415
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 416
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    add-int/2addr v0, v2

    .line 417
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    add-int/2addr v0, v2

    .line 418
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    add-int/2addr v0, v2

    .line 419
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    add-int/2addr v0, v2

    .line 420
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    add-int/2addr v0, v2

    .line 421
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    add-int/2addr v0, v2

    .line 422
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    add-int/2addr v0, v2

    .line 423
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    add-int/2addr v0, v2

    .line 424
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    add-int/2addr v0, v2

    .line 425
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    add-int/2addr v0, v1

    .line 426
    return v0
.end method

.method public whitelist isCaptureTransitionSupported()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    return v0
.end method

.method public whitelist isConcurrentCaptureSupported()Z
    .registers 2

    .line 261
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    return v0
.end method

.method public whitelist isTriggerReturnedInEvent()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleProperties [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", implementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , supportedModelArch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSoundModels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxKeyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsCaptureTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBufferMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsConcurrentCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerConsumptionMw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnsTriggerInEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 320
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 331
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 333
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 335
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    return-void
.end method
