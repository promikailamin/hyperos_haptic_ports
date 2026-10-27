.class public Landroid/hardware/fingerprint/FingerprintFidoIn;
.super Ljava/lang/Object;
.source "FingerprintFidoIn.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/FingerprintFidoIn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist AAID:Ljava/lang/String;

.field private blacklist nonce:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/hardware/fingerprint/FingerprintFidoIn$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintFidoIn$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintFidoIn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 19
    .local v0, "ba":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 20
    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    .line 21
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAAID()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNonce()[B
    .registers 2

    .line 24
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    return-object v0
.end method

.method public blacklist setAAID(Ljava/lang/String;)V
    .registers 2
    .param p1, "AAID"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public blacklist setNonce([B)V
    .registers 2
    .param p1, "nonce"    # [B

    .line 28
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    .line 29
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FingerprintFidoIn [AAID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 46
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 48
    return-void
.end method
