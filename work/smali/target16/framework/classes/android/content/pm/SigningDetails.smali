.class public final Landroid/content/pm/SigningDetails;
.super Ljava/lang/Object;
.source "SigningDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SigningDetails$SignatureSchemeVersion;,
        Landroid/content/pm/SigningDetails$CapabilityMergeRule;,
        Landroid/content/pm/SigningDetails$Builder;,
        Landroid/content/pm/SigningDetails$CertCapabilities;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PAST_CERT_EXISTS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SigningDetails"

.field public static final blacklist UNKNOWN:Landroid/content/pm/SigningDetails;


# instance fields
.field private final blacklist mPastSigningCertificates:[Landroid/content/pm/Signature;

.field private final blacklist mPublicKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSignatureSchemeVersion:I

.field private final blacklist mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 142
    new-instance v0, Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    sput-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 835
    new-instance v0, Landroid/content/pm/SigningDetails$1;

    invoke-direct {v0}, Landroid/content/pm/SigningDetails$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/SigningDetails;)V
    .registers 5

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 171
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_15

    .line 172
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_17

    .line 174
    :cond_15
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 176
    :goto_17
    iget v1, p1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 177
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 178
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_33

    .line 179
    iget-object p1, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {p1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    iput-object p1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3f

    .line 181
    :cond_33
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3f

    .line 184
    :cond_36
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 185
    const/4 p1, 0x0

    iput p1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 186
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 187
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 189
    :goto_3f
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 829
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 831
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 832
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    iput-object p1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 833
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    .line 167
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;[",
            "Landroid/content/pm/Signature;",
            ")V"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 150
    iput p2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 151
    iput-object p3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 152
    iput-object p4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 153
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/content/pm/SigningDetails;->toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    .line 161
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1014
    return-void
.end method

.method private blacklist getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 8

    .line 466
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 469
    nop

    .line 470
    move-object v0, p1

    move-object p1, p0

    goto :goto_13

    .line 471
    :cond_b
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 475
    nop

    .line 476
    move-object v0, p0

    .line 484
    :goto_13
    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 485
    iget-object v3, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 486
    :goto_1d
    if-ltz v2, :cond_30

    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v2

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    .line 487
    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 489
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 493
    :cond_30
    if-gez v2, :cond_33

    .line 494
    return-object v1

    .line 499
    :cond_33
    add-int/lit8 v2, v2, -0x1

    .line 500
    add-int/lit8 v3, v3, -0x1

    .line 501
    if-ltz v2, :cond_49

    if-ltz v3, :cond_49

    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v2

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    .line 502
    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 507
    :cond_49
    if-ltz v2, :cond_4e

    if-ltz v3, :cond_4e

    .line 508
    return-object v1

    .line 512
    :cond_4e
    return-object p1

    .line 480
    :cond_4f
    return-object v1
.end method

.method private blacklist hasCertificateInternal(Landroid/content/pm/Signature;I)Z
    .registers 7

    .line 695
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 696
    return v1

    .line 700
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 703
    move v0, v1

    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 704
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 705
    if-eqz p2, :cond_2b

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 706
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_2c

    .line 707
    :cond_2b
    return v2

    .line 703
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 715
    :cond_2f
    iget-object p2, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-ne p2, v2, :cond_3f

    iget-object p2, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    move v1, v2

    :cond_3f
    return v1
.end method

.method private blacklist hasSha256CertificateInternal([BI)Z
    .registers 7

    .line 778
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 779
    return v1

    .line 781
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 784
    move v0, v1

    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_37

    .line 785
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 786
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 785
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v3

    .line 787
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 788
    if-eqz p2, :cond_33

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 789
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_34

    .line 790
    :cond_33
    return v2

    .line 784
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 797
    :cond_37
    iget-object p2, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-ne p2, v2, :cond_4d

    .line 798
    iget-object p2, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object p2

    .line 799
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 801
    :cond_4d
    return v1
.end method

.method private blacklist mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 14

    .line 298
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 299
    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 300
    if-ltz v0, :cond_f0

    if-gez v2, :cond_f

    goto/16 :goto_f0

    .line 304
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 305
    nop

    .line 308
    :goto_15
    if-ltz v0, :cond_35

    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    iget-object v5, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 310
    new-instance v4, Landroid/content/pm/Signature;

    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v6, v0, -0x1

    aget-object v0, v5, v0

    invoke-direct {v4, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v6

    goto :goto_15

    .line 314
    :cond_35
    if-gez v0, :cond_38

    .line 315
    return-object p0

    .line 314
    :cond_38
    const/4 v4, 0x0

    move v5, v4

    .line 321
    :goto_3a
    iget-object v6, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v0, -0x1

    aget-object v0, v6, v0

    .line 322
    iget-object v6, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v8, v2, -0x1

    aget-object v2, v6, v2

    .line 324
    new-instance v6, Landroid/content/pm/Signature;

    invoke-direct {v6, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    .line 325
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v10

    if-eq v9, v10, :cond_79

    .line 326
    nop

    .line 327
    packed-switch p2, :pswitch_data_f2

    goto :goto_78

    .line 335
    :pswitch_5a
    nop

    .line 336
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v2

    and-int/2addr v0, v2

    .line 335
    invoke-virtual {v6, v0}, Landroid/content/pm/Signature;->setFlags(I)V

    goto :goto_78

    .line 332
    :pswitch_68
    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 333
    goto :goto_78

    .line 329
    :pswitch_70
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 330
    nop

    .line 340
    :goto_78
    move v5, v1

    :cond_79
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    if-ltz v7, :cond_92

    if-ltz v8, :cond_92

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v0, v0, v7

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto :goto_92

    :cond_8f
    move v0, v7

    move v2, v8

    goto :goto_3a

    .line 346
    :cond_92
    :goto_92
    if-ltz v7, :cond_97

    if-ltz v8, :cond_97

    .line 347
    return-object p0

    .line 352
    :cond_97
    :goto_97
    if-ltz v8, :cond_a9

    .line 353
    new-instance p2, Landroid/content/pm/Signature;

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v2, v8, -0x1

    aget-object v0, v0, v8

    invoke-direct {p2, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v2

    goto :goto_97

    .line 356
    :cond_a9
    :goto_a9
    if-ltz v7, :cond_bb

    .line 357
    new-instance p1, Landroid/content/pm/Signature;

    iget-object p2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v0, v7, -0x1

    aget-object p2, p2, v7

    invoke-direct {p1, p2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v0

    goto :goto_a9

    .line 362
    :cond_bb
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-ne p1, p2, :cond_c7

    if-nez v5, :cond_c7

    .line 364
    return-object p0

    .line 368
    :cond_c7
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 370
    :try_start_ca
    new-instance p1, Landroid/content/pm/SigningDetails;

    new-array p2, v1, [Landroid/content/pm/Signature;

    new-instance v0, Landroid/content/pm/Signature;

    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    aput-object v0, p2, v4

    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    new-array v1, v4, [Landroid/content/pm/Signature;

    .line 371
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    invoke-direct {p1, p2, v0, v1}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    :try_end_e6
    .catch Ljava/security/cert/CertificateException; {:try_start_ca .. :try_end_e6} :catch_e7

    .line 370
    return-object p1

    .line 372
    :catch_e7
    move-exception p1

    .line 373
    const-string p2, "SigningDetails"

    const-string v0, "Caught an exception creating the merged lineage: "

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    return-object p0

    .line 301
    :cond_f0
    :goto_f0
    return-object p0

    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_70
        :pswitch_68
        :pswitch_5a
    .end packed-switch
.end method

.method public static blacklist toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 944
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 945
    const/4 v1, 0x0

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 946
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 945
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 948
    :cond_16
    return-object v0
.end method


# virtual methods
.method public blacklist checkCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 6

    .line 627
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1e

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_1e

    .line 630
    :cond_a
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    .line 633
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result p1

    return p1

    .line 638
    :cond_15
    iget-object p1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result p1

    return p1

    .line 628
    :cond_1e
    :goto_1e
    return v1
.end method

.method public blacklist checkCapability(Ljava/lang/String;I)Z
    .registers 5

    .line 734
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_28

    .line 739
    :cond_c
    invoke-static {p1, v1}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 740
    invoke-virtual {p0, v0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([BI)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 741
    const/4 p1, 0x1

    return p1

    .line 749
    :cond_18
    iget-object p2, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 750
    invoke-static {p2}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object p2

    .line 751
    nop

    .line 752
    invoke-static {p2}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 753
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 735
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 648
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3e

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p0, v0, :cond_a

    goto :goto_3e

    .line 651
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    .line 653
    move v0, v1

    :goto_17
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_38

    .line 654
    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areEffectiveMatch(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 657
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    if-ne v3, p2, :cond_35

    .line 658
    return v2

    .line 653
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 664
    :cond_38
    return v1

    .line 662
    :cond_39
    invoke-static {p1, p0}, Landroid/content/pm/Signature;->areEffectiveMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result p1

    return p1

    .line 649
    :cond_3e
    :goto_3e
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 853
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 854
    :cond_4
    instance-of v1, p1, Landroid/content/pm/SigningDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 856
    :cond_a
    check-cast p1, Landroid/content/pm/SigningDetails;

    .line 858
    iget v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v3, p1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    if-eq v1, v3, :cond_13

    return v2

    .line 859
    :cond_13
    invoke-static {p0, p1}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    .line 860
    :cond_1a
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v1, :cond_29

    .line 861
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 862
    return v2

    .line 864
    :cond_29
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v1, :cond_2e

    .line 865
    return v2

    .line 869
    :cond_2e
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 870
    return v2

    .line 873
    :cond_39
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_59

    .line 874
    move v1, v2

    :goto_3e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v1, v3, :cond_59

    .line 875
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    .line 876
    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    if-eq v3, v4, :cond_56

    .line 877
    return v2

    .line 874
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 881
    :cond_59
    return v0
.end method

.method public blacklist getPastSigningCertificates()[Landroid/content/pm/Signature;
    .registers 2

    .line 1005
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public blacklist getPublicKeys()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSignatureSchemeVersion()I
    .registers 2

    .line 979
    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    return v0
.end method

.method public blacklist getSignatures()[Landroid/content/pm/Signature;
    .registers 2

    .line 971
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public blacklist hasAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 7

    .line 553
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_30

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_30

    .line 556
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 558
    move v0, v1

    :goto_17
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 559
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 560
    return v2

    .line 558
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 564
    :cond_2f
    return v1

    .line 554
    :cond_30
    :goto_30
    return v1
.end method

.method public blacklist hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z
    .registers 5

    .line 533
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1e

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_1e

    .line 536
    :cond_a
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    .line 539
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result p1

    return p1

    .line 543
    :cond_15
    iget-object p1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result p1

    return p1

    .line 534
    :cond_1e
    :goto_1e
    return v1
.end method

.method public blacklist hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 415
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_71

    if-eqz p1, :cond_71

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_71

    .line 419
    :cond_e
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3a

    .line 423
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_1e

    .line 424
    return v1

    .line 426
    :cond_1e
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    move v4, v1

    :goto_22
    if-ge v4, v3, :cond_39

    aget-object v5, v0, v4

    .line 427
    nop

    .line 428
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    .line 427
    invoke-static {v5}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 430
    return v1

    .line 426
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 433
    :cond_39
    return v2

    .line 436
    :cond_3a
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 438
    return v2

    .line 440
    :cond_4d
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 443
    move v0, v1

    :goto_54
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_70

    .line 444
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 445
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 444
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 447
    return v2

    .line 443
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 451
    :cond_70
    return v1

    .line 416
    :cond_71
    :goto_71
    return v1
.end method

.method public blacklist hasCertificate(Landroid/content/pm/Signature;)Z
    .registers 3

    .line 674
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result p1

    return p1
.end method

.method public blacklist hasCertificate(Landroid/content/pm/Signature;I)Z
    .registers 3

    .line 685
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result p1

    return p1
.end method

.method public blacklist hasCertificate([B)Z
    .registers 3

    .line 690
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 691
    invoke-virtual {p0, v0}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result p1

    return p1
.end method

.method public blacklist hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 3

    .line 390
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_b

    .line 393
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result p1

    return p1

    .line 395
    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_16

    .line 396
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result p1

    return p1

    .line 401
    :cond_16
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public blacklist hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 7

    .line 580
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6b

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_6b

    .line 585
    :cond_a
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_66

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-le v0, v2, :cond_16

    goto :goto_66

    .line 590
    :cond_16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 591
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 592
    iget-object p1, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_34

    .line 594
    :cond_2b
    iget-object p1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 598
    :goto_34
    iget-object p1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 599
    return v2

    .line 601
    :cond_3f
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 604
    move p1, v1

    :goto_46
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_65

    .line 605
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 607
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_62

    .line 608
    return v2

    .line 604
    :cond_62
    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    .line 613
    :cond_65
    return v1

    .line 586
    :cond_66
    :goto_66
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result p1

    return p1

    .line 581
    :cond_6b
    :goto_6b
    return v1
.end method

.method public blacklist hasPastSigningCertificates()Z
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist hasSha256Certificate([B)Z
    .registers 3

    .line 762
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result p1

    return p1
.end method

.method public blacklist hasSha256Certificate([BI)Z
    .registers 3

    .line 774
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result p1

    return p1
.end method

.method public blacklist hasSignatures()Z
    .registers 2

    .line 517
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 886
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 887
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    add-int/2addr v0, v1

    .line 888
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    .line 889
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 890
    return v0
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 3

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 4

    .line 247
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_16

    .line 249
    nop

    .line 248
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 249
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_15

    :cond_14
    move-object p1, p0

    .line 248
    :goto_15
    return-object p1

    .line 251
    :cond_16
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 252
    return-object p0

    .line 256
    :cond_1d
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 257
    if-nez v0, :cond_24

    .line 258
    return-object p0

    .line 260
    :cond_24
    nop

    .line 261
    if-ne v0, p0, :cond_2c

    .line 264
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object p1

    goto :goto_42

    .line 268
    :cond_2c
    packed-switch p2, :pswitch_data_44

    move-object p1, p0

    goto :goto_42

    .line 278
    :pswitch_31
    invoke-direct {p1, p0, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object p1

    goto :goto_42

    .line 274
    :pswitch_36
    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 276
    goto :goto_42

    .line 270
    :pswitch_3c
    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 272
    nop

    .line 283
    :goto_42
    return-object p1

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method

.method public blacklist signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z
    .registers 2

    .line 806
    invoke-static {p0, p1}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result p1

    return p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 816
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 817
    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    if-eqz v0, :cond_d

    .line 819
    return-void

    .line 821
    :cond_d
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 822
    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 824
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 825
    return-void
.end method
