.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;,
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;,
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL:Ljava/lang/String; = "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_MULTIUSER:Z = false

.field private static final blacklist DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field public static final blacklist MMS_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms.service"

.field public static final blacklist PERMISSION_MONITOR_DEFAULT_SMS_PACKAGE:Ljava/lang/String; = "android.permission.MONITOR_DEFAULT_SMS_PACKAGE"

.field public static final blacklist PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final blacklist SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final blacklist SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final blacklist SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final blacklist SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field public static final blacklist TELEPHONY_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.telephony"

.field private static blacklist sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

.field private static blacklist sSmsRoleListener:Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbroadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsApplication;->broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 84
    const-string v0, "android:read_sms"

    const-string v1, "android:write_sms"

    const-string v2, "android:receive_sms"

    const-string v3, "android:receive_wap_push"

    const-string v4, "android:send_sms"

    const-string v5, "android:read_cell_broadcasts"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 95
    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsRoleListener:Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "appOps"    # Landroid/app/AppOpsManager;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sigatureMatch"    # Z

    .line 766
    if-nez p3, :cond_3

    return-void

    .line 770
    :cond_3
    const-string v0, "SmsApplication"

    if-eqz p4, :cond_28

    .line 771
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 773
    .local v1, "result":I
    if-eqz v1, :cond_28

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have system signature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void

    .line 780
    .end local v1    # "result":I
    :cond_28
    const/4 v1, 0x0

    :try_start_29
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 781
    .local v2, "info":Landroid/content/pm/PackageInfo;
    const-string v3, "android:write_sms"

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v3, v4, p3}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 783
    .local v3, "mode":I
    if-eqz v3, :cond_56

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have OP_WRITE_SMS:  (fixing)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, p2, v4, v1}, Lcom/android/internal/telephony/SmsApplication;->setExclusiveAppops(Ljava/lang/String;Landroid/app/AppOpsManager;II)V
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_56} :catch_57

    .line 791
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mode":I
    :cond_56
    goto :goto_6e

    .line 788
    :catch_57
    move-exception v1

    .line 790
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6e
    return-void
.end method

.method private static blacklist broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "oldAppData"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p3, "applicationData"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 714
    const-string v0, "android.provider.extra.IS_DEFAULT_SMS_APP"

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    if-eqz p2, :cond_26

    invoke-static {p2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 716
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v2, "oldAppIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    .local v3, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 721
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 733
    .end local v2    # "oldAppIntent":Landroid/content/Intent;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_26
    if-eqz p3, :cond_49

    invoke-static {p3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 734
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 736
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 739
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 743
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 748
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "component":Landroid/content/ComponentName;
    :cond_49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.permission.MONITOR_DEFAULT_SMS_PACKAGE"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method private static blacklist broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "oldPackage"    # Ljava/lang/String;
    .param p3, "newPackage"    # Ljava/lang/String;

    .line 701
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 703
    .local v0, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    nop

    .line 704
    invoke-static {v0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 705
    invoke-static {v0, p3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    .line 703
    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/SmsApplication;->broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V

    .line 706
    return-void
.end method

.method private static greylist-max-r configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .registers 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 925
    const-string v0, "sms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 926
    const-string v0, "smsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 927
    const-string v0, "mms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 928
    const-string v0, "mmsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method private static blacklist defaultSmsAppChanged(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 544
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 546
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 547
    const v3, 0x1040043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "bluetoothPackageName":Ljava/lang/String;
    const-string v3, "com.android.phone"

    const/4 v4, 0x1

    invoke-static {p0, v0, v1, v3, v4}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 551
    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 553
    const-string v5, "com.android.mms.service"

    invoke-static {p0, v0, v1, v5, v4}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 555
    const-string v5, "com.android.providers.telephony"

    invoke-static {p0, v0, v1, v5, v4}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 558
    nop

    .line 559
    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastUtils;->getDefaultCellBroadcastReceiverPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 558
    invoke-static {p0, v0, v1, v4, v3}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 565
    sget-object v4, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_37
    if-ge v6, v5, :cond_43

    aget-object v7, v4, v6

    .line 566
    .local v7, "opStr":Ljava/lang/String;
    const/16 v8, 0x3e9

    invoke-virtual {v1, v7, v8, v3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 565
    .end local v7    # "opStr":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 568
    :cond_43
    return-void
.end method

.method private static blacklist getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userId"    # I

    .line 474
    nop

    .line 475
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 476
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const-string v1, "role"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 479
    .local v1, "roleManager":Landroid/app/role/RoleManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-nez v2, :cond_23

    if-eqz v1, :cond_21

    const-string v2, "android.app.role.SMS"

    invoke-virtual {v1, v2}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 482
    :cond_21
    const/4 v2, 0x0

    return-object v2

    .line 485
    :cond_23
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v2

    .line 491
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "defaultApplication":Ljava/lang/String;
    const/4 v4, 0x0

    .line 497
    .local v4, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_32

    .line 498
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 505
    :cond_32
    if-eqz v4, :cond_4f

    .line 510
    if-nez p1, :cond_40

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-ne v5, v6, :cond_48

    .line 512
    :cond_40
    nop

    .line 513
    invoke-static {p0, v4, p1}, Lcom/android/internal/telephony/SmsApplication;->tryFixExclusiveSmsAppops(Landroid/content/Context;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Z)Z

    move-result v5

    .line 514
    .local v5, "appOpsFixed":Z
    if-nez v5, :cond_48

    .line 516
    const/4 v4, 0x0

    .line 521
    .end local v5    # "appOpsFixed":Z
    :cond_48
    if-eqz v4, :cond_4f

    if-eqz p1, :cond_4f

    .line 526
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->defaultSmsAppChanged(Landroid/content/Context;)V

    .line 532
    :cond_4f
    return-object v4
.end method

.method public static greylist getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionAsUser(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationCollectionAsUser(Landroid/content/Context;I)Ljava/util/Collection;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 247
    .local v0, "token":J
    :try_start_4
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 249
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    return-object v2

    .line 249
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    throw v2
.end method

.method private static blacklist getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 256
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 259
    .local v1, "userHandle":Landroid/os/UserHandle;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0xc0000

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 267
    .local v4, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v5, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 271
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 272
    .local v8, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_2f

    .line 273
    goto :goto_1e

    .line 275
    :cond_2f
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v10, "android.permission.BROADCAST_SMS"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    .line 276
    goto :goto_1e

    .line 278
    :cond_3a
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 279
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 280
    new-instance v10, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v10, v9, v11}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;I)V

    .line 282
    .local v10, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_53
    goto :goto_1e

    .line 288
    :cond_54
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 289
    const/4 v6, 0x0

    const-string v7, "application/vnd.wap.mms-message"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    .line 293
    .local v7, "mmsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_96

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 294
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 295
    .local v10, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v10, :cond_7b

    .line 296
    goto :goto_6a

    .line 298
    :cond_7b
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v12, "android.permission.BROADCAST_WAP_PUSH"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_86

    .line 299
    goto :goto_6a

    .line 301
    :cond_86
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 302
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 303
    .local v12, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_95

    .line 304
    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmMmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 306
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_95
    goto :goto_6a

    .line 309
    :cond_96
    new-instance v8, Landroid/content/Intent;

    .line 310
    const-string v9, "smsto"

    const-string v10, ""

    invoke-static {v9, v10, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v8, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v8

    .line 311
    nop

    .line 313
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 311
    invoke-virtual {v0, v2, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    .line 314
    .local v8, "respondServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 315
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 316
    .local v13, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v13, :cond_c4

    .line 317
    goto :goto_b3

    .line 319
    :cond_c4
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v15, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_cf

    .line 320
    goto :goto_b3

    .line 322
    :cond_cf
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 323
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 324
    .local v15, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_de

    .line 325
    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v15, v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmRespondViaMessageClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 327
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_de
    const/high16 v3, 0xc0000

    goto :goto_b3

    .line 330
    :cond_e1
    new-instance v3, Landroid/content/Intent;

    .line 331
    invoke-static {v9, v10, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v3, v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v3

    .line 332
    const/high16 v3, 0xc0000

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 335
    .local v6, "sendToActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_118

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 336
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 337
    .restart local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v10, :cond_108

    .line 338
    goto :goto_f7

    .line 340
    :cond_108
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 341
    .restart local v11    # "packageName":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 342
    .local v12, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_117

    .line 343
    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSendToClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 345
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_117
    goto :goto_f7

    .line 348
    :cond_118
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 349
    nop

    .line 350
    const/high16 v3, 0xc0000

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    .line 357
    .local v9, "smsAppChangedReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 358
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 359
    .local v11, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v11, :cond_13c

    .line 360
    goto :goto_12b

    .line 362
    :cond_13c
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 363
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 369
    .local v13, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_14b

    .line 370
    iget-object v14, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 372
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_14b
    goto :goto_12b

    .line 375
    :cond_14c
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 376
    nop

    .line 377
    const/high16 v3, 0xc0000

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v10

    .line 384
    .local v10, "providerChangedReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_180

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 385
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 386
    .local v12, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v12, :cond_170

    .line 387
    goto :goto_15f

    .line 389
    :cond_170
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 390
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 396
    .local v14, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v14, :cond_17f

    .line 397
    iget-object v15, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 399
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_17f
    goto :goto_15f

    .line 402
    :cond_180
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 403
    nop

    .line 404
    const/high16 v3, 0xc0000

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 411
    .local v3, "simFullReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_193
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1bb

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 412
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 413
    .local v13, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v13, :cond_1a4

    .line 414
    goto :goto_193

    .line 416
    :cond_1a4
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 417
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 423
    .restart local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_1b6

    .line 424
    move-object/from16 v16, v0

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    goto :goto_1b8

    .line 423
    .end local v16    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1b6
    move-object/from16 v16, v0

    .line 426
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .restart local v16    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1b8
    move-object/from16 v0, v16

    goto :goto_193

    .line 429
    .end local v16    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1bb
    move-object/from16 v16, v0

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v16    # "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 430
    .restart local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 431
    .local v12, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v12, :cond_1d2

    .line 432
    goto :goto_1c1

    .line 434
    :cond_1d2
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 435
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 436
    .local v14, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v14, :cond_1e5

    .line 437
    invoke-virtual {v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v15

    if-nez v15, :cond_1e5

    .line 438
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1e5
    goto :goto_1c1

    .line 442
    :cond_1e6
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    .line 451
    .local p0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 452
    return-object v0

    .line 455
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 456
    .local v2, "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 457
    return-object v2

    .line 459
    .end local v2    # "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1d
    goto :goto_8

    .line 460
    :cond_1e
    return-object v0
.end method

.method public static blacklist getDefaultExternalTelephonyProviderChangedApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1085
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    .line 1086
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1088
    .local v1, "token":J
    const/4 v3, 0x0

    .line 1089
    .local v3, "component":Landroid/content/ComponentName;
    :try_start_9
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 1091
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v4, :cond_21

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 1093
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_26

    move-object v3, v5

    .line 1096
    :cond_21
    nop

    .line 1098
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    return-object v3

    .line 1098
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    throw v3
.end method

.method public static greylist getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1009
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    .line 1010
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1012
    .local v1, "token":J
    const/4 v3, 0x0

    .line 1013
    .local v3, "component":Landroid/content/ComponentName;
    :try_start_9
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 1015
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v4, :cond_1b

    .line 1016
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmMmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_20

    move-object v3, v5

    .line 1019
    :cond_1b
    nop

    .line 1021
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1019
    return-object v3

    .line 1021
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    throw v3
.end method

.method public static greylist-max-r getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1034
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    .line 1035
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1037
    .local v1, "token":J
    const/4 v3, 0x0

    .line 1038
    .local v3, "component":Landroid/content/ComponentName;
    :try_start_9
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 1040
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v4, :cond_1b

    .line 1041
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmRespondViaMessageClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_20

    move-object v3, v5

    .line 1044
    :cond_1b
    nop

    .line 1046
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    return-object v3

    .line 1046
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1047
    throw v3
.end method

.method public static blacklist getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1060
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    .line 1061
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1063
    .local v1, "token":J
    const/4 v3, 0x0

    .line 1064
    .local v3, "component":Landroid/content/ComponentName;
    :try_start_9
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 1066
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v4, :cond_1b

    .line 1067
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSendToClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_20

    move-object v3, v5

    .line 1070
    :cond_1b
    nop

    .line 1072
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    return-object v3

    .line 1072
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1073
    throw v3
.end method

.method public static blacklist getDefaultSimFullApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1110
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    .line 1111
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1113
    .local v1, "token":J
    const/4 v3, 0x0

    .line 1114
    .local v3, "component":Landroid/content/ComponentName;
    :try_start_9
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 1116
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v4, :cond_21

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 1118
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_26

    move-object v3, v5

    .line 1121
    :cond_21
    nop

    .line 1123
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    return-object v3

    .line 1123
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1124
    throw v3
.end method

.method public static greylist getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 973
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZI)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultSmsApplicationAsUser(Landroid/content/Context;ZI)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userId"    # I

    .line 986
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 988
    .local v0, "token":J
    const/4 v2, 0x0

    .line 989
    .local v2, "component":Landroid/content/ComponentName;
    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 991
    .local v3, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_17

    .line 992
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    move-object v2, v4

    .line 995
    :cond_17
    nop

    .line 997
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 995
    return-object v2

    .line 997
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    throw v2
.end method

.method private static blacklist getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1166
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 1167
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_c

    .line 1168
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1170
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 536
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->getSmsRoleHolder(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getIncomingUserId(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 202
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 203
    .local v0, "contextUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 208
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_11

    .line 210
    return v0

    .line 212
    :cond_11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    return v2
.end method

.method public static greylist-max-r getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 961
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 962
    .local v0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist initSmsPackageMonitor(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 916
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 917
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;)V

    .line 918
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsRoleListener:Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;

    .line 919
    return-void
.end method

.method public static greylist isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1151
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1152
    return v0

    .line 1154
    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, "defaultSmsPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040043

    .line 1156
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1158
    .local v2, "bluetoothPackageName":Ljava/lang/String;
    if-eqz v1, :cond_1b

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1159
    :cond_1b
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1160
    :cond_21
    const/4 v0, 0x1

    return v0

    .line 1162
    :cond_23
    return v0
.end method

.method static synthetic blacklist lambda$replacePreferredActivity$1(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;

    .line 942
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$setDefaultApplicationInternal$0(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 662
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 663
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_13

    .line 665
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 667
    :goto_13
    return-void
.end method

.method private static blacklist replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 8
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 937
    new-instance v0, Landroid/content/Intent;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 938
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10040

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 941
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 943
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 946
    .local v3, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 947
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 950
    const v2, 0x208000

    invoke-virtual {p0, v4, v2, v3, p1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;ILjava/util/List;Landroid/content/ComponentName;)V

    .line 953
    return-void
.end method

.method public static greylist-max-r setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 596
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationAsUser(Ljava/lang/String;Landroid/content/Context;I)V

    .line 597
    return-void
.end method

.method public static blacklist setDefaultApplicationAsUser(Ljava/lang/String;Landroid/content/Context;I)V
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 604
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 605
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const-string v1, "role"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 608
    .local v1, "roleManager":Landroid/app/role/RoleManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-nez v2, :cond_21

    if-eqz v1, :cond_20

    const-string v2, "android.app.role.SMS"

    invoke-virtual {v1, v2}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 611
    :cond_20
    return-void

    .line 614
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 616
    .local v2, "token":J
    :try_start_25
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2d

    .line 618
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    nop

    .line 620
    return-void

    .line 618
    :catchall_2d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    throw v4
.end method

.method private static blacklist setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .registers 22
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 624
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 627
    .local v3, "userHandle":Landroid/os/UserHandle;
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 634
    .local v4, "oldPackageName":Ljava/lang/String;
    if-eqz v1, :cond_17

    if-eqz v4, :cond_17

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 636
    return-void

    .line 640
    :cond_17
    nop

    .line 641
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 642
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v6

    .line 644
    .local v6, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    if-eqz v4, :cond_2c

    .line 645
    invoke-static {v6, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v7

    goto :goto_2d

    :cond_2c
    const/4 v7, 0x0

    .line 646
    .local v7, "oldAppData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :goto_2d
    invoke-static {v6, v1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v8

    .line 647
    .local v8, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v8, :cond_ab

    .line 649
    const-string v9, "appops"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager;

    .line 650
    .local v9, "appOps":Landroid/app/AppOpsManager;
    const-string v10, "SmsApplication"

    if-eqz v4, :cond_63

    .line 652
    :try_start_3f
    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 653
    .local v0, "uid":I
    const/4 v11, 0x3

    invoke-static {v4, v9, v0, v11}, Lcom/android/internal/telephony/SmsApplication;->setExclusiveAppops(Ljava/lang/String;Landroid/app/AppOpsManager;II)V
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_4b} :catch_4c

    .line 656
    .end local v0    # "uid":I
    goto :goto_63

    .line 654
    :catch_4c
    move-exception v0

    .line 655
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Old SMS package not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_63
    :goto_63
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v11, v0

    .line 661
    .local v11, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda1;

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    move-object/from16 v18, v0

    .line 668
    .local v18, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/role/RoleManager;

    iget-object v14, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v15, 0x0

    .line 669
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v16

    sget-object v17, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 668
    const-string v13, "android.app.role.SMS"

    invoke-virtual/range {v12 .. v18}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 672
    const-wide/16 v12, 0x5

    :try_start_89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_8e} :catch_93
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_89 .. :try_end_8e} :catch_93
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_89 .. :try_end_8e} :catch_93

    .line 676
    nop

    .line 678
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SmsApplication;->defaultSmsAppChanged(Landroid/content/Context;)V

    goto :goto_ab

    .line 673
    :catch_93
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while adding sms role holder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    return-void

    .line 680
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "appOps":Landroid/app/AppOpsManager;
    .end local v11    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v18    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :cond_ab
    :goto_ab
    return-void
.end method

.method private static blacklist setExclusiveAppops(Ljava/lang/String;Landroid/app/AppOpsManager;II)V
    .registers 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 797
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 798
    .local v3, "opStr":Ljava/lang/String;
    invoke-virtual {p1, v3, p2, p3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 797
    .end local v3    # "opStr":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 800
    :cond_e
    return-void
.end method

.method public static greylist-max-r shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 1135
    invoke-static {p0}, Landroid/telephony/TelephonyBaseUtilsStub;->isIgnoreSmsStorageApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1136
    const/4 v0, 0x0

    return v0

    .line 1139
    :cond_8
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist tryFixExclusiveSmsAppops(Landroid/content/Context;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Z)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationData"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p2, "updateIfNeeded"    # Z

    .line 572
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 573
    .local v0, "appOps":Landroid/app/AppOpsManager;
    sget-object v1, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_5a

    aget-object v5, v1, v4

    .line 574
    .local v5, "opStr":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v6

    iget-object v7, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 576
    .local v6, "mode":I
    if-eqz v6, :cond_57

    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 579
    if-eqz p2, :cond_3d

    const-string v8, " (fixing)"

    goto :goto_3f

    :cond_3d
    const-string v8, " (no permission to fix)"

    :goto_3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 577
    const-string v8, "SmsApplication"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-eqz p2, :cond_56

    .line 581
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v7

    invoke-virtual {v0, v5, v7, v3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    goto :goto_57

    .line 583
    :cond_56
    return v3

    .line 573
    .end local v5    # "opStr":Ljava/lang/String;
    .end local v6    # "mode":I
    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 587
    :cond_5a
    const/4 v1, 0x1

    return v1
.end method
