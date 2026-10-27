.class public final Landroid/hardware/input/HostUsiVersion;
.super Ljava/lang/Object;
.source "HostUsiVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/HostUsiVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMajorVersion:I

.field private final blacklist mMinorVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/hardware/input/HostUsiVersion$1;

    invoke-direct {v0}, Landroid/hardware/input/HostUsiVersion$1;-><init>()V

    sput-object v0, Landroid/hardware/input/HostUsiVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    .line 84
    iput p2, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    .line 87
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 172
    iput v0, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    .line 173
    iput p1, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    .line 176
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
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

    .line 126
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 127
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 129
    :cond_12
    check-cast p1, Landroid/hardware/input/HostUsiVersion;

    .line 131
    iget v2, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    iget v3, p1, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    iget p1, p1, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    if-ne v2, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    .line 127
    :cond_23
    :goto_23
    return v1
.end method

.method public whitelist getMajorVersion()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    return v0
.end method

.method public whitelist getMinorVersion()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 142
    nop

    .line 143
    iget v0, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 144
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    add-int/2addr v0, v1

    .line 145
    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 50
    iget v0, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HostUsiVersion { majorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

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

    .line 154
    iget p2, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget p2, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
