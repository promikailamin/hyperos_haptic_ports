.class public final Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;
.super Ljava/lang/Object;
.source "AuthenticationAcquiredInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAcquiredInfo:I

.field private final blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final blacklist mRequestReason:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;II)V
    .registers 6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 79
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 81
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mRequestReason:I

    .line 82
    const-class p1, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mRequestReason:I

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 84
    iput p3, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mAcquiredInfo:I

    .line 87
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricSourceType;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 173
    iput-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 174
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 176
    iput v1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mRequestReason:I

    .line 177
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mRequestReason:I

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 179
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mAcquiredInfo:I

    .line 182
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 124
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 126
    :cond_12
    check-cast p1, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;

    .line 128
    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v3, p1, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 129
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mRequestReason:I

    iget v3, p1, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mRequestReason:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mAcquiredInfo:I

    iget p1, p1, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mAcquiredInfo:I

    if-ne v2, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 128
    :goto_2c
    return v0

    .line 124
    :cond_2d
    :goto_2d
    return v1
.end method

.method public blacklist getAcquiredInfo()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mAcquiredInfo:I

    return v0
.end method

.method public blacklist getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public blacklist getRequestReason()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mRequestReason:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 140
    nop

    .line 141
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 142
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mRequestReason:I

    add-int/2addr v0, v2

    .line 143
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mAcquiredInfo:I

    add-int/2addr v0, v1

    .line 144
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 153
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mRequestReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->mAcquiredInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
