.class public final Landroid/content/pm/ApkChecksum;
.super Ljava/lang/Object;
.source "ApkChecksum.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ApkChecksum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChecksum:Landroid/content/pm/Checksum;

.field private final blacklist mInstallerCertificate:[B

.field private final blacklist mInstallerPackageName:Ljava/lang/String;

.field private final blacklist mSplitName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 238
    new-instance v0, Landroid/content/pm/ApkChecksum$1;

    invoke-direct {v0}, Landroid/content/pm/ApkChecksum$1;-><init>()V

    sput-object v0, Landroid/content/pm/ApkChecksum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 222
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_12
    sget-object v3, Landroid/content/pm/Checksum;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Checksum;

    .line 224
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_20

    move-object v4, v2

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 225
    :goto_24
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2a

    move-object p1, v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 227
    :goto_2e
    iput-object v1, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    .line 228
    iput-object v3, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    .line 229
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 231
    iput-object v4, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    .line 232
    iput-object p1, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    .line 235
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I[B)V
    .registers 5

    .line 66
    new-instance v0, Landroid/content/pm/Checksum;

    invoke-direct {v0, p2, p3}, Landroid/content/pm/Checksum;-><init>(I[B)V

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    move-object p3, p2

    check-cast p3, [B

    invoke-direct {p0, p1, v0, p2, p2}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I[BLjava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 77
    new-instance v0, Landroid/content/pm/Checksum;

    invoke-direct {v0, p2, p3}, Landroid/content/pm/Checksum;-><init>(I[B)V

    .line 78
    if-eqz p5, :cond_c

    invoke-virtual {p5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p2

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    .line 77
    :goto_d
    invoke-direct {p0, p1, v0, p4, p2}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V
    .registers 6

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    .line 155
    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 157
    iput-object p3, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    .line 161
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInstallerCertificate()Ljava/security/cert/Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    if-nez v0, :cond_6

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_6
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 116
    return-object v0
.end method

.method public blacklist getInstallerCertificateBytes()[B
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    return-object v0
.end method

.method public whitelist getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSplitName()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    invoke-virtual {v0}, Landroid/content/pm/Checksum;->getType()I

    move-result v0

    return v0
.end method

.method public whitelist getValue()[B
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    invoke-virtual {v0}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkChecksum { splitName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checksum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installerPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installerCertificate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    .line 189
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 199
    nop

    .line 200
    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 201
    :goto_9
    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 202
    :cond_10
    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 203
    :cond_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 204
    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    :cond_23
    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    iget-object p2, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    if-eqz p2, :cond_31

    iget-object p2, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    :cond_31
    iget-object p2, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    if-eqz p2, :cond_3a

    iget-object p2, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 208
    :cond_3a
    return-void
.end method
