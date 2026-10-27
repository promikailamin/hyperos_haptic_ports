.class public Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private greylist-max-o mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private blacklist mIsStrongBiometric:Z

.field private greylist-max-o mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .registers 5

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 325
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 326
    iput p3, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mUserId:I

    .line 327
    iput-boolean p4, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mIsStrongBiometric:Z

    .line 328
    return-void
.end method


# virtual methods
.method public whitelist getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-object v0
.end method

.method public greylist getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method public greylist-max-o getUserId()I
    .registers 2

    .line 350
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mUserId:I

    return v0
.end method

.method public blacklist isStrongBiometric()Z
    .registers 2

    .line 358
    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mIsStrongBiometric:Z

    return v0
.end method
