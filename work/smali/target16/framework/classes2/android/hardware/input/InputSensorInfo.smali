.class public Landroid/hardware/input/InputSensorInfo;
.super Ljava/lang/Object;
.source "InputSensorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/InputSensorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFifoMaxEventCount:I

.field private blacklist mFifoReservedEventCount:I

.field private blacklist mFlags:I

.field private blacklist mHandle:I

.field private blacklist mId:I

.field private blacklist mMaxDelay:I

.field private blacklist mMaxRange:F

.field private blacklist mMinDelay:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPower:F

.field private blacklist mRequiredPermission:Ljava/lang/String;

.field private blacklist mResolution:F

.field private blacklist mStringType:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mVendor:Ljava/lang/String;

.field private blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 305
    new-instance v0, Landroid/hardware/input/InputSensorInfo$1;

    invoke-direct {v0}, Landroid/hardware/input/InputSensorInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/input/InputSensorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 20

    .line 255
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 274
    move/from16 v16, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 276
    iput-object v1, v0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    .line 277
    const-class v1, Landroid/annotation/NonNull;

    move/from16 p1, v15

    iget-object v15, v0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    move/from16 v17, v14

    const/4 v14, 0x0

    invoke-static {v1, v14, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 279
    iput-object v2, v0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    .line 280
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, v0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-static {v1, v14, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 282
    iput v3, v0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    .line 283
    iput v4, v0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    .line 284
    iput v5, v0, Landroid/hardware/input/InputSensorInfo;->mType:I

    .line 285
    iput v6, v0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    .line 286
    iput v7, v0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    .line 287
    iput v8, v0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    .line 288
    iput v9, v0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    .line 289
    iput v10, v0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    .line 290
    iput v11, v0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    .line 291
    iput-object v12, v0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    .line 292
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, v0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-static {v1, v14, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 294
    iput-object v13, v0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    .line 295
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, v0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-static {v1, v14, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 297
    move/from16 v1, v17

    iput v1, v0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    .line 298
    move/from16 v1, v16

    iput v1, v0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    .line 299
    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/input/InputSensorInfo;->mId:I

    .line 302
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIIFFFIIILjava/lang/String;Ljava/lang/String;III)V
    .registers 19

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    .line 91
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 93
    iput-object p2, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    .line 94
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 96
    iput p3, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    .line 97
    iput p4, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    .line 98
    iput p5, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    .line 99
    iput p6, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    .line 100
    iput p7, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    .line 101
    iput p8, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    .line 102
    iput p9, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    .line 103
    iput p10, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    .line 104
    iput p11, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    .line 105
    iput-object p12, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    .line 106
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 108
    iput-object p13, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    .line 109
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 111
    move/from16 p1, p14

    iput p1, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    .line 112
    move/from16 p1, p15

    iput p1, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    .line 113
    move/from16 p1, p16

    iput p1, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    .line 116
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFifoMaxEventCount()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    return v0
.end method

.method public blacklist getFifoReservedEventCount()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    return v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    return v0
.end method

.method public blacklist getHandle()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    return v0
.end method

.method public blacklist getMaxDelay()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    return v0
.end method

.method public blacklist getMaxRange()F
    .registers 2

    .line 145
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    return v0
.end method

.method public blacklist getMinDelay()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPower()F
    .registers 2

    .line 155
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    return v0
.end method

.method public blacklist getRequiredPermission()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResolution()F
    .registers 2

    .line 150
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    return v0
.end method

.method public blacklist getStringType()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    return v0
.end method

.method public blacklist getVendor()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputSensorInfo { name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vendor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fifoReservedEventCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fifoMaxEventCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stringType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requiredPermission = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 230
    iget-object p2, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 236
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 237
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 238
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object p2, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget p2, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return-void
.end method
