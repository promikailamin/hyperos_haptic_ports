.class public final Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
.super Ljava/lang/Object;
.source "AuthenticationSucceededInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final blacklist mIsStrongBiometric:Z

.field private final blacklist mRequestReason:I

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 202
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;IZI)V
    .registers 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 81
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 83
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    .line 84
    const-class p1, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 86
    iput-boolean p3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    .line 87
    iput p4, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    .line 90
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 184
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 185
    :goto_e
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricSourceType;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 189
    iput-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 190
    const-class v1, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 192
    iput v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    .line 193
    const-class v1, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    invoke-static {v1, v4, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 195
    iput-boolean v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    .line 196
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    .line 199
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 133
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 135
    :cond_12
    check-cast p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;

    .line 137
    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v3, p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 138
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    iget v3, p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    if-ne v2, v3, :cond_31

    iget-boolean v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    iget-boolean v3, p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    iget p1, p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    if-ne v2, p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    .line 137
    :goto_32
    return v0

    .line 133
    :cond_33
    :goto_33
    return v1
.end method

.method public blacklist getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public blacklist getRequestReason()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 150
    nop

    .line 151
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 152
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    add-int/2addr v0, v2

    .line 153
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 154
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    add-int/2addr v0, v1

    .line 155
    return v0
.end method

.method public blacklist isIsStrongBiometric()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 164
    nop

    .line 165
    iget-boolean v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 166
    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 168
    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return-void
.end method
