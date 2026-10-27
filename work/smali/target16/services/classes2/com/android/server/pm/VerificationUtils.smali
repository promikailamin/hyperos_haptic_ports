.class public abstract Lcom/android/server/pm/VerificationUtils;
.super Ljava/lang/Object;
.source "VerificationUtils.java"


# direct methods
.method public static broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V
    .registers 9

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 91
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    const-string p1, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string p0, "android.content.pm.extra.VERIFICATION_RESULT"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_21

    .line 95
    const-string p0, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :cond_21
    const-string p0, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string p0, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {p6, v0, p5, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultStreamingVerificationTimeout(Landroid/content/Context;)J
    .registers 6

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "streaming_verifier_timeout"

    const-wide/16 v1, 0xbb8

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 83
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultVerificationTimeout(Landroid/content/Context;)J
    .registers 6

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "verifier_timeout"

    const-wide/16 v1, 0x2710

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 69
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVerificationTimeout(Landroid/content/Context;Z)J
    .registers 2

    if-eqz p1, :cond_7

    .line 53
    invoke-static {p0}, Lcom/android/server/pm/VerificationUtils;->getDefaultStreamingVerificationTimeout(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0

    .line 55
    :cond_7
    invoke-static {p0}, Lcom/android/server/pm/VerificationUtils;->getDefaultVerificationTimeout(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .registers 14

    .line 123
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_8f

    .line 127
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->getVerifyingSession()Lcom/android/server/pm/VerifyingSession;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 128
    iget-object v1, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_16
    move-object v3, v1

    goto :goto_1a

    :cond_18
    const/4 v1, 0x0

    goto :goto_16

    .line 132
    :goto_1a
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v1

    if-eqz v1, :cond_22

    :goto_20
    move v4, p2

    goto :goto_24

    :cond_22
    const/4 p2, -0x1

    goto :goto_20

    :goto_24
    if-eqz p4, :cond_38

    if-eqz v0, :cond_38

    .line 137
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getDataLoaderType()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    iget-object v8, p4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move v2, p0

    .line 135
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_39

    :cond_38
    move v2, p0

    .line 141
    :goto_39
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result p0

    const-string p2, "PackageManager"

    if-eqz p0, :cond_56

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Continuing with installation of "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 144
    :cond_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_74

    const/16 p2, -0x16

    .line 147
    invoke-virtual {v0, p2, p0}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    :cond_74
    :goto_74
    if-eqz p4, :cond_81

    .line 152
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result p0

    if-eqz p0, :cond_81

    .line 153
    iget-object p0, p4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_81
    const-wide/32 p0, 0x40000

    .line 156
    const-string/jumbo p2, "verification"

    invoke-static {p0, p1, p2, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    if-eqz v0, :cond_8f

    .line 159
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->handleVerificationFinished()V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public static processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V
    .registers 6

    .line 115
    iget v0, p2, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v1, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)V

    .line 116
    iget p2, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const-string v0, "Install not allowed"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method public static processVerificationResponseOnTimeout(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V
    .registers 6

    .line 107
    iget v0, p2, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v1, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponseOnTimeout(II)V

    .line 108
    iget p2, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const-string v0, "Verification timed out"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method
