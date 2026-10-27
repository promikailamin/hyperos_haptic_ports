.class public Landroid/sizecompat/SizeCompatChangeService;
.super Landroid/app/Service;
.source "SizeCompatChangeService.java"


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "com.android.settings.applicationmode.ApplicationModeActivity"

.field public static final blacklist GOTO_SETTING_ACTION_TYPE:I = 0x2

.field public static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final blacklist RESTORE_ACTION_TYPE:I = 0x1

.field public static final blacklist SETTINGS_MAIN_INTENT:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final blacklist SIZE_COMPAT_EXTRA_TYPE:Ljava/lang/String; = "extra_type"

.field public static final blacklist SPLIT_PAGE_INTENT_KEY:Ljava/lang/String; = "split_page_intent"

.field public static final blacklist TAG:Ljava/lang/String; = "SizeCompatChangeService"

.field public static final blacklist TITLE_PATH:Ljava/lang/String; = "\u5e94\u7528\u663e\u793a\u5e03\u5c40"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIMiuiSizeCompat:Landroid/sizecompat/IMiuiSizeCompat;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private blacklist gotoSizeCompatSetting()V
    .registers 6

    .line 70
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "originalIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applicationmode.ApplicationModeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lmiui/settings/splitlib/SplitPageIntent;

    const-string v3, "\u5e94\u7528\u663e\u793a\u5e03\u5c40"

    invoke-direct {v2, v0, v3}, Lmiui/settings/splitlib/SplitPageIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 75
    .local v2, "splitPageIntent":Lmiui/settings/splitlib/SplitPageIntent;
    const-string v3, "split_page_intent"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    iget-object v3, p0, Landroid/sizecompat/SizeCompatChangeService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 79
    .end local v0    # "originalIntent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "splitPageIntent":Lmiui/settings/splitlib/SplitPageIntent;
    goto :goto_30

    .line 77
    :catch_2c
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_30
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 90
    const-string v0, "SizeCompatChangeService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 3

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    invoke-static {}, Landroid/sizecompat/MiuiSizeCompatManager;->getDefault()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/sizecompat/SizeCompatChangeService;->mIMiuiSizeCompat:Landroid/sizecompat/IMiuiSizeCompat;

    .line 32
    const-string v0, "SizeCompatChangeService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 84
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 85
    const-string v0, "SizeCompatChangeService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 37
    iget-object v0, p0, Landroid/sizecompat/SizeCompatChangeService;->mIMiuiSizeCompat:Landroid/sizecompat/IMiuiSizeCompat;

    if-eqz v0, :cond_3c

    if-nez p1, :cond_7

    goto :goto_3c

    .line 41
    :cond_7
    invoke-virtual {p0}, Landroid/sizecompat/SizeCompatChangeService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/sizecompat/SizeCompatChangeService;->mContext:Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    const-string v1, "extra_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "type":I
    const-string v1, ""

    .line 44
    .local v1, "reason":Ljava/lang/String;
    packed-switch v0, :pswitch_data_48

    goto :goto_2d

    .line 54
    :pswitch_1a
    invoke-direct {p0}, Landroid/sizecompat/SizeCompatChangeService;->gotoSizeCompatSetting()V

    .line 55
    const-string v1, "go to settings"

    .line 56
    goto :goto_2d

    .line 47
    :pswitch_20
    :try_start_20
    iget-object v2, p0, Landroid/sizecompat/SizeCompatChangeService;->mIMiuiSizeCompat:Landroid/sizecompat/IMiuiSizeCompat;

    invoke-interface {v2}, Landroid/sizecompat/IMiuiSizeCompat;->restorePrevRatio()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    .line 50
    goto :goto_2a

    .line 48
    :catch_26
    move-exception v2

    .line 49
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 51
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2a
    const-string v1, "restore previous aspect ratio"

    .line 52
    nop

    .line 61
    :goto_2d
    :try_start_2d
    iget-object v2, p0, Landroid/sizecompat/SizeCompatChangeService;->mIMiuiSizeCompat:Landroid/sizecompat/IMiuiSizeCompat;

    invoke-interface {v2, v1}, Landroid/sizecompat/IMiuiSizeCompat;->cancelSizeCompatNotification(Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33

    .line 64
    goto :goto_37

    .line 62
    :catch_33
    move-exception v2

    .line 63
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 65
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_37
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 38
    .end local v0    # "type":I
    .end local v1    # "reason":Ljava/lang/String;
    :cond_3c
    :goto_3c
    const-string v0, "SizeCompatChangeService"

    const-string v1, "Does not support miui size compat mode or intent is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1a
    .end packed-switch
.end method
