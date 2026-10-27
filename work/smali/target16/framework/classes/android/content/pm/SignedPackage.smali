.class public Landroid/content/pm/SignedPackage;
.super Ljava/lang/Object;
.source "SignedPackage.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mData:Landroid/content/pm/SignedPackageParcel;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/SignedPackageParcel;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/content/pm/SignedPackageParcel;

    invoke-direct {v0}, Landroid/content/pm/SignedPackageParcel;-><init>()V

    .line 44
    iput-object p1, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    .line 45
    iput-object p2, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    .line 46
    iput-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    .line 47
    return-void
.end method

.method static synthetic blacklist lambda$getCertificateDigest$0()[B
    .registers 1

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 76
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 77
    :cond_4
    instance-of v1, p1, Landroid/content/pm/SignedPackage;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    check-cast p1, Landroid/content/pm/SignedPackage;

    .line 78
    iget-object v1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v1, v1, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v3, v3, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v1, v1, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    iget-object p1, p1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object p1, p1, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    return v0

    .line 77
    :cond_2a
    return v2
.end method

.method public blacklist getCertificateDigest()[B
    .registers 3

    .line 65
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    new-instance v1, Landroid/content/pm/SignedPackage$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/pm/SignedPackage$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getCertificateDigestOrNull()[B
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    return-object v0
.end method

.method public final blacklist getData()Landroid/content/pm/SignedPackageParcel;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v1, v1, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
