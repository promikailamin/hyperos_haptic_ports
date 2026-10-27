.class public final Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
.super Ljava/lang/Object;
.source "FingerprintAuthenticateOptions.java"

# interfaces
.implements Landroid/hardware/biometrics/AuthenticateOptions;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mDisplayState:I

.field private final blacklist mIgnoreEnrollmentState:Z

.field private blacklist mIsMandatoryBiometrics:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mSensorId:I

.field private final blacklist mUserId:I

.field private blacklist mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAttributionTag()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultDisplayState()I
    .registers 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultDisplayState()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultIgnoreEnrollmentState()Z
    .registers 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultIgnoreEnrollmentState()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultOpPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSensorId()I
    .registers 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultSensorId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultUserId()I
    .registers 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultUserId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    .registers 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 370
    new-instance v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IIZILjava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;Z)V
    .registers 9

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    .line 129
    iput p2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    .line 130
    iput-boolean p3, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    .line 131
    iput p4, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    .line 132
    const-class p1, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    iget p2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 134
    iput-object p5, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 135
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 137
    iput-object p6, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 138
    iput-object p7, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 139
    iput-boolean p8, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    .line 142
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    .line 345
    :goto_10
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    .line 346
    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 350
    and-int/lit8 v7, v0, 0x20

    const/4 v8, 0x0

    if-nez v7, :cond_2d

    move-object v7, v8

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 351
    :goto_31
    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_37

    move-object p1, v8

    goto :goto_3f

    :cond_37
    sget-object v0, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 353
    :goto_3f
    iput v3, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    .line 354
    iput v4, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    .line 355
    iput-boolean v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    .line 356
    iput v5, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    .line 357
    const-class v0, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    invoke-static {v0, v8, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 359
    iput-object v6, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 360
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v0, v8, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 362
    iput-object v7, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 363
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 364
    iput-boolean v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    .line 367
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    return-void
.end method

.method private static blacklist defaultAttributionTag()Ljava/lang/String;
    .registers 1

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultDisplayState()I
    .registers 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultIgnoreEnrollmentState()Z
    .registers 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultOpPackageName()Ljava/lang/String;
    .registers 1

    .line 76
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist defaultSensorId()I
    .registers 1

    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist defaultUserId()I
    .registers 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    .registers 1

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 278
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 279
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_53

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_53

    .line 281
    :cond_12
    check-cast p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 283
    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    iget v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    iget v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    if-ne v2, v3, :cond_51

    iget-boolean v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    iget-boolean v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    iget v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 288
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 289
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    iget-object v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 290
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    iget-boolean p1, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-ne v2, p1, :cond_51

    goto :goto_52

    :cond_51
    move v0, v1

    .line 283
    :goto_52
    return v0

    .line 279
    :cond_53
    :goto_53
    return v1
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisplayState()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    return v0
.end method

.method public blacklist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSensorId()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 149
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    return v0
.end method

.method public blacklist getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 300
    nop

    .line 301
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 302
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    add-int/2addr v0, v2

    .line 303
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 304
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    add-int/2addr v0, v2

    .line 305
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 306
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 307
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 308
    mul-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    return v0
.end method

.method public blacklist isIgnoreEnrollmentState()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    return v0
.end method

.method public blacklist isMandatoryBiometrics()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return v0
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .registers 2

    .line 246
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public blacklist setIsMandatoryBiometrics(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .registers 2

    .line 267
    iput-boolean p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    .line 268
    return-object p0
.end method

.method public blacklist setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .registers 4

    .line 233
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 234
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 236
    return-object p0
.end method

.method public blacklist setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .registers 2

    .line 221
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    .line 222
    return-object p0
.end method

.method public blacklist setVendorReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .registers 2

    .line 258
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 259
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 318
    nop

    .line 319
    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 320
    :goto_8
    iget-boolean v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-eqz v1, :cond_e

    or-int/lit16 v0, v0, 0x80

    .line 321
    :cond_e
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_14

    or-int/lit8 v0, v0, 0x20

    .line 322
    :cond_14
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    if-eqz v1, :cond_1a

    or-int/lit8 v0, v0, 0x40

    .line 323
    :cond_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    :cond_3a
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 330
    :cond_43
    return-void
.end method
