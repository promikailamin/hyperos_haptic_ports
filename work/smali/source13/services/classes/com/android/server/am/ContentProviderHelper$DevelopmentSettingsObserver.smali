.class final Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ContentProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DevelopmentSettingsObserver"
.end annotation


# instance fields
.field private final mBugreportStorageProvider:Landroid/content/ComponentName;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/am/ContentProviderHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/ContentProviderHelper;)V
    .registers 6

    .line 1401
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    .line 1402
    invoke-static {p1}, Lcom/android/server/am/ContentProviderHelper;->-$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1395
    const-string v0, "development_settings_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    .line 1398
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.shell"

    const-string v3, "com.android.shell.BugreportStorageProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    .line 1403
    invoke-static {p1}, Lcom/android/server/am/ContentProviderHelper;->-$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1406
    invoke-direct {p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->onChange()V

    .line 1407
    return-void
.end method

.method private onChange()V
    .registers 6

    .line 1417
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    invoke-static {v0}, Lcom/android/server/am/ContentProviderHelper;->-$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1418
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    .line 1417
    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 1419
    .local v0, "enabled":Z
    :goto_1b
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    invoke-static {v3}, Lcom/android/server/am/ContentProviderHelper;->-$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    .line 1421
    if-eqz v0, :cond_2c

    goto :goto_2d

    .line 1422
    :cond_2c
    move v1, v2

    :goto_2d
    nop

    .line 1419
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1424
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1411
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1412
    invoke-direct {p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->onChange()V

    .line 1414
    :cond_b
    return-void
.end method
