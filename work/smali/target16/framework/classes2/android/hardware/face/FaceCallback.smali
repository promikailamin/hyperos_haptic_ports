.class public Landroid/hardware/face/FaceCallback;
.super Ljava/lang/Object;
.source "FaceCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = " FaceCallback"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

.field private blacklist mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private blacklist mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private blacklist mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

.field private blacklist mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

.field private blacklist mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

.field private blacklist mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private blacklist mRemovalFace:Landroid/hardware/face/Face;

.field private blacklist mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/hardware/biometrics/CryptoObject;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 72
    iput-object p2, p0, Landroid/hardware/face/FaceCallback;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    .line 73
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$EnrollmentCallback;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 87
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$FaceDetectionCallback;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    .line 80
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .registers 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 94
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$GetFeatureCallback;)V
    .registers 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    .line 108
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$RemovalCallback;)V
    .registers 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 123
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$RemovalCallback;Landroid/hardware/face/Face;)V
    .registers 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 115
    iput-object p2, p0, Landroid/hardware/face/FaceCallback;->mRemovalFace:Landroid/hardware/face/Face;

    .line 116
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$SetFeatureCallback;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    .line 101
    return-void
.end method

.method private static blacklist getHelpCode(II)I
    .registers 3

    .line 317
    const/16 v0, 0x16

    if-ne p0, v0, :cond_7

    .line 318
    add-int/lit16 p0, p1, 0x3e8

    goto :goto_8

    .line 319
    :cond_7
    nop

    .line 317
    :goto_8
    return p0
.end method


# virtual methods
.method public blacklist sendAcquiredResult(Landroid/content/Context;II)V
    .registers 6

    .line 254
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_12

    .line 255
    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame;

    new-instance v1, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v1, p2, p3}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    .line 257
    invoke-virtual {p0, p1, v0}, Landroid/hardware/face/FaceCallback;->sendAuthenticationFrame(Landroid/content/Context;Landroid/hardware/face/FaceAuthenticationFrame;)V

    goto :goto_26

    .line 258
    :cond_12
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_26

    .line 259
    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    new-instance v1, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v1, p2, p3}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    .line 263
    invoke-virtual {p0, p1, v0}, Landroid/hardware/face/FaceCallback;->sendEnrollmentFrame(Landroid/content/Context;Landroid/hardware/face/FaceEnrollFrame;)V

    goto :goto_27

    .line 258
    :cond_26
    :goto_26
    nop

    .line 265
    :goto_27
    return-void
.end method

.method public blacklist sendAuthenticatedFailed()V
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 245
    :cond_9
    return-void
.end method

.method public blacklist sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V
    .registers 6

    .line 231
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_10

    .line 232
    new-instance v0, Landroid/hardware/face/FaceManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/FaceManager$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V

    .line 234
    iget-object p1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V

    .line 236
    :cond_10
    return-void
.end method

.method public blacklist sendAuthenticationFrame(Landroid/content/Context;Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 5

    .line 274
    if-nez p2, :cond_a

    .line 275
    const-string p1, " FaceCallback"

    const-string p2, "Received null authentication frame"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 276
    :cond_a
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_32

    .line 278
    invoke-virtual {p2}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    .line 279
    invoke-virtual {p2}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result p2

    .line 280
    invoke-static {v0, p2}, Landroid/hardware/face/FaceCallback;->getHelpCode(II)I

    move-result v1

    .line 281
    invoke-static {p1, v0, p2}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object p2, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {p2, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 285
    if-eqz p1, :cond_32

    .line 286
    iget-object p2, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {p2, v1, p1}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 289
    :cond_32
    :goto_32
    return-void
.end method

.method public blacklist sendChallengeGenerated(IIJ)V
    .registers 6

    .line 157
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    if-nez v0, :cond_5

    .line 158
    return-void

    .line 160
    :cond_5
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager$GenerateChallengeCallback;->onGenerateChallengeResult(IIJ)V

    .line 161
    return-void
.end method

.method public blacklist sendEnrollResult(I)V
    .registers 3

    .line 219
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 222
    :cond_9
    return-void
.end method

.method public blacklist sendEnrollmentFrame(Landroid/content/Context;Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 14

    .line 297
    if-nez p2, :cond_a

    .line 298
    const-string p1, " FaceCallback"

    const-string p2, "Received null enrollment frame"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 299
    :cond_a
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_3b

    .line 300
    invoke-virtual {p2}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v1

    .line 302
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v2

    .line 303
    invoke-static {v1, v2}, Landroid/hardware/face/FaceCallback;->getHelpCode(II)I

    move-result v4

    .line 304
    invoke-static {p1, v1, v2}, Landroid/hardware/face/FaceManager;->getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 305
    iget-object v3, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 308
    invoke-virtual {p2}, Landroid/hardware/face/FaceEnrollFrame;->getCell()Landroid/hardware/face/FaceEnrollCell;

    move-result-object v6

    .line 309
    invoke-virtual {p2}, Landroid/hardware/face/FaceEnrollFrame;->getStage()I

    move-result v7

    .line 310
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getPan()F

    move-result v8

    .line 311
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getTilt()F

    move-result v9

    .line 312
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getDistance()F

    move-result v10

    .line 305
    invoke-virtual/range {v3 .. v10}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V

    .line 314
    :cond_3b
    :goto_3b
    return-void
.end method

.method public blacklist sendErrorResult(Landroid/content/Context;II)V
    .registers 7

    .line 197
    const/16 v0, 0x8

    if-ne p2, v0, :cond_7

    .line 198
    add-int/lit16 v0, p3, 0x3e8

    goto :goto_8

    :cond_7
    move v0, p2

    .line 199
    :goto_8
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v1, :cond_16

    .line 200
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 201
    invoke-static {p1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {v1, v0, p1}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_40

    .line 202
    :cond_16
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v1, :cond_24

    .line 203
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 204
    invoke-static {p1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {v1, v0, p1}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_40

    .line 205
    :cond_24
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-eqz v1, :cond_34

    .line 206
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    iget-object v2, p0, Landroid/hardware/face/FaceCallback;->mRemovalFace:Landroid/hardware/face/Face;

    .line 207
    invoke-static {p1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {v1, v2, v0, p1}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V

    goto :goto_40

    .line 208
    :cond_34
    iget-object p1, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    if-eqz p1, :cond_40

    .line 209
    iget-object p1, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    invoke-interface {p1, p2}, Landroid/hardware/face/FaceManager$FaceDetectionCallback;->onDetectionError(I)V

    .line 210
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    .line 212
    :cond_40
    :goto_40
    return-void
.end method

.method public blacklist sendFaceDetected(IIZ)V
    .registers 5

    .line 170
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    if-nez v0, :cond_c

    .line 171
    const-string p1, " FaceCallback"

    const-string p2, "sendFaceDetected, callback null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 174
    :cond_c
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceDetectionCallback;->onFaceDetected(IIZ)V

    .line 175
    return-void
.end method

.method public blacklist sendGetFeatureCompleted(Z[I[Z)V
    .registers 5

    .line 144
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    if-nez v0, :cond_5

    .line 145
    return-void

    .line 147
    :cond_5
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$GetFeatureCallback;->onCompleted(Z[I[Z)V

    .line 148
    return-void
.end method

.method public blacklist sendRemovedResult(Landroid/hardware/face/Face;I)V
    .registers 4

    .line 183
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-nez v0, :cond_5

    .line 184
    return-void

    .line 186
    :cond_5
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/face/Face;I)V

    .line 187
    return-void
.end method

.method public blacklist sendSetFeatureCompleted(ZI)V
    .registers 4

    .line 131
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    if-nez v0, :cond_5

    .line 132
    return-void

    .line 134
    :cond_5
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$SetFeatureCallback;->onCompleted(ZI)V

    .line 135
    return-void
.end method
