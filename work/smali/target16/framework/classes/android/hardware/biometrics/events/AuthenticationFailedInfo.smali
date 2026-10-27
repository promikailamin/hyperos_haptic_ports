.class public final Landroid/hardware/biometrics/events/AuthenticationFailedInfo;
.super Ljava/lang/Object;
.source "AuthenticationFailedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/events/AuthenticationFailedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final blacklist mRequestReason:I

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;II)V
    .registers 6

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 75
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 77
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mRequestReason:I

    .line 78
    const-class p1, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mRequestReason:I

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 80
    iput p3, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mUserId:I

    .line 83
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricSourceType;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    iput-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 168
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 170
    iput v1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mRequestReason:I

    .line 171
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mRequestReason:I

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 173
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mUserId:I

    .line 176
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 118
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 120
    :cond_12
    check-cast p1, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;

    .line 122
    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v3, p1, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 123
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mRequestReason:I

    iget v3, p1, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mRequestReason:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mUserId:I

    iget p1, p1, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mUserId:I

    if-ne v2, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 122
    :goto_2c
    return v0

    .line 118
    :cond_2d
    :goto_2d
    return v1
.end method

.method public blacklist getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public blacklist getRequestReason()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mRequestReason:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 134
    nop

    .line 135
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 136
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mRequestReason:I

    add-int/2addr v0, v2

    .line 137
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mUserId:I

    add-int/2addr v0, v1

    .line 138
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 147
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mRequestReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return-void
.end method
