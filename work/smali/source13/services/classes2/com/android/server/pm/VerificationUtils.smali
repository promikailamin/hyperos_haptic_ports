.class final Lcom/android/server/pm/VerificationUtils;
.super Ljava/lang/Object;
.source "VerificationUtils.java"


# static fields
.field private static final DEFAULT_STREAMING_VERIFICATION_TIMEOUT:J = 0xbb8L

.field private static final DEFAULT_VERIFICATION_TIMEOUT:J = 0x2710L


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V
    .registers 9
    .param p0, "verificationId"    # I
    .param p1, "packageUri"    # Landroid/net/Uri;
    .param p2, "verificationCode"    # I
    .param p3, "rootHashString"    # Ljava/lang/String;
    .param p4, "dataLoaderType"    # I
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "context"    # Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    const-string v1, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "android.content.pm.extra.VERIFICATION_RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    if-eqz p3, :cond_21

    .line 87
    const-string v1, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_21
    const-string v1, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {p6, v0, p5, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static getDefaultStreamingVerificationTimeout(Landroid/content/Context;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "streaming_verifier_timeout"

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 75
    .local v0, "timeout":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getDefaultVerificationTimeout(Landroid/content/Context;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "verifier_timeout"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 61
    .local v0, "timeout":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getVerificationTimeout(Landroid/content/Context;Z)J
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streaming"    # Z

    .line 44
    if-eqz p1, :cond_7

    .line 45
    invoke-static {p0}, Lcom/android/server/pm/VerificationUtils;->getDefaultStreamingVerificationTimeout(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0

    .line 47
    :cond_7
    invoke-static {p0}, Lcom/android/server/pm/VerificationUtils;->getDefaultVerificationTimeout(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method
