.class public Lcom/android/server/logcat/LogAccessDialogActivity;
.super Landroid/app/Activity;
.source "LogAccessDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_TIME_OUT:I

.field private static final MSG_DISMISS_DIALOG:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAlertTitle:Ljava/lang/String;

.field private mAlertView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private final mLogcatManagerInternal:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeclineLogAccess(Lcom/android/server/logcat/LogAccessDialogActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->declineLogAccess()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    .line 49
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_10

    const v0, 0xea60

    goto :goto_13

    :cond_10
    const v0, 0x493e0

    :goto_13
    sput v0, Lcom/android/server/logcat/LogAccessDialogActivity;->DIALOG_TIME_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-class v0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    .line 53
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mLogcatManagerInternal:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    .line 136
    new-instance v0, Lcom/android/server/logcat/LogAccessDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/logcat/LogAccessDialogActivity$1;-><init>(Lcom/android/server/logcat/LogAccessDialogActivity;)V

    iput-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createView(I)Landroid/view/View;
    .registers 6
    .param p1, "themeId"    # I

    .line 173
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 174
    .local v0, "themedContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900a5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3e

    .line 181
    const v2, 0x1020392

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertTitle:Ljava/lang/String;

    .line 182
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v2, 0x102038f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 185
    .local v2, "button_allow":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v3, 0x1020391

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 188
    .local v3, "button_deny":Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-object v1

    .line 178
    .end local v2    # "button_allow":Landroid/widget/Button;
    .end local v3    # "button_deny":Landroid/widget/Button;
    :cond_3e
    new-instance v2, Landroid/view/InflateException;

    invoke-direct {v2}, Landroid/view/InflateException;-><init>()V

    throw v2
.end method

.method private declineLogAccess()V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mLogcatManagerInternal:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    iget v1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mUid:I

    iget-object v2, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->declineAccessForClient(ILjava/lang/String;)V

    .line 210
    return-void
.end method

.method private getTitleString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 157
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 159
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 157
    const/high16 v2, 0x10000000

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 161
    .local v1, "appLabel":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v3, 0x1040551

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "titleString":Ljava/lang/String;
    return-object v2
.end method

.method private readIntentInfo(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 115
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 116
    sget-object v1, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "Intent is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v0

    .line 120
    :cond_b
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    .line 121
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_34

    .line 126
    :cond_1c
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 127
    sget-object v1, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "Missing EXTRA_UID"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v0

    .line 131
    :cond_2c
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mUid:I

    .line 133
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_34
    :goto_34
    sget-object v1, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "Missing package name extra"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-android-server-logcat-LogAccessDialogActivity(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 94
    invoke-direct {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->declineLogAccess()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-android-server-logcat-LogAccessDialogActivity(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :pswitch_7
    goto :goto_1c

    .line 202
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->declineLogAccess()V

    .line 203
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->finish()V

    goto :goto_1c

    .line 198
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mLogcatManagerInternal:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    iget v1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mUid:I

    iget-object v2, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->approveAccessForClient(ILjava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->finish()V

    .line 200
    nop

    .line 206
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x102038f
        :pswitch_f
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/logcat/LogAccessDialogActivity;->readIntentInfo(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 69
    sget-object v0, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "Invalid Intent extras, finishing"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->finish()V

    .line 71
    return-void

    .line 76
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mUid:I

    invoke-direct {p0, p0, v0, v1}, Lcom/android/server/logcat/LogAccessDialogActivity;->getTitleString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertTitle:Ljava/lang/String;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_22} :catch_7b

    .line 82
    nop

    .line 85
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ne v0, v1, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    move v0, v2

    .line 87
    .local v0, "isDarkTheme":Z
    :goto_37
    if-eqz v0, :cond_3d

    const v1, 0x10302d1

    goto :goto_40

    .line 88
    :cond_3d
    const v1, 0x10302d2

    :goto_40
    nop

    .line 89
    .local v1, "themeId":I
    invoke-direct {p0, v1}, Lcom/android/server/logcat/LogAccessDialogActivity;->createView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertView:Landroid/view/View;

    .line 92
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v4, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    iget-object v3, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/logcat/LogAccessDialogActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    iget-object v3, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/logcat/LogAccessDialogActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    iget-object v3, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    .line 99
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 102
    iget-object v3, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/android/server/logcat/LogAccessDialogActivity;->DIALOG_TIME_OUT:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    return-void

    .line 77
    .end local v0    # "isDarkTheme":Z
    .end local v1    # "themeId":I
    :catch_7b
    move-exception v0

    .line 78
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch label of package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-direct {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->declineLogAccess()V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->finish()V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 109
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 111
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    .line 112
    return-void
.end method
