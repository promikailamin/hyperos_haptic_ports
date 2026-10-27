.class public final Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
.super Ljava/lang/Object;
.source "AuthenticationHelpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/events/AuthenticationHelpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final blacklist mHelpCode:I

.field private final blacklist mHelpString:Ljava/lang/String;

.field private final blacklist mRequestReason:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 204
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V
    .registers 7

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 82
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 84
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    .line 85
    const-class p1, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 87
    iput-object p3, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    .line 88
    iput p4, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 186
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricSourceType;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_1a

    move-object v0, v3

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    iput-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 192
    const-class v1, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v1, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 194
    iput v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    .line 195
    const-class v1, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 197
    iput-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    .line 198
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    .line 201
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 134
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 136
    :cond_12
    check-cast p1, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    .line 138
    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v3, p1, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 139
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    iget v3, p1, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    .line 141
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    iget p1, p1, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    if-ne v2, p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    .line 138
    :goto_36
    return v0

    .line 134
    :cond_37
    :goto_37
    return v1
.end method

.method public blacklist getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public blacklist getHelpCode()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    return v0
.end method

.method public blacklist getHelpString()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequestReason()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 151
    nop

    .line 152
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 153
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    add-int/2addr v0, v2

    .line 154
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 155
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    add-int/2addr v0, v1

    .line 156
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 165
    nop

    .line 166
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 167
    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object p2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    if-eqz p2, :cond_1f

    iget-object p2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    :cond_1f
    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    return-void
.end method
