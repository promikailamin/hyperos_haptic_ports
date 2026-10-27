.class final Lcom/android/server/am/AppRestrictionController$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "AppRestrictionController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConstantsObserver"
.end annotation


# static fields
.field static final DEFAULT_BG_ABUSIVE_NOTIFICATION_MINIMAL_INTERVAL_MS:J = 0x9a7ec800L

.field static final DEFAULT_BG_AUTO_RESTRICTED_BUCKET_ON_BG_RESTRICTION:Z = false

.field static final DEFAULT_BG_AUTO_RESTRICT_ABUSIVE_APPS:Z = true

.field static final DEFAULT_BG_LONG_FGS_NOTIFICATION_MINIMAL_INTERVAL_MS:J = 0x9a7ec800L

.field static final DEFAULT_BG_PROMPT_FGS_ON_LONG_RUNNING:Z = true

.field static final DEFAULT_BG_PROMPT_FGS_WITH_NOTIFICATION_ON_LONG_RUNNING:Z = false

.field static final KEY_BG_ABUSIVE_NOTIFICATION_MINIMAL_INTERVAL:Ljava/lang/String; = "bg_abusive_notification_minimal_interval"

.field static final KEY_BG_AUTO_RESTRICTED_BUCKET_ON_BG_RESTRICTION:Ljava/lang/String; = "bg_auto_restricted_bucket_on_bg_restricted"

.field static final KEY_BG_AUTO_RESTRICT_ABUSIVE_APPS:Ljava/lang/String; = "bg_auto_restrict_abusive_apps"

.field static final KEY_BG_LONG_FGS_NOTIFICATION_MINIMAL_INTERVAL:Ljava/lang/String; = "bg_long_fgs_notification_minimal_interval"

.field static final KEY_BG_PROMPT_ABUSIVE_APPS_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_prompt_abusive_apps_to_bg_restricted"

.field static final KEY_BG_PROMPT_FGS_ON_LONG_RUNNING:Ljava/lang/String; = "bg_prompt_fgs_on_long_running"

.field static final KEY_BG_PROMPT_FGS_WITH_NOTIFICATION_ON_LONG_RUNNING:Ljava/lang/String; = "bg_prompt_fgs_with_noti_on_long_running"

.field static final KEY_BG_PROMPT_FGS_WITH_NOTIFICATION_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_prompt_fgs_with_noti_to_bg_restricted"

.field static final KEY_BG_RESTRICTION_EXEMPTED_PACKAGES:Ljava/lang/String; = "bg_restriction_exempted_packages"


# instance fields
.field volatile mBgAbusiveNotificationMinIntervalMs:J

.field volatile mBgAutoRestrictAbusiveApps:Z

.field volatile mBgAutoRestrictedBucket:Z

.field volatile mBgLongFgsNotificationMinIntervalMs:J

.field volatile mBgPromptAbusiveAppsToBgRestricted:Z

.field volatile mBgPromptFgsOnLongRunning:Z

.field volatile mBgPromptFgsWithNotiOnLongRunning:Z

.field volatile mBgPromptFgsWithNotiToBgRestricted:Z

.field volatile mBgRestrictionExemptedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBgPromptAbusiveAppToBgRestricted:Z

.field final mDefaultBgPromptFgsWithNotiToBgRestricted:Z

.field volatile mRestrictedBucketEnabled:Z

.field final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRestrictionController;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/AppRestrictionController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 1216
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 1217
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1194
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    .line 1218
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    .line 1220
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    .line 1222
    return-void
.end method

.method private isRestrictedBucketEnabled()Z
    .registers 4

    .line 1281
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_restricted_bucket"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method private updateBgAbusiveNotificationMinimalInterval()V
    .registers 5

    .line 1317
    const-string v0, "activity_manager"

    const-string v1, "bg_abusive_notification_minimal_interval"

    const-wide v2, 0x9a7ec800L

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    .line 1321
    return-void
.end method

.method private updateBgAutoRestrictAbusiveApps()V
    .registers 4

    .line 1310
    const-string v0, "activity_manager"

    const-string v1, "bg_auto_restrict_abusive_apps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    .line 1314
    return-void
.end method

.method private updateBgAutoRestrictedBucketChanged()V
    .registers 5

    .line 1299
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 1300
    .local v0, "oldValue":Z
    const-string v1, "activity_manager"

    const-string v2, "bg_auto_restricted_bucket_on_bg_restricted"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 1304
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-eq v0, v1, :cond_18

    .line 1305
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-boolean v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    invoke-static {v1, v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mdispatchAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/am/AppRestrictionController;Z)V

    .line 1307
    :cond_18
    return-void
.end method

.method private updateBgLongFgsNotificationMinimalInterval()V
    .registers 5

    .line 1324
    const-string v0, "activity_manager"

    const-string v1, "bg_long_fgs_notification_minimal_interval"

    const-wide v2, 0x9a7ec800L

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    .line 1328
    return-void
.end method

.method private updateBgPromptAbusiveAppToBgRestricted()V
    .registers 4

    .line 1352
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    const-string v1, "activity_manager"

    const-string v2, "bg_prompt_abusive_apps_to_bg_restricted"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    .line 1356
    return-void
.end method

.method private updateBgPromptFgsOnLongRunning()V
    .registers 4

    .line 1345
    const-string v0, "activity_manager"

    const-string v1, "bg_prompt_fgs_on_long_running"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    .line 1349
    return-void
.end method

.method private updateBgPromptFgsWithNotiOnLongRunning()V
    .registers 4

    .line 1338
    const-string v0, "activity_manager"

    const-string v1, "bg_prompt_fgs_with_noti_on_long_running"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    .line 1342
    return-void
.end method

.method private updateBgPromptFgsWithNotiToBgRestricted()V
    .registers 4

    .line 1331
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    const-string v1, "activity_manager"

    const-string v2, "bg_prompt_fgs_with_noti_to_bg_restricted"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    .line 1335
    return-void
.end method

.method private updateBgRestrictionExemptedPackages()V
    .registers 7

    .line 1359
    const-string v0, "activity_manager"

    const-string v1, "bg_restriction_exempted_packages"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "settings":Ljava/lang/String;
    if-nez v0, :cond_12

    .line 1364
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    .line 1365
    return-void

    .line 1367
    :cond_12
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1368
    .local v1, "settingsList":[Ljava/lang/String;
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1369
    .local v2, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_29

    aget-object v5, v1, v4

    .line 1370
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1369
    .end local v5    # "pkg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1372
    :cond_29
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    .line 1373
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1376
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1377
    const-string v0, "BACKGROUND RESTRICTION POLICY SETTINGS:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    const-string v0, "  "

    .line 1379
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1380
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1381
    const-string v1, "bg_auto_restricted_bucket_on_bg_restricted"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1383
    iget-boolean v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1384
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1385
    const-string v2, "bg_auto_restrict_abusive_apps"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1387
    iget-boolean v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1388
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1389
    const-string v2, "bg_abusive_notification_minimal_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1391
    iget-wide v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    const-string v2, "bg_long_fgs_notification_minimal_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1395
    iget-wide v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    const-string v2, "bg_prompt_fgs_on_long_running"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1399
    iget-boolean v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1400
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    const-string v2, "bg_prompt_fgs_with_noti_on_long_running"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1403
    iget-boolean v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1404
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1405
    const-string v2, "bg_prompt_fgs_with_noti_to_bg_restricted"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1407
    iget-boolean v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1409
    const-string v2, "bg_prompt_abusive_apps_to_bg_restricted"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1411
    iget-boolean v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1412
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1413
    const-string v2, "bg_restriction_exempted_packages"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1415
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    return-void
.end method

.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateSettings()V

    .line 1266
    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1226
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1227
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_b2

    const-string v2, "bg_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_b2

    .line 1230
    :cond_20
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_b4

    :cond_28
    goto :goto_83

    :sswitch_29
    const-string v3, "bg_prompt_fgs_with_noti_to_bg_restricted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x4

    goto :goto_83

    :sswitch_33
    const-string v3, "bg_prompt_fgs_with_noti_on_long_running"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x5

    goto :goto_83

    :sswitch_3d
    const-string v3, "bg_long_fgs_notification_minimal_interval"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x3

    goto :goto_83

    :sswitch_47
    const-string v3, "bg_abusive_notification_minimal_interval"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x2

    goto :goto_83

    :sswitch_51
    const-string v3, "bg_restriction_exempted_packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v2, 0x8

    goto :goto_83

    :sswitch_5c
    const-string v3, "bg_auto_restricted_bucket_on_bg_restricted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x0

    goto :goto_83

    :sswitch_66
    const-string v3, "bg_prompt_fgs_on_long_running"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x6

    goto :goto_83

    :sswitch_70
    const-string v3, "bg_auto_restrict_abusive_apps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x1

    goto :goto_83

    :sswitch_7a
    const-string v3, "bg_prompt_abusive_apps_to_bg_restricted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x7

    :goto_83
    packed-switch v2, :pswitch_data_da

    goto :goto_ab

    .line 1256
    :pswitch_87
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    goto :goto_ab

    .line 1253
    :pswitch_8b
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptAbusiveAppToBgRestricted()V

    .line 1254
    goto :goto_ab

    .line 1250
    :pswitch_8f
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsOnLongRunning()V

    .line 1251
    goto :goto_ab

    .line 1247
    :pswitch_93
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiOnLongRunning()V

    .line 1248
    goto :goto_ab

    .line 1244
    :pswitch_97
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiToBgRestricted()V

    .line 1245
    goto :goto_ab

    .line 1241
    :pswitch_9b
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgLongFgsNotificationMinimalInterval()V

    .line 1242
    goto :goto_ab

    .line 1238
    :pswitch_9f
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAbusiveNotificationMinimalInterval()V

    .line 1239
    goto :goto_ab

    .line 1235
    :pswitch_a3
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictAbusiveApps()V

    .line 1236
    goto :goto_ab

    .line 1232
    :pswitch_a7
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    .line 1233
    nop

    .line 1259
    :goto_ab
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monPropertiesChanged(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;)V

    .line 1260
    .end local v1    # "name":Ljava/lang/String;
    goto/16 :goto_8

    .line 1228
    .restart local v1    # "name":Ljava/lang/String;
    :cond_b2
    :goto_b2
    return-void

    .line 1261
    .end local v1    # "name":Ljava/lang/String;
    :cond_b3
    return-void

    :sswitch_data_b4
    .sparse-switch
        -0x725c6ba9 -> :sswitch_7a
        -0x4784dcbb -> :sswitch_70
        -0x22b4a832 -> :sswitch_66
        -0x1796dd64 -> :sswitch_5c
        -0x965c8df -> :sswitch_51
        0x32f03e37 -> :sswitch_47
        0x352f0b01 -> :sswitch_3d
        0x69968cde -> :sswitch_33
        0x75259a8f -> :sswitch_29
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
    .end packed-switch
.end method

.method public start()V
    .registers 4

    .line 1269
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1270
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "enable_restricted_bucket"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateSettings()V

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateDeviceConfig()V

    .line 1274
    return-void
.end method

.method updateDeviceConfig()V
    .registers 1

    .line 1287
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    .line 1288
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictAbusiveApps()V

    .line 1289
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAbusiveNotificationMinimalInterval()V

    .line 1290
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgLongFgsNotificationMinimalInterval()V

    .line 1291
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiToBgRestricted()V

    .line 1292
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiOnLongRunning()V

    .line 1293
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsOnLongRunning()V

    .line 1294
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptAbusiveAppToBgRestricted()V

    .line 1295
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    .line 1296
    return-void
.end method

.method updateSettings()V
    .registers 2

    .line 1277
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->isRestrictedBucketEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mRestrictedBucketEnabled:Z

    .line 1278
    return-void
.end method
