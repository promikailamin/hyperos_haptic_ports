.class public final Landroid/content/pm/SigningInfo;
.super Ljava/lang/Object;
.source "SigningInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SigningInfo$AppSigningSchemeVersion;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist VERSION_JAR:I = 0x1

.field public static final whitelist VERSION_SIGNING_BLOCK_V2:I = 0x2

.field public static final whitelist VERSION_SIGNING_BLOCK_V3:I = 0x3

.field public static final whitelist VERSION_SIGNING_BLOCK_V4:I = 0x4


# instance fields
.field private final blacklist mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 246
    new-instance v0, Landroid/content/pm/SigningInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SigningInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    if-lez p1, :cond_51

    if-nez p2, :cond_8

    goto :goto_51

    .line 102
    :cond_8
    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 103
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/Signature;

    goto :goto_1f

    .line 104
    :cond_1e
    move-object p2, v0

    .line 106
    :goto_1f
    if-eqz p4, :cond_34

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 107
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-interface {p4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/content/pm/Signature;

    goto :goto_35

    .line 108
    :cond_34
    move-object p4, v0

    .line 109
    :goto_35
    invoke-static {p2, p4}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 110
    move-object p4, v0

    .line 113
    :cond_3c
    if-eqz p3, :cond_49

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 114
    :cond_49
    new-instance p3, Landroid/content/pm/SigningDetails;

    invoke-direct {p3, p2, p1, v0, p4}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    iput-object p3, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 115
    return-void

    .line 99
    :cond_51
    :goto_51
    sget-object p1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p1, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/SigningDetails;)V
    .registers 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 122
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/SigningInfo;)V
    .registers 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/content/pm/SigningDetails;

    iget-object p1, p1, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 126
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget-object v0, Landroid/content/pm/SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/SigningDetails;

    iput-object p1, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 130
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/SigningInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getApkContentsSigners()[Landroid/content/pm/Signature;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPublicKeys()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSchemeVersion()I
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v0

    return v0
.end method

.method public whitelist getSigningCertificateHistory()[Landroid/content/pm/Signature;
    .registers 2

    .line 175
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 176
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_15

    .line 180
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0

    .line 184
    :cond_15
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public whitelist hasMultipleSigners()Z
    .registers 3

    .line 137
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 138
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 137
    :goto_14
    return v1
.end method

.method public whitelist hasPastSigningCertificates()Z
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 151
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 150
    :goto_14
    return v0
.end method

.method public whitelist signersMatchExactly(Landroid/content/pm/SigningInfo;)Z
    .registers 3

    .line 243
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-object p1, p1, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result p1

    return p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 228
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/SigningDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    return-void
.end method
