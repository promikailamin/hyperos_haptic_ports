.class public final Landroid/hardware/camera2/params/SessionConfiguration;
.super Ljava/lang/Object;
.source "SessionConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/SessionConfiguration$SessionMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SESSION_HIGH_SPEED:I = 0x1

.field public static final whitelist SESSION_REGULAR:I = 0x0

.field public static final whitelist SESSION_SHARED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o SESSION_VENDOR_START:I = 0x8000

.field private static final blacklist TAG:Ljava/lang/String; = "SessionConfiguration"


# instance fields
.field private blacklist mColorSpace:I

.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

.field private final greylist-max-o mOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

.field private greylist-max-o mSessionType:I

.field private greylist-max-o mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 195
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/SessionConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 112
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 114
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    .line 163
    iput p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    .line 165
    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 112
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 114
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    .line 134
    iput p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    .line 136
    iput-object p4, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 137
    iput-object p3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 138
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 112
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 114
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 177
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 178
    sget-object v6, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 182
    if-eqz v6, :cond_38

    .line 183
    new-instance v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 184
    invoke-virtual {v6, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    .line 187
    :cond_38
    if-lez v1, :cond_46

    if-lez v2, :cond_46

    const/4 p1, -0x1

    if-eq v3, p1, :cond_46

    .line 188
    new-instance p1, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(IIIZ)V

    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 191
    :cond_46
    iput v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    .line 192
    iput-object v5, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    .line 193
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/SessionConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist clearColorSpace()V
    .registers 3

    .line 397
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    .line 398
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 399
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->clearColorSpace()V

    .line 400
    goto :goto_9

    .line 401
    :cond_19
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 250
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 251
    return v0

    .line 252
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 253
    return v1

    .line 254
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/SessionConfiguration;

    if-eqz v2, :cond_4c

    .line 255
    check-cast p1, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 256
    iget-object v2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v3, p1, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    if-ne v2, v3, :cond_4b

    iget v2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    iget v3, p1, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    if-ne v2, v3, :cond_4b

    iget-object v2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    .line 257
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_29

    goto :goto_4b

    .line 261
    :cond_29
    move v2, v0

    :goto_2a
    iget-object v3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 262
    iget-object v3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p1, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 263
    return v0

    .line 261
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 266
    :cond_4a
    return v1

    .line 258
    :cond_4b
    :goto_4b
    return v0

    .line 269
    :cond_4c
    return v0
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 410
    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 411
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    .line 413
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public whitelist getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    return-object v0
.end method

.method public whitelist getOutputConfigurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSessionParameters()Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public whitelist getSessionType()I
    .registers 2

    .line 288
    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    return v0
.end method

.method public whitelist getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 277
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 278
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace$Named;)V
    .registers 4

    .line 387
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    .line 388
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 389
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    .line 390
    goto :goto_c

    .line 391
    :cond_1c
    return-void
.end method

.method public whitelist setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .registers 4

    .line 327
    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 328
    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 333
    return-void

    .line 330
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method not supported for high speed session types"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 2

    .line 363
    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    .line 364
    return-void
.end method

.method public whitelist setStateCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 3

    .line 431
    iput-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 432
    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 433
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 210
    if-eqz p1, :cond_59

    .line 213
    iget p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    const/4 v0, 0x0

    if-eqz p2, :cond_31

    .line 215
    iget-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_3e

    .line 220
    :cond_31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    :goto_3e
    iget-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 226
    iget-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    if-eqz p2, :cond_55

    .line 227
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 228
    iget-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p2

    .line 229
    invoke-virtual {p2, p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    .line 230
    goto :goto_58

    .line 231
    :cond_55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 233
    :goto_58
    return-void

    .line 211
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
