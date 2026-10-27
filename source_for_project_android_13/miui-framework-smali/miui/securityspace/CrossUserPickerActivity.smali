.class public Lmiui/securityspace/CrossUserPickerActivity;
.super Landroid/app/Activity;
.source "CrossUserPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CrossUserPickerActivity"

.field public static final blacklist USER_ID_INVALID:I = -0x1


# instance fields
.field private volatile blacklist mCrossUserContentResolver:Landroid/content/ContentResolver;

.field private volatile blacklist mCrossUserContextWrapper:Landroid/content/ContextWrapper;

.field private final blacklist mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method private blacklist validateCallingPackage()Z
    .registers 3

    .line 116
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 117
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtils;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    .line 120
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist validateCrossUser()I
    .registers 4

    .line 103
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 104
    return v1

    .line 106
    :cond_8
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.picked_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "userId":I
    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCallingPackage()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 109
    return v0

    .line 111
    :cond_19
    return v1
.end method


# virtual methods
.method public whitelist getApplicationContext()Landroid/content/Context;
    .registers 6

    .line 45
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 46
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_2a

    .line 47
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_d
    iget-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v1, :cond_25

    .line 49
    new-instance v1, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, p0, v2, v3}, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;-><init>(Lmiui/securityspace/CrossUserPickerActivity;Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    .line 52
    :cond_25
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_27

    throw v1

    .line 54
    :cond_2a
    :goto_2a
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: WrapperedApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    return-object v0

    .line 57
    :cond_34
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: NormalApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContentResolver()Landroid/content/ContentResolver;
    .registers 3

    .line 39
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getContentResolver: NormalContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-super {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isCrossUserPick()Z
    .registers 3

    .line 124
    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 64
    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    :cond_f
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 71
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 72
    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 79
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 80
    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 87
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 88
    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public whitelist startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 96
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 97
    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 100
    return-void
.end method
