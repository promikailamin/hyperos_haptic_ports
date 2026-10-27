.class public Landroid/hardware/fingerprint/FingerprintCallback;
.super Ljava/lang/Object;
.source "FingerprintCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintCallback$RemoveRequest;
    }
.end annotation


# static fields
.field public static final blacklist REMOVE_ALL:I = 0x2

.field public static final blacklist REMOVE_SINGLE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FingerprintCallback"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private blacklist mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private blacklist mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private blacklist mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

.field private blacklist mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

.field private blacklist mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private blacklist mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private blacklist mRemoveRequest:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 75
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 76
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 90
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    .line 83
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    .line 97
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;ILandroid/hardware/fingerprint/Fingerprint;)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 105
    iput p2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveRequest:I

    .line 106
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist sendAcquiredResult(Landroid/content/Context;II)V
    .registers 7

    .line 185
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_9

    .line 186
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 188
    :cond_9
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v1, 0x7

    if-eqz v0, :cond_1a

    if-eq p2, v1, :cond_1a

    .line 189
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-nez p2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onAcquired(Z)V

    .line 191
    :cond_1a
    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 192
    if-nez p1, :cond_21

    .line 193
    return-void

    .line 196
    :cond_21
    const/4 v0, 0x6

    if-ne p2, v0, :cond_27

    .line 197
    add-int/lit16 p3, p3, 0x3e8

    goto :goto_28

    :cond_27
    move p3, p2

    .line 198
    :goto_28
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_32

    .line 199
    iget-object p2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p2, p3, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_3d

    .line 200
    :cond_32
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_3d

    .line 201
    if-eq p2, v1, :cond_3d

    .line 202
    iget-object p2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {p2, p3, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 205
    :cond_3d
    :goto_3d
    return-void
.end method

.method public blacklist sendAuthenticatedFailed()V
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_9

    .line 174
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 176
    :cond_9
    return-void
.end method

.method public blacklist sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .registers 6

    .line 159
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_c

    .line 160
    const-string p1, "FingerprintCallback"

    const-string p2, "Authentication succeeded but callback is null."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 164
    :cond_c
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;-><init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;IZ)V

    .line 166
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 167
    return-void
.end method

.method public blacklist sendChallengeGenerated(JII)V
    .registers 6

    .line 239
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    if-nez v0, :cond_c

    .line 240
    const-string p1, "FingerprintCallback"

    const-string p2, "sendChallengeGenerated, callback null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    invoke-interface {v0, p3, p4, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;->onChallengeGenerated(IIJ)V

    .line 244
    return-void
.end method

.method public blacklist sendEnrollResult(I)V
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 117
    :cond_9
    return-void
.end method

.method public blacklist sendErrorResult(Landroid/content/Context;II)V
    .registers 7

    .line 215
    const/16 v0, 0x8

    if-ne p2, v0, :cond_7

    .line 216
    add-int/lit16 v0, p3, 0x3e8

    goto :goto_8

    :cond_7
    move v0, p2

    .line 217
    :goto_8
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v1, :cond_16

    .line 218
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 219
    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {v1, v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_40

    .line 220
    :cond_16
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v1, :cond_24

    .line 221
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 222
    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {v1, v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_40

    .line 223
    :cond_24
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    if-eqz v1, :cond_34

    .line 224
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 225
    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {v1, v2, v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_40

    .line 226
    :cond_34
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    if-eqz p1, :cond_40

    .line 227
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    invoke-interface {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;->onDetectionError(I)V

    .line 228
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    .line 230
    :cond_40
    :goto_40
    return-void
.end method

.method public blacklist sendFingerprintDetected(IIZ)V
    .registers 5

    .line 253
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    if-nez v0, :cond_c

    .line 254
    const-string p1, "FingerprintCallback"

    const-string p2, "sendFingerprintDetected, callback null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 257
    :cond_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;->onFingerprintDetected(IIZ)V

    .line 258
    return-void
.end method

.method public blacklist sendRemovedResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 6

    .line 125
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    if-nez v0, :cond_5

    .line 126
    return-void

    .line 129
    :cond_5
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveRequest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4f

    .line 130
    const-string v0, "FingerprintCallback"

    if-nez p1, :cond_14

    .line 131
    const-string p1, "Received MSG_REMOVED, but fingerprint is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_14
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    if-nez v1, :cond_1e

    .line 136
    const-string p1, "Missing fingerprint"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 140
    :cond_1e
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    .line 141
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v2

    .line 142
    if-eqz v2, :cond_4f

    if-eqz v1, :cond_4f

    if-eq v1, v2, :cond_4f

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Finger id didn\'t match: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " != "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 148
    :cond_4f
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 149
    return-void
.end method

.method public blacklist sendUdfpsOverlayShown()V
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_9

    .line 296
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsOverlayShown()V

    .line 298
    :cond_9
    return-void
.end method

.method public blacklist sendUdfpsPointerDown(I)V
    .registers 4

    .line 265
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_c

    .line 266
    const-string v0, "FingerprintCallback"

    const-string v1, "sendUdfpsPointerDown, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 268
    :cond_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onUdfpsPointerDown(I)V

    .line 271
    :goto_11
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_1a

    .line 272
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsPointerDown(I)V

    .line 274
    :cond_1a
    return-void
.end method

.method public blacklist sendUdfpsPointerUp(I)V
    .registers 4

    .line 281
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_c

    .line 282
    const-string v0, "FingerprintCallback"

    const-string v1, "sendUdfpsPointerUp, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 284
    :cond_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onUdfpsPointerUp(I)V

    .line 286
    :goto_11
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_1a

    .line 287
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsPointerUp(I)V

    .line 289
    :cond_1a
    return-void
.end method
