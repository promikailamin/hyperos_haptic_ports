.class public final Landroid/content/om/OverlayIdentifier;
.super Ljava/lang/Object;
.source "OverlayIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/om/OverlayIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOverlayName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    new-instance v0, Landroid/content/om/OverlayIdentifier$1;

    invoke-direct {v0}, Landroid/content/om/OverlayIdentifier$1;-><init>()V

    sput-object v0, Landroid/content/om/OverlayIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 207
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_12
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    :goto_1b
    iput-object v1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    .line 80
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    return-void
.end method

.method public static blacklist fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;
    .registers 4

    .line 95
    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 96
    array-length v0, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    .line 97
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    aget-object v1, p0, v2

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 99
    :cond_16
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    aget-object p0, p0, v2

    invoke-direct {v0, p0}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 149
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 150
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 152
    :cond_12
    check-cast p1, Landroid/content/om/OverlayIdentifier;

    .line 154
    iget-object v2, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    .line 155
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    .line 156
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 154
    :goto_2a
    return v0

    .line 150
    :cond_2b
    :goto_2b
    return v1
.end method

.method public blacklist getOverlayName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 169
    nop

    .line 170
    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 171
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 89
    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    goto :goto_22

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_22
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 184
    nop

    .line 185
    iget-object p2, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 186
    :goto_9
    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    if-eqz v0, :cond_10

    or-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    .line 187
    :cond_10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    iget-object p2, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_1c

    iget-object p2, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    :cond_1c
    iget-object p2, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    if-eqz p2, :cond_25

    iget-object p2, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    :cond_25
    return-void
.end method
