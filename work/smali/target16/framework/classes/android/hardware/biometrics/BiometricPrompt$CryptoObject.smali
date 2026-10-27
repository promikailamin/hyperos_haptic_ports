.class public final Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
.super Landroid/hardware/biometrics/CryptoObject;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# direct methods
.method public constructor whitelist <init>(J)V
    .registers 3

    .line 1197
    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/CryptoObject;-><init>(J)V

    .line 1198
    return-void
.end method

.method public constructor whitelist <init>(Landroid/security/identity/IdentityCredential;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1167
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Landroid/security/identity/IdentityCredential;)V

    .line 1168
    return-void
.end method

.method public constructor whitelist <init>(Landroid/security/identity/PresentationSession;)V
    .registers 2

    .line 1176
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Landroid/security/identity/PresentationSession;)V

    .line 1177
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/Signature;)V
    .registers 2

    .line 1138
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljava/security/Signature;)V

    .line 1139
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;)V
    .registers 2

    .line 1147
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 1148
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/KeyAgreement;)V
    .registers 2

    .line 1186
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/KeyAgreement;)V

    .line 1187
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;)V
    .registers 2

    .line 1156
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    .line 1157
    return-void
.end method


# virtual methods
.method public whitelist getCipher()Ljavax/crypto/Cipher;
    .registers 2

    .line 1213
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIdentityCredential()Landroid/security/identity/IdentityCredential;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1231
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getIdentityCredential()Landroid/security/identity/IdentityCredential;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyAgreement()Ljavax/crypto/KeyAgreement;
    .registers 2

    .line 1248
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getKeyAgreement()Ljavax/crypto/KeyAgreement;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMac()Ljavax/crypto/Mac;
    .registers 2

    .line 1221
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOperationHandle()J
    .registers 3

    .line 1269
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getPresentationSession()Landroid/security/identity/PresentationSession;
    .registers 2

    .line 1239
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getPresentationSession()Landroid/security/identity/PresentationSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSignature()Ljava/security/Signature;
    .registers 2

    .line 1205
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
