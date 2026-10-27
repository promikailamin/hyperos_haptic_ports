.class public Lmiui/content/pm/PackageDeleteConfirmActivity;
.super Landroid/app/Activity;
.source "PackageDeleteConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final blacklist DELETE_MSG_NEXT_STEP_INTERVAL:I = 0x3e8

.field private static final blacklist DELETE_MSG_NEXT_STEP_WHAT:I = 0x64

.field public static final blacklist EXTRA_PKGNAME:Ljava/lang/String; = "extra_pkgname"

.field private static final blacklist MAX_STEPS:I = 0x3


# instance fields
.field private blacklist delete:Z

.field private blacklist mAppLabel:Ljava/lang/CharSequence;

.field private blacklist mAutoNextStepTime:I

.field private blacklist mCancelButton:Landroid/widget/Button;

.field private blacklist mCurrentStep:I

.field private blacklist mDeleteButton:Landroid/widget/Button;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

.field private blacklist mPkgName:Ljava/lang/String;

.field private blacklist mWarningInfoView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoNextStepTime(Lmiui/content/pm/PackageDeleteConfirmActivity;)I
    .registers 1

    iget p0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentStep(Lmiui/content/pm/PackageDeleteConfirmActivity;)I
    .registers 1

    iget p0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeleteButton(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoNextStepTime(Lmiui/content/pm/PackageDeleteConfirmActivity;I)V
    .registers 2

    iput p1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    .line 149
    new-instance v0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;

    invoke-direct {v0, p0}, Lmiui/content/pm/PackageDeleteConfirmActivity$1;-><init>(Lmiui/content/pm/PackageDeleteConfirmActivity;)V

    iput-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p1, "step"    # I
    .param p2, "appLabel"    # Ljava/lang/CharSequence;

    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_2c

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 184
    :pswitch_7
    const v2, 0x110f02c9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, v2, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :pswitch_13
    const v2, 0x110f02c8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, v2, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_1f
    const v2, 0x110f02c7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, v2, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_13
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist loadAppLabel()Ljava/lang/CharSequence;
    .registers 4

    .line 139
    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 142
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_f} :catch_10

    return-object v2

    .line 143
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_10
    move-exception v1

    .line 146
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public whitelist onBackPressed()V
    .registers 1

    .line 124
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    sparse-switch v0, :sswitch_data_7c

    goto :goto_7b

    .line 92
    :sswitch_b
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1c

    .line 93
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iput-boolean v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    .line 95
    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    goto :goto_7b

    .line 97
    :cond_1c
    add-int/2addr v0, v4

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    .line 98
    const/4 v5, 0x5

    iput v5, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    .line 100
    iget-object v5, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget-object v6, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v6}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    if-ne v0, v3, :cond_48

    .line 103
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    const v3, 0x110f008b

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 103
    invoke-virtual {p0, v3, v4}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5e

    .line 106
    :cond_48
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    const v3, 0x110f008d

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 106
    invoke-virtual {p0, v3, v4}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_5e
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    goto :goto_7b

    .line 87
    :sswitch_70
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iput-boolean v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    .line 89
    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    .line 90
    nop

    .line 119
    :goto_7b
    return-void

    :sswitch_data_7c
    .sparse-switch
        0x110a0036 -> :sswitch_70
        0x110a0041 -> :sswitch_b
    .end sparse-switch
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x110c0001

    invoke-virtual {p0, v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    :try_start_d
    const-string v1, "extra_pkgname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    .line 58
    goto :goto_1a

    .line 56
    :catch_16
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 60
    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    .line 61
    return-void

    .line 64
    :cond_26
    nop

    .line 65
    const-string v1, "observer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 64
    invoke-static {v1}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IPackageDeleteConfirmObserver;

    move-result-object v1

    iput-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

    .line 66
    invoke-direct {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->loadAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    .line 68
    const v1, 0x110a00da

    invoke-virtual {p0, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    .line 70
    const v1, 0x110a0036

    invoke-virtual {p0, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCancelButton:Landroid/widget/Button;

    .line 71
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x110a0041

    invoke-virtual {p0, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    .line 73
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    iget-object v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    const v2, 0x110f008d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    return-void
.end method

.method public whitelist onStop()V
    .registers 3

    .line 128
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    :try_start_7
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

    iget-boolean v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    invoke-interface {v0, v1}, Lmiui/content/pm/IPackageDeleteConfirmObserver;->onConfirm(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 133
    goto :goto_13

    .line 131
    :catch_f
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 135
    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    .line 136
    return-void
.end method
