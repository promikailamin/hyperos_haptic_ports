.class public Lmiui/security/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist DETECT_CONFIG_ACCESSIBILITY:Ljava/lang/String; = "detectAccessibilityTouch"

.field public static final blacklist DETECT_CONFIG_ADB_INPUT:Ljava/lang/String; = "detectAdpInput"

.field public static final blacklist FLAG_AC_ENABLED:I = 0x1

.field public static final blacklist FLAG_AC_PACKAGE_CANCELED:I = 0x8

.field public static final blacklist FLAG_AC_PACKAGE_ENABLED:I = 0x2

.field public static final blacklist FLAG_AC_PACKAGE_PASSED:I = 0x4

.field private static blacklist IS_SUPPORT_CDD:Z = false

.field public static final blacklist MODE_EACH:I = 0x0

.field public static final blacklist MODE_LOCK_SCREEN:I = 0x1

.field public static final blacklist MODE_TIME_OUT:I = 0x2

.field private static final blacklist PACKAGE_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "security"

.field public static final blacklist SIMULATED_TOUCH_TIME:Ljava/lang/String; = "lastSimulatedTouchTime"

.field public static final blacklist SIMULATED_TOUCH_UID:Ljava/lang/String; = "lastSimulatedTouchUid"

.field public static final blacklist SKIP_INTERCEPT:Ljava/lang/String; = "skip_interception"

.field public static final blacklist SKIP_INTERCEPT_ACTIVITY_GALLERY_EDIT:Ljava/lang/String; = "com.miui.gallery.editor.photo.screen.home.ScreenEditorActivity"

.field public static final blacklist SKIP_INTERCEPT_ACTIVITY_GALLERY_EXTRA:Ljava/lang/String; = "com.miui.gallery.activity.ExternalPhotoPageActivity"

.field public static final blacklist SKIP_INTERCEPT_ACTIVITY_GALLERY_EXTRA_TRANSLUCENT:Ljava/lang/String; = "com.miui.gallery.activity.TranslucentExternalPhotoPageActivity"

.field public static final blacklist SKIP_INTERCEPT_PACKAGE:Ljava/lang/String; = "com.miui.gallery"

.field private static final blacklist START_ACTIVITY_CALLEE_PKGNAME:Ljava/lang/String; = "CalleePkgName"

.field private static final blacklist START_ACTIVITY_CALLEE_UID:Ljava/lang/String; = "calleeUserId"

.field private static final blacklist START_ACTIVITY_CALLER_PKGNAME:Ljava/lang/String; = "CallerPkgName"

.field private static final blacklist START_ACTIVITY_CALLER_UID:Ljava/lang/String; = "callerUserId"

.field private static final blacklist START_ACTIVITY_DIALOG_TYPE:Ljava/lang/String; = "dialogType"

.field private static final blacklist START_ACTIVITY_RESTRICT_FOR_CHAIN:Ljava/lang/String; = "restrictForChain"

.field private static final blacklist START_ACTIVITY_USERID:Ljava/lang/String; = "UserId"

.field private static final blacklist TAG:Ljava/lang/String; = "SecurityManager"

.field private static blacklist sActivityFinishMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final blacklist mService:Lmiui/security/ISecurityManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 48
    nop

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/security/SecurityManager;->IS_SUPPORT_CDD:Z

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_3e

    .line 105
    :try_start_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_c} :catch_36

    const/16 v3, 0x18

    const/4 v4, 0x0

    const-string v5, "finish"

    if-lt v1, v3, :cond_22

    .line 106
    :try_start_13
    const-class v1, Landroid/app/Activity;

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    goto :goto_30

    .line 108
    :cond_22
    const-class v1, Landroid/app/Activity;

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    .line 110
    :goto_30
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_35} :catch_36

    .line 113
    goto :goto_3e

    .line 111
    :catch_36
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecurityManager"

    const-string v3, " SecurityManager static init error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_47

    .line 895
    const-string v0, "sechook"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 897
    :cond_47
    return-void
.end method

.method public constructor blacklist <init>(Lmiui/security/ISecurityManager;)V
    .registers 2
    .param p1, "service"    # Lmiui/security/ISecurityManager;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    .line 119
    return-void
.end method

.method private blacklist activityFinish(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 831
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 832
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 833
    return-void

    .line 836
    :cond_a
    :try_start_a
    sget-object v0, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    .line 837
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_24

    .line 838
    sget-object v0, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 840
    :cond_24
    sget-object v0, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 843
    :cond_32
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 844
    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3b} :catch_3c

    .line 849
    :cond_3b
    :goto_3b
    goto :goto_44

    .line 847
    :catch_3c
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecurityManager"

    const-string v2, " FinishMethod.invoke error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method private blacklist buildIntentForRestrictChain(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILandroid/content/Intent;ZIIILjava/lang/String;)Landroid/content/Intent;
    .registers 22
    .param p1, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "calleePackageName"    # Ljava/lang/String;
    .param p3, "calleeUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "fromActivity"    # Z
    .param p6, "requestCode"    # I
    .param p7, "userId"    # I
    .param p8, "callingUid"    # I
    .param p9, "action"    # Ljava/lang/String;

    .line 586
    move-object v0, p1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v11, -0x1

    move-object v1, p0

    move-object/from16 v2, p9

    move-object v4, p2

    move/from16 v5, p7

    move v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v1 .. v11}, Lmiui/security/SecurityManager;->buildStartIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v1

    .line 588
    .local v1, "startIntent":Landroid/content/Intent;
    const-string v2, "restrictForChain"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    return-object v1
.end method

.method private blacklist buildStartIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;ZII)Landroid/content/Intent;
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "calleePackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "callerUid"    # I
    .param p6, "calleeUid"    # I
    .param p7, "sourceIntent"    # Landroid/content/Intent;
    .param p8, "fromActivity"    # Z
    .param p9, "requestCode"    # I
    .param p10, "type"    # I

    .line 652
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "CallerPkgName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    const-string v1, "CalleePkgName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v1, "UserId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const-string v1, "callerUserId"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    const-string v1, "calleeUserId"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    const-string v1, "dialogType"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 660
    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    if-eqz p7, :cond_52

    .line 664
    invoke-virtual {p7}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3b

    .line 665
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 667
    :cond_3b
    const/high16 v1, 0x1000000

    invoke-virtual {p7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 668
    if-eqz p8, :cond_48

    .line 670
    if-ltz p9, :cond_4d

    .line 671
    invoke-virtual {p7, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4d

    .line 675
    :cond_48
    const/high16 v1, 0x10000000

    invoke-virtual {p7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 677
    :cond_4d
    :goto_4d
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 679
    :cond_52
    return-object v0
.end method

.method public static blacklist checkCallingPackage(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whiteList"    # [Ljava/lang/String;

    .line 126
    nop

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 129
    .local v0, "uid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "pkgs":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 131
    return v2

    .line 133
    :cond_11
    array-length v3, v1

    move v4, v2

    :goto_13
    if-ge v4, v3, :cond_2b

    aget-object v5, v1, v4

    .line 134
    .local v5, "pkg":Ljava/lang/String;
    array-length v6, p1

    move v7, v2

    :goto_19
    if-ge v7, v6, :cond_28

    aget-object v8, p1, v7

    .line 135
    .local v8, "validPkg":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    const/4 v2, 0x1

    return v2

    .line 134
    .end local v8    # "validPkg":Ljava/lang/String;
    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 133
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 138
    :cond_2b
    return v2
.end method

.method private static blacklist checkTime(JLjava/lang/String;)V
    .registers 9
    .param p0, "startTime"    # J
    .param p2, "where"    # Ljava/lang/String;

    .line 1080
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1081
    .local v0, "now":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v0, p0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_30
    return-void
.end method

.method private blacklist exemptByRestrictChain(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 560
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->exemptByRestrictChain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 561
    :catch_7
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 636
    if-nez p1, :cond_1e

    .line 637
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 638
    const/4 v0, 0x0

    return-object v0

    .line 641
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p2, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_16

    move-object p1, v0

    .line 644
    goto :goto_1e

    .line 642
    :catch_16
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecurityManager"

    const-string v2, "getCheckStartActivityIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    return-object p1
.end method

.method public static blacklist getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 14
    .param p0, "isAccessControl"    # Z
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "original"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "fromActivity"    # Z
    .param p5, "userId"    # I
    .param p6, "bOptions"    # Landroid/os/Bundle;

    .line 713
    const-string v0, "miui.intent.action.CHECK_ACCESS_CONTROL"

    .line 714
    .local v0, "action":Ljava/lang/String;
    if-nez p0, :cond_6

    .line 715
    const-string v0, "com.miui.gamebooster.action.ACCESS_WINDOWCALLACTIVITY"

    .line 717
    :cond_6
    const-string v1, "com.miui.securitycenter"

    .line 718
    .local v1, "targetPkg":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .local v2, "result":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 721
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const/high16 v3, 0x20000000

    if-eqz p2, :cond_58

    .line 725
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2a

    .line 726
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 728
    :cond_2a
    const/high16 v4, 0x1000000

    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 729
    const/high16 v4, 0x8000000

    const/high16 v6, 0x10000000

    if-eqz p4, :cond_4c

    .line 731
    if-ltz p3, :cond_3a

    .line 732
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 734
    :cond_3a
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v6

    if-nez v5, :cond_45

    .line 735
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_52

    .line 738
    :cond_45
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 739
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_52

    .line 743
    :cond_4c
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 744
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 746
    :goto_52
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_5b

    .line 748
    :cond_58
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 750
    :goto_5b
    const/16 v3, 0x3e7

    if-ne p5, v3, :cond_64

    .line 751
    const-string v3, "originating_uid"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    :cond_64
    if-eqz p6, :cond_69

    .line 755
    invoke-virtual {v2, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 758
    :cond_69
    return-object v2
.end method

.method public static blacklist getUserHandle(I)I
    .registers 2
    .param p0, "original"    # I

    .line 878
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 879
    const/4 v0, 0x0

    return v0

    .line 881
    :cond_8
    return p0
.end method

.method private static native blacklist hook()V
.end method

.method public static blacklist init()V
    .registers 2

    .line 888
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 889
    invoke-static {}, Lmiui/security/SecurityManager;->hook()V

    .line 891
    :cond_9
    return-void
.end method

.method private static blacklist isAllowAccessSpecialPath(Landroid/app/AppOpsManager;ILjava/lang/String;ILandroid/content/Intent;)Z
    .registers 16
    .param p0, "aom"    # Landroid/app/AppOpsManager;
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .line 610
    invoke-static {}, Lmiui/security/StorageRestrictedPathManager;->getInstance()Lmiui/security/StorageRestrictedPathManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/StorageRestrictedPathManager;->getRestrictedPathSet(I)Ljava/util/Set;

    move-result-object v0

    .line 611
    .local v0, "restrictedArray":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_60

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_60

    .line 614
    :cond_12
    invoke-virtual {p0, p1, p3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 615
    .local v2, "mode":I
    if-eqz v2, :cond_5f

    .line 616
    const/4 v3, 0x0

    if-eqz p4, :cond_5e

    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 617
    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    .line 618
    .local v4, "data":Landroid/content/ClipData;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_5d

    .line 619
    invoke-virtual {v4, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 620
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_5a

    .line 621
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 622
    .local v8, "restricted":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_59

    .line 623
    return v3

    .line 625
    .end local v8    # "restricted":Ljava/lang/String;
    :cond_59
    goto :goto_3a

    .line 618
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 628
    .end local v4    # "data":Landroid/content/ClipData;
    .end local v5    # "i":I
    :cond_5d
    goto :goto_5f

    .line 629
    :cond_5e
    return v3

    .line 632
    :cond_5f
    :goto_5f
    return v1

    .line 612
    .end local v2    # "mode":I
    :cond_60
    :goto_60
    return v1
.end method

.method public static blacklist isDenyAccessGallery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 595
    .local v0, "identity":J
    :try_start_4
    const-string v2, "appops"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 596
    .local v2, "aom":Landroid/app/AppOpsManager;
    const/16 v3, 0x2732

    invoke-static {v2, v3, p1, p2, p3}, Lmiui/security/SecurityManager;->isAllowAccessSpecialPath(Landroid/app/AppOpsManager;ILjava/lang/String;ILandroid/content/Intent;)Z

    move-result v3

    .line 598
    .local v3, "isAllowGallery":Z
    const/4 v4, 0x1

    if-eqz v3, :cond_20

    .line 599
    const/16 v5, 0x2733

    invoke-static {v2, v5, p1, p2, p3}, Lmiui/security/SecurityManager;->isAllowAccessSpecialPath(Landroid/app/AppOpsManager;ILjava/lang/String;ILandroid/content/Intent;)Z

    move-result v5
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_25

    .line 604
    xor-int/2addr v4, v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    return v4

    .line 602
    :cond_20
    nop

    .line 604
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    return v4

    .line 604
    .end local v2    # "aom":Landroid/app/AppOpsManager;
    .end local v3    # "isAllowGallery":Z
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    throw v2
.end method

.method private blacklist restrictForChain(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 576
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v0, p2, p3}, Lmiui/security/SecurityManager;->getApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 577
    .local v0, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    const-string v2, "appops"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 578
    .local v2, "aom":Landroid/app/AppOpsManager;
    const/16 v3, 0x2741

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_1a

    .line 579
    .local v3, "mode":I
    if-eqz v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 580
    .end local v0    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "aom":Landroid/app/AppOpsManager;
    .end local v3    # "mode":I
    :catch_1a
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method


# virtual methods
.method public blacklist activityResume(Landroid/content/Intent;)I
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1045
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->activityResume(Landroid/content/Intent;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1046
    :catch_7
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1049
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addAccessControlPass(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 206
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 208
    goto :goto_7

    .line 207
    :catch_6
    move-exception v0

    .line 209
    :goto_7
    return-void
.end method

.method public blacklist addAccessControlPassForUser(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 213
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->addAccessControlPassForUser(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 216
    nop

    .line 217
    return-void

    .line 214
    :catch_7
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "addAccessControlPassForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist addMiuiFirewallSharedUid(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1122
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->addMiuiFirewallSharedUid(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1123
    :catch_7
    move-exception v0

    .line 1124
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist addRestrictChainMaps(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "calleePkg"    # Ljava/lang/String;

    .line 568
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->addRestrictChainMaps(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 571
    goto :goto_e

    .line 569
    :catch_6
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecurityManager"

    const-string v2, "addRestrictChainMaps"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1175
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1176
    :catch_7
    move-exception v0

    .line 1177
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist checkAccessControl(Landroid/app/Activity;I)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # I

    .line 762
    const-string v0, "skip_interception"

    if-eqz p1, :cond_b9

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_b9

    .line 763
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v9, v2

    .line 766
    .local v9, "targetIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 768
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.gallery.activity.ExternalPhotoPageActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_58

    .line 769
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.miui.gallery.activity.TranslucentExternalPhotoPageActivity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 770
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.miui.gallery.editor.photo.screen.home.ScreenEditorActivity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    goto :goto_58

    :cond_56
    move v2, v3

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v2, 0x1

    :goto_59
    move v10, v2

    .line 771
    .local v10, "isSkipActivity":Z
    const-string v2, "com.miui.gallery"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "SecurityManager"

    if-eqz v2, :cond_7a

    if-eqz v10, :cond_7a

    .line 773
    :try_start_66
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 774
    .local v2, "sourceIntent":Landroid/content/Intent;
    if-eqz v2, :cond_73

    .line 775
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_74

    .line 779
    .end local v2    # "sourceIntent":Landroid/content/Intent;
    :cond_73
    goto :goto_7a

    .line 777
    :catchall_74
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "checkAccessControl sourceIntent"

    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7a
    :goto_7a
    invoke-virtual {p0, v9}, Lmiui/security/SecurityManager;->activityResume(Landroid/content/Intent;)I

    move-result v0

    .line 783
    .local v0, "flag":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_b8

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_87

    goto :goto_b8

    .line 787
    :cond_87
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_92

    .line 788
    invoke-virtual {p1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 789
    invoke-direct {p0, p1}, Lmiui/security/SecurityManager;->activityFinish(Landroid/app/Activity;)V

    .line 790
    return-void

    .line 793
    :cond_92
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_97

    .line 794
    return-void

    .line 797
    :cond_97
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v1

    move v7, p2

    invoke-static/range {v2 .. v8}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 798
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    const-string v4, "android.app.extra.PROTECTED_APP_TOKEN"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 800
    const/4 v3, -0x1

    const/4 v4, 0x0

    :try_start_ad
    invoke-virtual {p1, v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_b0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 803
    goto :goto_b9

    .line 801
    :catch_b1
    move-exception v3

    .line 802
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "checkAccessControl"

    invoke-static {v11, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b9

    .line 784
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_b8
    :goto_b8
    return-void

    .line 805
    .end local v0    # "flag":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v9    # "targetIntent":Landroid/content/Intent;
    .end local v10    # "isSkipActivity":Z
    :cond_b9
    :goto_b9
    return-void
.end method

.method public blacklist checkAccessControlPass(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 257
    goto :goto_a

    .line 256
    :catch_9
    move-exception v1

    .line 258
    :goto_a
    return v0
.end method

.method public blacklist checkAccessControlPassAsUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public blacklist checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 270
    goto :goto_a

    .line 269
    :catch_9
    move-exception v1

    .line 271
    :goto_a
    return v0
.end method

.method public blacklist checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 384
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lmiui/security/ISecurityManager;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 385
    :catch_b
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;II)Z
    .registers 15
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "calleeUid"    # I

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 434
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 436
    .local v2, "retval":Z
    :try_start_5
    iget-object v3, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lmiui/security/ISecurityManager;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;II)Z

    move-result v3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    move v2, v3

    .line 438
    goto :goto_13

    .line 437
    :catch_12
    move-exception v3

    .line 439
    :goto_13
    const-string v3, "checkAllowStartActivity"

    invoke-static {v0, v1, v3}, Lmiui/security/SecurityManager;->checkTime(JLjava/lang/String;)V

    .line 440
    return v2
.end method

.method public blacklist checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 276
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 277
    :catch_7
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkGameBoosterAntimsgPassAsUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist checkSmsBlocked(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 165
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 166
    :catch_7
    move-exception v0

    .line 167
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist exemptTemporarily(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1387
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->exemptTemporarily(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1390
    nop

    .line 1391
    return-void

    .line 1388
    :catch_7
    move-exception v0

    .line 1389
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist finishAccessControl(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1028
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lmiui/security/ISecurityManager;->finishAccessControl(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1031
    goto :goto_e

    .line 1029
    :catch_a
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1032
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public blacklist finishAccessControl(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1037
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->finishAccessControl(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 1040
    nop

    .line 1041
    return-void

    .line 1038
    :catch_7
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "finishAccessControl has failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getAccessControlPasswordType()Ljava/lang/String;
    .registers 4

    .line 409
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lmiui/security/ISecurityManager;->getAccessControlPasswordType(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 410
    :catch_b
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getAllGameStorageApps(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1424
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->getAllGameStorageApps(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1425
    :catch_7
    move-exception v0

    .line 1426
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getAllPrivacyApps(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1323
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1324
    :catch_7
    move-exception v0

    .line 1325
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getAppDarkMode(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getAppDarkMode(Ljava/lang/String;)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 339
    nop

    .line 340
    return v0

    .line 337
    :catch_a
    move-exception v1

    .line 338
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getAppDarkMode exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getAppDarkModeForUser(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 344
    const/4 v0, 0x0

    .line 346
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->getAppDarkModeForUser(Ljava/lang/String;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 349
    nop

    .line 350
    return v0

    .line 347
    :catch_a
    move-exception v1

    .line 348
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getAppDarkModeForUser exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getAppPermissionControlOpen(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 996
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getAppPermissionControlOpen(I)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 997
    :catch_b
    move-exception v1

    .line 1000
    return v0
.end method

.method public blacklist getAppRelaunchModeAfterFolded(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1485
    const/4 v0, 0x0

    .line 1487
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getAppRelaunchModeAfterFolded(Ljava/lang/String;)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 1490
    nop

    .line 1491
    return v0

    .line 1488
    :catch_a
    move-exception v1

    .line 1489
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getAppRelaunchModeAfterFolded exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getAppRelaunchModeAfterFoldedForUser(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1495
    const/4 v0, 0x0

    .line 1497
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->getAppRelaunchModeAfterFoldedForUser(Ljava/lang/String;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 1500
    nop

    .line 1501
    return v0

    .line 1498
    :catch_a
    move-exception v1

    .line 1499
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getAppRelaunchModeAfterFoldedForUser exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getAppRemindForRelaunch(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1457
    const/4 v0, 0x0

    .line 1459
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getAppRemindForRelaunch(Ljava/lang/String;)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 1462
    nop

    .line 1463
    return v0

    .line 1460
    :catch_a
    move-exception v1

    .line 1461
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getAppRemindForRelaunch exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getAppRemindForRelaunchForUser(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1467
    const/4 v0, 0x0

    .line 1469
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->getAppRemindForRelaunchForUser(Ljava/lang/String;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 1472
    nop

    .line 1473
    return v0

    .line 1470
    :catch_a
    move-exception v1

    .line 1471
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getAppRemindForRelaunchForUser exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 287
    goto :goto_a

    .line 286
    :catch_9
    move-exception v1

    .line 288
    :goto_a
    return v0
.end method

.method public blacklist getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 292
    const/4 v0, 0x0

    .line 294
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 296
    goto :goto_a

    .line 295
    :catch_9
    move-exception v1

    .line 297
    :goto_a
    return v0
.end method

.method public blacklist getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 416
    const/4 v0, 0x0

    .line 418
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 420
    goto :goto_a

    .line 419
    :catch_9
    move-exception v1

    .line 421
    :goto_a
    return v0
.end method

.method public blacklist getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 306
    nop

    .line 307
    return v0

    .line 304
    :catch_a
    move-exception v1

    .line 305
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getApplicationMaskNotificationEnabledAsUser exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getBlurryCellInfos(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 1449
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->getBlurryCellInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1450
    :catch_7
    move-exception v0

    .line 1453
    return-object p1
.end method

.method public blacklist getBlurryCellLocation(Landroid/telephony/CellIdentity;)Landroid/telephony/CellIdentity;
    .registers 3
    .param p1, "location"    # Landroid/telephony/CellIdentity;

    .line 1440
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->getBlurryCellLocation(Landroid/telephony/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1441
    :catch_7
    move-exception v0

    .line 1444
    return-object p1
.end method

.method public blacklist getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Landroid/content/Intent;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I

    .line 683
    if-eqz p1, :cond_8

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v5, v0

    .line 684
    .local v5, "isFromActivity":Z
    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Lmiui/security/SecurityManager;->getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZIILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZIILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "fromActivity"    # Z
    .param p5, "requestCode"    # I
    .param p6, "userId"    # I
    .param p7, "bOptions"    # Landroid/os/Bundle;

    .line 689
    move-object v1, p0

    move-object v2, p1

    move-object v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p6

    const/4 v3, 0x0

    if-eqz v2, :cond_53

    invoke-virtual {p0, p1, v12}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_53

    .line 693
    :cond_11
    const/4 v4, 0x0

    .line 695
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_12
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-interface {v0, p2, v5, v6, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1e

    move-object v4, v0

    .line 697
    goto :goto_20

    .line 696
    :catch_1e
    move-exception v0

    move-object v0, v4

    .line 698
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    :goto_20
    if-nez v0, :cond_23

    .line 699
    return-object v3

    .line 703
    :cond_23
    if-eqz v11, :cond_2f

    if-eqz v0, :cond_2f

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eq v4, v5, :cond_52

    .line 704
    :cond_2f
    invoke-virtual {p0, p2, v11, v12}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v4

    if-nez v4, :cond_52

    if-eqz v11, :cond_41

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_41

    goto :goto_52

    .line 707
    :cond_41
    const/4 v3, 0x1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    return-object v3

    .line 705
    :cond_52
    :goto_52
    return-object v3

    .line 690
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_53
    :goto_53
    return-object v3
.end method

.method public blacklist getCheckGameBoosterAntimsgIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callPackageName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "fromActivity"    # Z
    .param p6, "requestCode"    # I
    .param p7, "userId"    # I

    .line 809
    move-object v1, p0

    move-object/from16 v9, p3

    move/from16 v10, p7

    const/4 v2, 0x0

    if-eqz p1, :cond_46

    const-string v0, "com.miui.securitycenter"

    move-object v11, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0, v10}, Lmiui/security/SecurityManager;->isGameBoosterActived(I)Z

    move-result v0

    if-nez v0, :cond_1a

    move-object/from16 v12, p4

    goto :goto_49

    .line 813
    :cond_1a
    const/4 v3, 0x0

    .line 815
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_1b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v0, v9, v4, v5, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_27

    move-object v3, v0

    .line 817
    goto :goto_29

    .line 816
    :catch_27
    move-exception v0

    move-object v0, v3

    .line 818
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    :goto_29
    if-nez v0, :cond_2c

    .line 819
    return-object v2

    .line 821
    :cond_2c
    move-object/from16 v12, p4

    invoke-virtual {p0, v9, v12, v10}, Lmiui/security/SecurityManager;->checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 822
    return-object v2

    .line 824
    :cond_35
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-static/range {v2 .. v8}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 809
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_46
    move-object v11, p2

    :cond_47
    move-object/from16 v12, p4

    .line 810
    :goto_49
    return-object v2
.end method

.method public blacklist getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZIILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "calleeAlreadyStarted"    # Z
    .param p9, "userId"    # I
    .param p10, "callingUid"    # I
    .param p11, "bOptions"    # Landroid/os/Bundle;

    .line 447
    move-object v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static {p1, v9, v10, v11, v12}, Lmiui/security/AppRunningControlManager;->getBlockActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v0

    .line 448
    .local v0, "ret":Landroid/content/Intent;
    if-eqz v0, :cond_10

    .line 449
    return-object v0

    .line 452
    :cond_10
    invoke-virtual/range {p0 .. p10}, Lmiui/security/SecurityManager;->getCheckStartActivityIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;

    move-result-object v13

    .line 453
    .end local v0    # "ret":Landroid/content/Intent;
    .local v13, "ret":Landroid/content/Intent;
    if-eqz v13, :cond_17

    .line 454
    return-object v13

    .line 457
    :cond_17
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lmiui/security/SecurityManager;->getCheckGameBoosterAntimsgIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v13

    .line 458
    if-eqz v13, :cond_2c

    .line 459
    return-object v13

    .line 462
    :cond_2c
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p9

    move-object/from16 v7, p11

    invoke-virtual/range {v0 .. v7}, Lmiui/security/SecurityManager;->getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZIILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 463
    .end local v13    # "ret":Landroid/content/Intent;
    .restart local v0    # "ret":Landroid/content/Intent;
    return-object v0
.end method

.method public blacklist getCheckStartActivityIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;
    .registers 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "calleeAlreadyStarted"    # Z
    .param p9, "userId"    # I
    .param p10, "callingUid"    # I

    .line 468
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v10, p9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 470
    .local v8, "startTime":J
    const/4 v7, 0x0

    if-eqz v15, :cond_206

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_206

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1f

    goto/16 :goto_206

    .line 474
    :cond_1f
    const/16 v16, 0x0

    .line 475
    .local v16, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    const-string v17, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    .line 476
    .local v17, "action":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android"

    if-eqz v0, :cond_78

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 477
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move-object/from16 v6, p2

    invoke-direct {v11, v6, v13, v0}, Lmiui/security/SecurityManager;->getApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 478
    .end local p2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v6, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_44

    .line 479
    return-object v7

    .line 481
    :cond_44
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v0, v1, v15}, Lmiui/security/SecurityManager;->isDenyAccessGallery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 482
    const/4 v7, -0x1

    const/16 v18, 0x2732

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p9

    move/from16 v5, p10

    move-object/from16 v19, v6

    .end local v6    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v19, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    move v6, v7

    move-object/from16 v7, p5

    move-wide/from16 v20, v8

    .end local v8    # "startTime":J
    .local v20, "startTime":J
    move/from16 v8, p6

    move/from16 v9, p7

    move v13, v10

    move/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lmiui/security/SecurityManager;->buildStartIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 481
    .end local v19    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "startTime":J
    .restart local v6    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "startTime":J
    :cond_70
    move-object/from16 v19, v6

    move-wide/from16 v20, v8

    move v13, v10

    .end local v6    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "startTime":J
    .restart local v19    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "startTime":J
    move-object/from16 v0, v19

    goto :goto_cf

    .line 476
    .end local v19    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "startTime":J
    .restart local v8    # "startTime":J
    .restart local p2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_78
    move-object/from16 v6, p2

    move-wide/from16 v20, v8

    move v13, v10

    .line 485
    .end local v8    # "startTime":J
    .restart local v20    # "startTime":J
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-static/range {p3 .. p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 486
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 487
    invoke-direct {v11, v7, v14, v13}, Lmiui/security/SecurityManager;->getApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 488
    .end local v16    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v10, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v10, :cond_9c

    .line 489
    return-object v7

    .line 491
    :cond_9c
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v0, v1, v15}, Lmiui/security/SecurityManager;->isDenyAccessGallery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 492
    iget v7, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v16, 0x2732

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p9

    move/from16 v5, p10

    move v6, v7

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v18, v10

    .end local v10    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v18, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lmiui/security/SecurityManager;->buildStartIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 491
    .end local v18    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c6
    move-object/from16 v18, v10

    .end local v10    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p2

    move-object/from16 v16, v18

    goto :goto_cf

    .line 497
    .end local v18    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_cd
    move-object/from16 v0, p2

    .end local p2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_cf
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move v10, v13

    move-object/from16 v13, p3

    invoke-direct {v11, v0, v13, v1}, Lmiui/security/SecurityManager;->getApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 498
    .end local v0    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v9, :cond_dd

    .line 499
    return-object v7

    .line 502
    :cond_dd
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-nez v0, :cond_1ef

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_ee

    move-object v11, v9

    move-wide/from16 v8, v20

    goto/16 :goto_1f2

    .line 509
    :cond_ee
    invoke-direct {v11, v7, v14, v10}, Lmiui/security/SecurityManager;->getApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 510
    .end local v16    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v8, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v8, :cond_f5

    .line 511
    return-object v7

    .line 514
    :cond_f5
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-nez v0, :cond_1d6

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 515
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ge v0, v1, :cond_10a

    move-object/from16 v19, v8

    move-object v11, v9

    move-wide/from16 v8, v20

    goto/16 :goto_1db

    .line 521
    :cond_10a
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 522
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_130

    .line 524
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    const/4 v3, 0x1

    .line 525
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v6, 0x1

    .line 524
    const-string v1, "recentTask"

    move-object/from16 v2, p4

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v6}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 528
    :cond_130
    invoke-direct {v11, v13, v14}, Lmiui/security/SecurityManager;->exemptByRestrictChain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 529
    .local v16, "exemptByRestrictChain":Z
    invoke-static/range {p3 .. p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    invoke-direct {v11, v12, v13, v10}, Lmiui/security/SecurityManager;->restrictForChain(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15c

    if-nez v16, :cond_15c

    .line 531
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    move-object v10, v8

    .end local v8    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v8, p10

    move-object v11, v9

    .end local v9    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v11, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lmiui/security/SecurityManager;->buildIntentForRestrictChain(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILandroid/content/Intent;ZIIILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 529
    .end local v10    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_15c
    move-object v10, v8

    move-object v11, v9

    .line 535
    .end local v8    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v16, :cond_161

    .line 536
    return-object v7

    .line 539
    :cond_161
    if-eqz p8, :cond_177

    .line 540
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    const/4 v3, 0x1

    .line 541
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v6, 0x1

    .line 540
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v6}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 542
    return-object v7

    .line 545
    :cond_177
    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1be

    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 546
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p10

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lmiui/security/SecurityManager;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;II)Z

    move-result v0

    if-eqz v0, :cond_198

    move-object/from16 v19, v10

    move-wide/from16 v8, v20

    goto :goto_1c2

    .line 552
    :cond_198
    iget-object v2, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v4, p9

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v19, v10

    .end local v10    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v19, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lmiui/security/SecurityManager;->buildStartIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v0

    .line 554
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "getCheckStartActivityIntent"

    move-wide/from16 v8, v20

    .end local v20    # "startTime":J
    .local v8, "startTime":J
    invoke-static {v8, v9, v1}, Lmiui/security/SecurityManager;->checkTime(JLjava/lang/String;)V

    .line 555
    return-object v0

    .line 545
    .end local v0    # "result":Landroid/content/Intent;
    .end local v8    # "startTime":J
    .end local v19    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "startTime":J
    :cond_1be
    move-object/from16 v19, v10

    move-wide/from16 v8, v20

    .line 547
    .end local v10    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "startTime":J
    .restart local v8    # "startTime":J
    .restart local v19    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1c2
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    .line 548
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v6, 0x1

    .line 547
    move-object/from16 v2, p4

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v6}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 549
    return-object v7

    .line 514
    .end local v11    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "exemptByRestrictChain":Z
    .end local v19    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v8, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "startTime":J
    :cond_1d6
    move-object/from16 v19, v8

    move-object v11, v9

    move-wide/from16 v8, v20

    .line 516
    .end local v9    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "startTime":J
    .local v8, "startTime":J
    .restart local v11    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1db
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    .line 517
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v6, 0x1

    .line 516
    move-object/from16 v2, p4

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v6}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 518
    return-object v7

    .line 502
    .end local v8    # "startTime":J
    .end local v11    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v16, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "startTime":J
    :cond_1ef
    move-object v11, v9

    move-wide/from16 v8, v20

    .line 504
    .end local v9    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "startTime":J
    .restart local v8    # "startTime":J
    .restart local v11    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1f2
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    .line 505
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v6, 0x1

    .line 504
    move-object/from16 v2, p4

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v6}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 506
    return-object v7

    .line 471
    .end local v11    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "action":Ljava/lang/String;
    .restart local p2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_206
    :goto_206
    return-object v7
.end method

.method public blacklist getIncompatibleAppList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1154
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getIncompatibleAppList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1155
    :catch_7
    move-exception v0

    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getPackageNameByPid(I)Ljava/lang/String;
    .registers 3
    .param p1, "pid"    # I

    .line 151
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 152
    :catch_7
    move-exception v0

    .line 153
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermissionFlagsAsUser(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1363
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->getPermissionFlagsAsUser(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1364
    :catch_7
    move-exception v0

    .line 1365
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getPlatformVAID()Ljava/lang/String;
    .registers 4

    .line 1555
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getPlatformVAID()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1558
    .local v0, "result":Ljava/lang/String;
    nop

    .line 1559
    return-object v0

    .line 1556
    .end local v0    # "result":Ljava/lang/String;
    :catch_8
    move-exception v0

    .line 1557
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "getPlatformVAID exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getShouldMaskApps()Ljava/lang/String;
    .registers 4

    .line 1545
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getShouldMaskApps()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1548
    .local v0, "result":Ljava/lang/String;
    nop

    .line 1549
    return-object v0

    .line 1546
    .end local v0    # "result":Ljava/lang/String;
    :catch_8
    move-exception v0

    .line 1547
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "getShouldMaskApps exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getSimulatedTouchInfo()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1637
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1639
    .local v0, "simulatedTouchInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_5
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getSimulatedTouchInfo()Ljava/util/Map;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 1642
    goto :goto_15

    .line 1640
    :catch_d
    move-exception v1

    .line 1641
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SecurityManager"

    const-string v3, "getSimulatedTouchInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1643
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    return-object v0
.end method

.method public blacklist getStickWindowName(Ljava/lang/String;)Z
    .registers 5
    .param p1, "component"    # Ljava/lang/String;

    .line 1280
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->getStickWindowName(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1281
    :catch_7
    move-exception v0

    .line 1282
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getSysAppCracked()I
    .registers 4

    .line 1089
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getSysAppCracked()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1090
    :catch_7
    move-exception v0

    .line 1091
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getTopActivity()Landroid/os/IBinder;
    .registers 4

    .line 1247
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getTopActivity()Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1248
    :catch_7
    move-exception v0

    .line 1249
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 979
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 980
    :catch_7
    move-exception v0

    .line 983
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWakePathComponents(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmiui/security/WakePathComponent;",
            ">;"
        }
    .end annotation

    .line 1162
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1163
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/security/WakePathComponent;>;"
    if-nez v0, :cond_a

    .line 1164
    const/4 v1, 0x0

    return-object v1

    .line 1166
    :cond_a
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 1168
    .end local v0    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/security/WakePathComponent;>;"
    :catch_f
    move-exception v0

    .line 1169
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getWakeUpTime(Ljava/lang/String;)J
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;

    .line 911
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 912
    :catch_7
    move-exception v0

    .line 913
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 1097
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1100
    nop

    .line 1101
    return-void

    .line 1098
    :catch_7
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1073
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->grantRuntimePermission(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1076
    nop

    .line 1077
    return-void

    .line 1074
    :catch_7
    move-exception v0

    .line 1075
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1339
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1342
    nop

    .line 1343
    return-void

    .line 1340
    :catch_7
    move-exception v0

    .line 1341
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist hasAppBehaviorWatching()Z
    .registers 2

    .line 1628
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->hasAppBehaviorWatching()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1629
    :catch_7
    move-exception v0

    .line 1630
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1632
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist haveAccessControlPassword()Z
    .registers 4

    .line 397
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lmiui/security/ISecurityManager;->haveAccessControlPassword(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 398
    :catch_b
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isAccessControlActived(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 856
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public blacklist isAccessControlActived(Landroid/content/Context;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .line 863
    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p2

    .line 864
    nop

    .line 865
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 864
    const-string v1, "access_control_lock_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_14

    move v2, v1

    :cond_14
    return v2
.end method

.method public blacklist isAllowStartService(Landroid/content/Intent;I)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1239
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->isAllowStartService(Landroid/content/Intent;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1240
    :catch_7
    move-exception v0

    .line 1241
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isAppHide()Z
    .registers 4

    .line 1191
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->isAppHide()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1192
    :catch_7
    move-exception v0

    .line 1193
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isAppPrivacyEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1231
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->isAppPrivacyEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1232
    :catch_7
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isFunctionOpen()Z
    .registers 4

    .line 1199
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->isFunctionOpen()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1200
    :catch_7
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isGameBoosterActived(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .line 871
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->getGameMode(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 872
    :catch_7
    move-exception v0

    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "isGameBoosterActived exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isGameStorageApp(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1408
    const/4 v0, 0x0

    .line 1410
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->isGameStorageApp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 1413
    nop

    .line 1414
    return v0

    .line 1411
    :catch_a
    move-exception v1

    .line 1412
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "security manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist isPrivacyApp(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1312
    const/4 v0, 0x0

    .line 1314
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->isPrivacyApp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 1317
    nop

    .line 1318
    return v0

    .line 1315
    :catch_a
    move-exception v1

    .line 1316
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "security manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist isRestrictedAppNet(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1105
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, v0}, Lmiui/security/ISecurityManager;->isRestrictedAppNet(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v1

    .line 1107
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_b
    move-exception v0

    .line 1108
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isScRelaunchNeedConfirm(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1514
    const/4 v0, 0x0

    .line 1516
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->isScRelaunchNeedConfirm(Ljava/lang/String;)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 1519
    nop

    .line 1520
    return v0

    .line 1517
    :catch_a
    move-exception v1

    .line 1518
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "isScRelaunchNeedConfirm exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist isScRelaunchNeedConfirmForUser(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1524
    const/4 v0, 0x0

    .line 1526
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->isScRelaunchNeedConfirmForUser(Ljava/lang/String;I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 1529
    nop

    .line 1530
    return v0

    .line 1527
    :catch_a
    move-exception v1

    .line 1528
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "isScRelaunchNeedConfirm exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist isValidDevice()Z
    .registers 4

    .line 1215
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->isValidDevice()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1216
    :catch_7
    move-exception v0

    .line 1217
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist killNativePackageProcesses(ILjava/lang/String;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 143
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 146
    goto :goto_a

    .line 144
    :catch_6
    move-exception v0

    .line 145
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist moveTaskToStack(IIZ)I
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToStack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOnTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :try_start_2c
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->moveTaskToStack(IIZ)I

    move-result v0
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_33

    return v0

    .line 1265
    :catch_33
    move-exception v0

    .line 1266
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist needFinishAccessControl(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1018
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->needFinishAccessControl(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1019
    :catch_7
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1022
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist persistAppBehavior()V
    .registers 4

    .line 1612
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->persistAppBehavior()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1615
    nop

    .line 1616
    return-void

    .line 1613
    :catch_7
    move-exception v0

    .line 1614
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "recordAppBehavior exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist pushPrivacyVirtualDisplayList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1564
    .local p1, "privacyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->pushPrivacyVirtualDisplayList(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1567
    nop

    .line 1568
    return-void

    .line 1565
    :catch_7
    move-exception v0

    .line 1566
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "pushPrivacyVirtualDisplayList exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist pushUpdatePkgsData(Ljava/util/List;Z)V
    .registers 6
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1297
    .local p1, "updatePkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->pushUpdatePkgsData(Ljava/util/List;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1300
    nop

    .line 1301
    return-void

    .line 1298
    :catch_7
    move-exception v0

    .line 1299
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .registers 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 955
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 958
    goto :goto_e

    .line 956
    :catch_6
    move-exception v0

    .line 957
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecurityManager"

    const-string v2, "pushWakePathConfirmDialogWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    .registers 5
    .param p1, "wakeType"    # I
    .param p2, "wakePathRuleInfos"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .line 939
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 942
    goto :goto_7

    .line 940
    :catch_6
    move-exception v0

    .line 943
    :goto_7
    return-void
.end method

.method public blacklist pushWakePathWhiteList(Ljava/util/List;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 947
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->pushWakePathWhiteList(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 950
    goto :goto_7

    .line 948
    :catch_6
    move-exception v0

    .line 951
    :goto_7
    return-void
.end method

.method public blacklist putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 920
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 921
    :catch_7
    move-exception v0

    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 930
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 931
    :catch_7
    move-exception v0

    .line 934
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist recordAppBehavior(Lmiui/security/AppBehavior;)V
    .registers 5
    .param p1, "appBehavior"    # Lmiui/security/AppBehavior;

    .line 1604
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->recordAppBehavior(Lmiui/security/AppBehavior;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1607
    nop

    .line 1608
    return-void

    .line 1605
    :catch_7
    move-exception v0

    .line 1606
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "recordAppBehavior exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerLocationBlurryManager(Lcom/android/internal/app/ILocationBlurry;)V
    .registers 3
    .param p1, "manager"    # Lcom/android/internal/app/ILocationBlurry;

    .line 1432
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->registerLocationBlurryManager(Lcom/android/internal/app/ILocationBlurry;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1435
    goto :goto_7

    .line 1433
    :catch_6
    move-exception v0

    .line 1436
    :goto_7
    return-void
.end method

.method public blacklist registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .line 988
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 991
    goto :goto_7

    .line 989
    :catch_6
    move-exception v0

    .line 992
    :goto_7
    return-void
.end method

.method public blacklist removeAccessControlPass(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 221
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 223
    goto :goto_7

    .line 222
    :catch_6
    move-exception v0

    .line 224
    :goto_7
    return-void
.end method

.method public blacklist removeAccessControlPassAsUser(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 234
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->removeAccessControlPassAsUser(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catch_7
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist removeWakePathData(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 963
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->removeWakePathData(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 966
    goto :goto_7

    .line 964
    :catch_6
    move-exception v0

    .line 967
    :goto_7
    return-void
.end method

.method public blacklist resizeTask(ILandroid/graphics/Rect;I)I
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resizeMode"    # I

    .line 1287
    const-string v0, "SecurityManager"

    const-string v1, "resizeTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :try_start_7
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->resizeTask(ILandroid/graphics/Rect;I)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 1290
    :catch_e
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1347
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1350
    nop

    .line 1351
    return-void

    .line 1348
    :catch_7
    move-exception v0

    .line 1349
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist revokeRuntimePermissionAsUserNotKill(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1355
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->revokeRuntimePermissionAsUserNotKill(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1358
    nop

    .line 1359
    return-void

    .line 1356
    :catch_7
    move-exception v0

    .line 1357
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 369
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lmiui/security/ISecurityManager;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 372
    nop

    .line 373
    return-void

    .line 370
    :catch_b
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setAppDarkModeForUser(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 355
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setAppDarkModeForUser(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 358
    nop

    .line 359
    return-void

    .line 356
    :catch_7
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setAppDarkModeForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setAppHide(Z)Z
    .registers 5
    .param p1, "hide"    # Z

    .line 1207
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->setAppHide(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1208
    :catch_7
    move-exception v0

    .line 1209
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setAppPermissionControlOpen(I)V
    .registers 3
    .param p1, "status"    # I

    .line 1010
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->setAppPermissionControlOpen(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1013
    goto :goto_7

    .line 1011
    :catch_6
    move-exception v0

    .line 1014
    :goto_7
    return-void
.end method

.method public blacklist setAppPrivacyStatus(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isOpen"    # Z

    .line 1223
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->setAppPrivacyStatus(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1226
    nop

    .line 1227
    return-void

    .line 1224
    :catch_7
    move-exception v0

    .line 1225
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setAppRelaunchModeAfterFoldedForUser(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1506
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setAppRelaunchModeAfterFoldedForUser(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1509
    nop

    .line 1510
    return-void

    .line 1507
    :catch_7
    move-exception v0

    .line 1508
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setAppRelaunchModeAfterFoldedForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setAppRemindForRelaunchForUser(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1478
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setAppRemindForRelaunchForUser(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1481
    nop

    .line 1482
    return-void

    .line 1479
    :catch_7
    move-exception v0

    .line 1480
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setAppRemindForRelaunchForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 312
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 314
    goto :goto_7

    .line 313
    :catch_6
    move-exception v0

    .line 315
    :goto_7
    return-void
.end method

.method public blacklist setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 319
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 322
    nop

    .line 323
    return-void

    .line 320
    :catch_7
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setApplicationAccessControlEnabledForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 427
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 429
    goto :goto_7

    .line 428
    :catch_6
    move-exception v0

    .line 430
    :goto_7
    return-void
.end method

.method public blacklist setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 327
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 330
    nop

    .line 331
    return-void

    .line 328
    :catch_7
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setApplicationMaskNotificationEnabledForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setCoreRuntimePermissionEnabled(ZI)V
    .registers 6
    .param p1, "grant"    # Z
    .param p2, "flags"    # I

    .line 1060
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->setCoreRuntimePermissionEnabled(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1063
    nop

    .line 1064
    return-void

    .line 1061
    :catch_7
    move-exception v0

    .line 1062
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setCurrentNetworkState(I)Z
    .registers 5
    .param p1, "state"    # I

    .line 1138
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->setCurrentNetworkState(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1139
    :catch_7
    move-exception v0

    .line 1140
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    .registers 7
    .param p1, "gameBooster"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "isGameMode"    # Z

    .line 242
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 245
    nop

    .line 246
    return-void

    .line 243
    :catch_7
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setGameBoosterIBinder exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setGameStorageApp(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isStorage"    # Z

    .line 1398
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setGameStorageApp(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1401
    nop

    .line 1402
    return-void

    .line 1399
    :catch_7
    move-exception v0

    .line 1400
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setIncompatibleAppList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1146
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->setIncompatibleAppList(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1149
    nop

    .line 1150
    return-void

    .line 1147
    :catch_7
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setMiuiFirewallRule(Ljava/lang/String;III)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "rule"    # I
    .param p4, "type"    # I

    .line 1130
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lmiui/security/ISecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1131
    :catch_7
    move-exception v0

    .line 1132
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .line 1183
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1186
    nop

    .line 1187
    return-void

    .line 1184
    :catch_7
    move-exception v0

    .line 1185
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setPrivacyApp(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPrivacy"    # Z

    .line 1305
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setPrivacyApp(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1308
    nop

    .line 1309
    return-void

    .line 1306
    :catch_7
    move-exception v0

    .line 1307
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setScRelaunchNeedConfirmForUser(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "confirm"    # Z
    .param p3, "userId"    # I

    .line 1535
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setScRelaunchNeedConfirmForUser(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1538
    nop

    .line 1539
    return-void

    .line 1536
    :catch_7
    move-exception v0

    .line 1537
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setScRelaunchModeAfterFoldedForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setStickWindowName(Ljava/lang/String;)V
    .registers 5
    .param p1, "component"    # Ljava/lang/String;

    .line 1272
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->setStickWindowName(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1275
    nop

    .line 1276
    return-void

    .line 1273
    :catch_7
    move-exception v0

    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setTrackWakePathCallListLogEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 971
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->setTrackWakePathCallListLogEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 974
    goto :goto_7

    .line 972
    :catch_6
    move-exception v0

    .line 975
    :goto_7
    return-void
.end method

.method public blacklist setWakeUpTime(Ljava/lang/String;J)V
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "timeInSeconds"    # J

    .line 903
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setWakeUpTime(Ljava/lang/String;J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 906
    goto :goto_7

    .line 904
    :catch_6
    move-exception v0

    .line 907
    :goto_7
    return-void
.end method

.method public blacklist startInterceptSmsBySender(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 183
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, v0, p2, p3}, Lmiui/security/ISecurityManager;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v1

    .line 185
    .end local v0    # "pkgName":Ljava/lang/String;
    :catch_b
    move-exception v0

    .line 186
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 188
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startWatchingAppBehavior(IZ)V
    .registers 6
    .param p1, "behavior"    # I
    .param p2, "includeSystem"    # Z

    .line 1572
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->startWatchingAppBehavior(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1575
    nop

    .line 1576
    return-void

    .line 1573
    :catch_7
    move-exception v0

    .line 1574
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startWatchingAppBehavior exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist startWatchingAppBehavior(I[Ljava/lang/String;Z)V
    .registers 7
    .param p1, "behavior"    # I
    .param p2, "pkgNames"    # [Ljava/lang/String;
    .param p3, "includeSystem"    # Z

    .line 1580
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->startWatchingAppBehaviors(I[Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1583
    nop

    .line 1584
    return-void

    .line 1581
    :catch_7
    move-exception v0

    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startWatchingAppBehavior exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist stopInterceptSmsBySender()Z
    .registers 2

    .line 197
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->stopInterceptSmsBySender()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 198
    :catch_7
    move-exception v0

    .line 199
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopWatchingAppBehavior(I)V
    .registers 5
    .param p1, "behavior"    # I

    .line 1588
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->stopWatchingAppBehavior(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1591
    nop

    .line 1592
    return-void

    .line 1589
    :catch_7
    move-exception v0

    .line 1590
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startWatchingAppBehavior exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist stopWatchingAppBehaviors(I[Ljava/lang/String;)V
    .registers 6
    .param p1, "behavior"    # I
    .param p2, "pkgNames"    # [Ljava/lang/String;

    .line 1596
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->stopWatchingAppBehaviors(I[Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1599
    nop

    .line 1600
    return-void

    .line 1597
    :catch_7
    move-exception v0

    .line 1598
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startWatchingAppBehavior exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist switchSimulatedTouchDetect(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1647
    .local p1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->switchSimulatedTouchDetect(Ljava/util/Map;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1650
    goto :goto_e

    .line 1648
    :catch_6
    move-exception v0

    .line 1649
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecurityManager"

    const-string v2, "switchSimulatedTouchDetect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1651
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist updateBehaviorThreshold(IJ)V
    .registers 7
    .param p1, "behavior"    # I
    .param p2, "threshold"    # J

    .line 1620
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->updateBehaviorThreshold(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1623
    nop

    .line 1624
    return-void

    .line 1621
    :catch_7
    move-exception v0

    .line 1622
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "updateBehaviorThreshold exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist updateLauncherPackageNames()V
    .registers 4

    .line 1331
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->updateLauncherPackageNames()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1334
    nop

    .line 1335
    return-void

    .line 1332
    :catch_7
    move-exception v0

    .line 1333
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist updateLedStatus(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 1379
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->updateLedStatus(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1382
    nop

    .line 1383
    return-void

    .line 1380
    :catch_7
    move-exception v0

    .line 1381
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist updatePermissionFlagsAsUser(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 12
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "userId"    # I

    .line 1371
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lmiui/security/ISecurityManager;->updatePermissionFlagsAsUser(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 1374
    nop

    .line 1375
    return-void

    .line 1372
    :catch_c
    move-exception v0

    .line 1373
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist watchGreenGuardProcess()V
    .registers 4

    .line 1255
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->watchGreenGuardProcess()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1258
    nop

    .line 1259
    return-void

    .line 1256
    :catch_7
    move-exception v0

    .line 1257
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeAppHideConfig(Z)Z
    .registers 5
    .param p1, "hide"    # Z

    .line 1114
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->writeAppHideConfig(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1115
    :catch_7
    move-exception v0

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
