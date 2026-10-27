.class public final Landroid/content/pm/PackageParser$SigningDetails;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$SigningDetails$SignatureSchemeVersion;,
        Landroid/content/pm/PackageParser$SigningDetails$Builder;,
        Landroid/content/pm/PackageParser$SigningDetails$CertCapabilities;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PAST_CERT_EXISTS:I

.field public static final greylist-max-o UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;


# instance fields
.field public final greylist-max-o pastSigningCertificates:[Landroid/content/pm/Signature;

.field public final greylist-max-o publicKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist-max-o signatureSchemeVersion:I

.field public final greylist signatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 5982
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    sput-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 6610
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$SigningDetails$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$SigningDetails;)V
    .registers 5

    .line 6009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6010
    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 6011
    iget-object v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_15

    .line 6012
    iget-object v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    goto :goto_17

    .line 6014
    :cond_15
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 6016
    :goto_17
    iget v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    iput v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 6017
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 6018
    iget-object v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_33

    .line 6019
    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {p1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3f

    .line 6021
    :cond_33
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3f

    .line 6024
    :cond_36
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 6025
    const/4 p1, 0x0

    iput p1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 6026
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 6027
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    .line 6029
    :goto_3f
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 6602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6603
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 6604
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 6605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 6606
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 6607
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    .line 6608
    return-void
.end method

.method public constructor greylist-max-o <init>([Landroid/content/pm/Signature;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 6006
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    .line 6007
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

    .line 5988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5989
    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 5990
    iput p2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 5991
    iput-object p3, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 5992
    iput-object p4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    .line 5993
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 5999
    invoke-static {p1}, Landroid/content/pm/PackageParser;->toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    .line 6001
    return-void
.end method

.method private blacklist getDescendantOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 8

    .line 6232
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 6235
    nop

    .line 6236
    move-object v0, p1

    move-object p1, p0

    goto :goto_13

    .line 6237
    :cond_b
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 6241
    nop

    .line 6242
    move-object v0, p0

    .line 6250
    :goto_13
    iget-object v2, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 6251
    iget-object v3, v0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 6252
    :goto_1d
    if-ltz v2, :cond_30

    iget-object v4, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v2

    iget-object v5, v0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    .line 6253
    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 6255
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 6259
    :cond_30
    if-gez v2, :cond_33

    .line 6260
    return-object v1

    .line 6265
    :cond_33
    add-int/lit8 v2, v2, -0x1

    .line 6266
    add-int/lit8 v3, v3, -0x1

    .line 6267
    if-ltz v2, :cond_49

    if-ltz v3, :cond_49

    iget-object v4, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v2

    iget-object v5, v0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    .line 6268
    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 6273
    :cond_49
    if-ltz v2, :cond_4e

    if-ltz v3, :cond_4e

    .line 6274
    return-object v1

    .line 6278
    :cond_4e
    return-object p1

    .line 6246
    :cond_4f
    return-object v1
.end method

.method private greylist-max-o hasCertificateInternal(Landroid/content/pm/Signature;I)Z
    .registers 7

    .line 6466
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 6467
    return v1

    .line 6471
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 6475
    move v0, v1

    :goto_e
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 6476
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 6477
    if-eqz p2, :cond_2b

    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 6478
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_2c

    .line 6479
    :cond_2b
    return v2

    .line 6475
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 6487
    :cond_2f
    iget-object p2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-ne p2, v2, :cond_3f

    iget-object p2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    move v1, v2

    :cond_3f
    return v1
.end method

.method private greylist-max-o hasSha256CertificateInternal([BI)Z
    .registers 7

    .line 6551
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 6552
    return v1

    .line 6554
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 6558
    move v0, v1

    :goto_e
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_37

    .line 6559
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 6560
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 6559
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v3

    .line 6561
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 6562
    if-eqz p2, :cond_33

    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 6563
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_34

    .line 6564
    :cond_33
    return v2

    .line 6558
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 6571
    :cond_37
    iget-object p2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-ne p2, v2, :cond_4d

    .line 6572
    iget-object p2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object p2, p2, v1

    .line 6573
    invoke-virtual {p2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object p2

    .line 6574
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 6576
    :cond_4d
    return v1
.end method

.method private blacklist mergeLineageWithAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 12

    .line 6075
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 6076
    iget-object v2, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 6077
    if-ltz v0, :cond_d6

    if-gez v2, :cond_f

    goto/16 :goto_d6

    .line 6081
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6082
    nop

    .line 6085
    :goto_15
    if-ltz v0, :cond_35

    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    iget-object v5, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 6087
    new-instance v4, Landroid/content/pm/Signature;

    iget-object v5, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v6, v0, -0x1

    aget-object v0, v5, v0

    invoke-direct {v4, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v6

    goto :goto_15

    .line 6091
    :cond_35
    if-gez v0, :cond_38

    .line 6092
    return-object p0

    .line 6091
    :cond_38
    const/4 v4, 0x0

    move v5, v4

    .line 6098
    :goto_3a
    iget-object v6, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v0, -0x1

    aget-object v0, v6, v0

    .line 6099
    iget-object v6, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v8, v2, -0x1

    aget-object v2, v6, v2

    .line 6101
    new-instance v6, Landroid/content/pm/Signature;

    invoke-direct {v6, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    .line 6102
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v2

    and-int/2addr v2, v9

    .line 6103
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v0

    if-eq v0, v2, :cond_5f

    .line 6104
    nop

    .line 6105
    invoke-virtual {v6, v2}, Landroid/content/pm/Signature;->setFlags(I)V

    move v5, v1

    .line 6107
    :cond_5f
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6108
    if-ltz v7, :cond_78

    if-ltz v8, :cond_78

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v0, v0, v7

    iget-object v2, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_78

    :cond_75
    move v0, v7

    move v2, v8

    goto :goto_3a

    .line 6113
    :cond_78
    :goto_78
    if-ltz v7, :cond_7d

    if-ltz v8, :cond_7d

    .line 6114
    return-object p0

    .line 6119
    :cond_7d
    :goto_7d
    if-ltz v8, :cond_8f

    .line 6120
    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v6, v8, -0x1

    aget-object v2, v2, v8

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v6

    goto :goto_7d

    .line 6123
    :cond_8f
    :goto_8f
    if-ltz v7, :cond_a1

    .line 6124
    new-instance p1, Landroid/content/pm/Signature;

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v2, v7, -0x1

    aget-object v0, v0, v7

    invoke-direct {p1, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v2

    goto :goto_8f

    .line 6129
    :cond_a1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-ne p1, v0, :cond_ad

    if-nez v5, :cond_ad

    .line 6131
    return-object p0

    .line 6135
    :cond_ad
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6137
    :try_start_b0
    new-instance p1, Landroid/content/pm/PackageParser$SigningDetails;

    new-array v0, v1, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    iget-object v2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    aput-object v1, v0, v4

    iget v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    new-array v2, v4, [Landroid/content/pm/Signature;

    .line 6138
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    invoke-direct {p1, v0, v1, v2}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    :try_end_cc
    .catch Ljava/security/cert/CertificateException; {:try_start_b0 .. :try_end_cc} :catch_cd

    .line 6137
    return-object p1

    .line 6139
    :catch_cd
    move-exception p1

    .line 6140
    const-string v0, "PackageParser"

    const-string v1, "Caught an exception creating the merged lineage: "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6141
    return-object p0

    .line 6078
    :cond_d6
    :goto_d6
    return-object p0
.end method


# virtual methods
.method public greylist-max-o checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .registers 6

    .line 6395
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1e

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_1e

    .line 6398
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    .line 6402
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result p1

    return p1

    .line 6408
    :cond_15
    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result p1

    return p1

    .line 6396
    :cond_1e
    :goto_1e
    return v1
.end method

.method public greylist-max-o checkCapability(Ljava/lang/String;I)Z
    .registers 5

    .line 6506
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 6507
    return v1

    .line 6511
    :cond_6
    if-nez p1, :cond_a

    .line 6512
    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-static {p1, v1}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 6513
    :goto_e
    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256Certificate([BI)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 6514
    const/4 p1, 0x1

    return p1

    .line 6522
    :cond_16
    iget-object p2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 6523
    invoke-static {p2}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object p2

    .line 6524
    nop

    .line 6525
    invoke-static {p2}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6526
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o checkCapabilityRecover(Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 6418
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p0, v0, :cond_a

    goto :goto_42

    .line 6421
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    .line 6424
    move v0, v1

    :goto_17
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_38

    .line 6425
    iget-object v3, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areEffectiveMatch(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 6428
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    if-ne v3, p2, :cond_35

    .line 6429
    return v2

    .line 6424
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 6435
    :cond_38
    return v1

    .line 6433
    :cond_39
    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object p2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p1, p2}, Landroid/content/pm/Signature;->areEffectiveArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p1

    return p1

    .line 6419
    :cond_42
    :goto_42
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 6586
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 6627
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 6628
    :cond_4
    instance-of v1, p1, Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 6630
    :cond_a
    check-cast p1, Landroid/content/pm/PackageParser$SigningDetails;

    .line 6632
    iget v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    iget v3, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    if-eq v1, v3, :cond_13

    return v2

    .line 6633
    :cond_13
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v3, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1, v3}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    .line 6634
    :cond_1e
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    if-eqz v1, :cond_2d

    .line 6635
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 6636
    return v2

    .line 6638
    :cond_2d
    iget-object v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    if-eqz v1, :cond_32

    .line 6639
    return v2

    .line 6644
    :cond_32
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v3, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 6645
    return v2

    .line 6648
    :cond_3d
    move v1, v2

    :goto_3e
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v1, v3, :cond_59

    .line 6649
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    .line 6650
    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    if-eq v3, v4, :cond_56

    .line 6651
    return v2

    .line 6648
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 6654
    :cond_59
    return v0
.end method

.method public greylist-max-o hasAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 7

    .line 6321
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_30

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_30

    .line 6324
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 6327
    move v0, v1

    :goto_17
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 6328
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    iget-object v4, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 6329
    return v2

    .line 6327
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 6333
    :cond_2f
    return v1

    .line 6322
    :cond_30
    :goto_30
    return v1
.end method

.method public greylist-max-o hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 5

    .line 6299
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1e

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_1e

    .line 6302
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    .line 6306
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result p1

    return p1

    .line 6311
    :cond_15
    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result p1

    return p1

    .line 6300
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

    .line 6182
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_71

    if-eqz p1, :cond_71

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_71

    .line 6186
    :cond_e
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3a

    .line 6190
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_1e

    .line 6191
    return v1

    .line 6193
    :cond_1e
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    move v4, v1

    :goto_22
    if-ge v4, v3, :cond_39

    aget-object v5, v0, v4

    .line 6194
    nop

    .line 6195
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    .line 6194
    invoke-static {v5}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v5

    .line 6196
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 6197
    return v1

    .line 6193
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 6200
    :cond_39
    return v2

    .line 6203
    :cond_3a
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 6204
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 6205
    return v2

    .line 6207
    :cond_4d
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 6210
    move v0, v1

    :goto_54
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_70

    .line 6211
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 6212
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 6211
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v3

    .line 6213
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 6214
    return v2

    .line 6210
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 6218
    :cond_70
    return v1

    .line 6183
    :cond_71
    :goto_71
    return v1
.end method

.method public greylist-max-o hasCertificate(Landroid/content/pm/Signature;)Z
    .registers 3

    .line 6445
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o hasCertificate(Landroid/content/pm/Signature;I)Z
    .registers 3

    .line 6456
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o hasCertificate([B)Z
    .registers 3

    .line 6461
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 6462
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result p1

    return p1
.end method

.method public blacklist hasCommonAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 3

    .line 6157
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6160
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result p1

    return p1

    .line 6162
    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6163
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result p1

    return p1

    .line 6168
    :cond_16
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->getDescendantOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public blacklist hasCommonSignerWithCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .registers 7

    .line 6349
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6b

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_6b

    .line 6354
    :cond_a
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_66

    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-le v0, v2, :cond_16

    goto :goto_66

    .line 6359
    :cond_16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6360
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 6361
    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_34

    .line 6363
    :cond_2b
    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6367
    :goto_34
    iget-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 6368
    return v2

    .line 6370
    :cond_3f
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 6373
    move p1, v1

    :goto_46
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_65

    .line 6374
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 6376
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_62

    .line 6377
    return v2

    .line 6373
    :cond_62
    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    .line 6382
    :cond_65
    return v1

    .line 6355
    :cond_66
    :goto_66
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result p1

    return p1

    .line 6350
    :cond_6b
    :goto_6b
    return v1
.end method

.method public greylist-max-o hasPastSigningCertificates()Z
    .registers 2

    .line 6288
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o hasSha256Certificate([B)Z
    .registers 3

    .line 6535
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o hasSha256Certificate([BI)Z
    .registers 3

    .line 6547
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o hasSignatures()Z
    .registers 2

    .line 6283
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

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

    .line 6659
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 6660
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    add-int/2addr v0, v1

    .line 6661
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    .line 6662
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6663
    return v0
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 3

    .line 6052
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6054
    nop

    .line 6053
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6054
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    move-object p1, p0

    .line 6053
    :goto_15
    return-object p1

    .line 6056
    :cond_16
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 6057
    return-object p0

    .line 6061
    :cond_1d
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->getDescendantOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    .line 6062
    if-nez v0, :cond_24

    .line 6063
    return-object p0

    .line 6065
    :cond_24
    if-ne v0, p0, :cond_2b

    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1

    goto :goto_2f

    .line 6066
    :cond_2b
    invoke-direct {p1, p0}, Landroid/content/pm/PackageParser$SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1

    .line 6065
    :goto_2f
    return-object p1
.end method

.method public greylist-max-o signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 3

    .line 6581
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, p1}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p1

    return p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 6591
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 6592
    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6593
    if-eqz v0, :cond_d

    .line 6594
    return-void

    .line 6596
    :cond_d
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 6597
    iget v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6598
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 6599
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 6600
    return-void
.end method
