.class public Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilitySecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    }
.end annotation


# static fields
.field private static final KEEP_SOURCE_EVENT_TYPES:I = 0x43b9bf

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilitySecurityPolicy"

.field private static final OWN_PROCESS_ID:I


# instance fields
.field private final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field private mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mNonA11yCategoryServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

.field private mSendNonA11yToolNotificationEnabled:Z

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/PolicyWarningUIController;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;)V
    .registers 5
    .param p1, "policyWarningUIController"    # Lcom/android/server/accessibility/PolicyWarningUIController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "a11yUserManager"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 106
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 115
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 116
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    .line 119
    const-string v0, "appops"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 120
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 121
    return-void
.end method

.method private static checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 457
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 458
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 459
    return-object v1

    .line 461
    :cond_c
    nop

    .line 462
    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->getUserHandleOf(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 463
    .local v2, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v3, 0x1

    .line 464
    .local v3, "permitted":Z
    if-eqz v2, :cond_1e

    .line 465
    iget-object v4, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v4, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 469
    :cond_1e
    const/4 v4, 0x1

    .line 470
    .local v4, "permittedByParentAdmin":Z
    const/4 v5, 0x0

    .line 471
    .local v5, "profileAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {p0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->getManagedProfileId(Landroid/content/Context;I)I

    move-result v6

    .line 472
    .local v6, "managedProfileId":I
    const/16 v7, -0x2710

    if-eq v6, v7, :cond_4c

    .line 473
    nop

    .line 474
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->getUserHandleOf(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 473
    invoke-static {p0, v7}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 479
    if-eqz v5, :cond_4c

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 480
    nop

    .line 481
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 480
    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    .line 482
    .local v7, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v8, v5, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8, p1, v6}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    .line 486
    .end local v7    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    :cond_4c
    if-nez v3, :cond_53

    if-nez v4, :cond_53

    .line 487
    sget-object v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v1

    .line 488
    :cond_53
    if-nez v3, :cond_56

    .line 489
    return-object v2

    .line 490
    :cond_56
    if-nez v4, :cond_59

    .line 491
    return-object v5

    .line 493
    :cond_59
    return-object v1
.end method

.method private static getManagedProfileId(Landroid/content/Context;I)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 442
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 443
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 444
    .local v1, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 445
    .local v3, "uInfo":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_21

    .line 446
    goto :goto_10

    .line 448
    :cond_21
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 449
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    return v2

    .line 451
    .end local v3    # "uInfo":Landroid/content/pm/UserInfo;
    :cond_2a
    goto :goto_10

    .line 452
    :cond_2b
    const/16 v2, -0x2710

    return v2
.end method

.method private static getUserHandleOf(I)Landroid/os/UserHandle;
    .registers 2
    .param p0, "userId"    # I

    .line 434
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_6

    .line 435
    const/4 v0, 0x0

    return-object v0

    .line 437
    :cond_6
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private isRetrievalAllowingWindowLocked(II)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 591
    return v1

    .line 593
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1a

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isShellAllowedToRetrieveWindowLocked(II)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 595
    return v3

    .line 598
    :cond_1a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 599
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result v2

    if-ne v0, v2, :cond_29

    .line 600
    return v1

    .line 602
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v3

    :goto_33
    return v1
.end method

.method private isShellAllowedToRetrieveWindowLocked(II)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 608
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 609
    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_34

    .line 610
    .local v2, "windowToken":Landroid/os/IBinder;
    const/4 v3, 0x0

    if-nez v2, :cond_12

    .line 611
    nop

    .line 620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    return v3

    .line 613
    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v4, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result v4
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_34

    .line 614
    .local v4, "windowOwnerUserId":I
    const/16 v5, -0x2710

    if-ne v4, v5, :cond_21

    .line 615
    nop

    .line 620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    return v3

    .line 617
    :cond_21
    :try_start_21
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_debugging_features"

    .line 618
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 617
    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_34

    .line 620
    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    return v3

    .line 620
    .end local v2    # "windowToken":Landroid/os/IBinder;
    .end local v4    # "windowOwnerUserId":I
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    throw v2
.end method

.method private isValidPackageForUid(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 579
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x400000

    .line 580
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 579
    invoke-virtual {v3, p1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v3
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_11} :catch_1d
    .catchall {:try_start_5 .. :try_end_11} :catchall_18

    if-ne p2, v3, :cond_14

    const/4 v2, 0x1

    .line 584
    :cond_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    return v2

    .line 584
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 585
    throw v2

    .line 581
    :catch_1d
    move-exception v3

    .line 582
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 582
    return v2
.end method


# virtual methods
.method public canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 370
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 346
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canDispatchAccessibilityEventLocked(ILandroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 167
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 168
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_12

    .line 195
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    move-result v1

    return v1

    .line 188
    :sswitch_10
    const/4 v1, 0x1

    return v1

    :sswitch_data_12
    .sparse-switch
        0x20 -> :sswitch_10
        0x40 -> :sswitch_10
        0x80 -> :sswitch_10
        0x100 -> :sswitch_10
        0x200 -> :sswitch_10
        0x400 -> :sswitch_10
        0x4000 -> :sswitch_10
        0x40000 -> :sswitch_10
        0x80000 -> :sswitch_10
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_10
        0x400000 -> :sswitch_10
        0x1000000 -> :sswitch_10
    .end sparse-switch
.end method

.method canEnableDisableInputMethod(Ljava/lang/String;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)I
    .registers 10
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 399
    invoke-virtual {p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "servicePackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 402
    .local v1, "callingUserId":I
    const/4 v2, 0x0

    .line 404
    .local v2, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 405
    .local v3, "inputMethodInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v3, :cond_34

    .line 406
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 407
    .local v5, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 408
    move-object v2, v5

    .line 409
    goto :goto_34

    .line 411
    .end local v5    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_33
    goto :goto_1b

    .line 414
    :cond_34
    :goto_34
    if-eqz v2, :cond_50

    .line 415
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 422
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 422
    invoke-static {v4, v5, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 424
    const/4 v4, 0x1

    return v4

    .line 427
    :cond_4e
    const/4 v4, 0x0

    return v4

    .line 416
    :cond_50
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "The input method is in a different package with the accessibility service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p3, "windowId"    # I

    .line 308
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 309
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 308
    :goto_f
    return v0
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 358
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canRegisterService(Landroid/content/pm/ServiceInfo;)Z
    .registers 13
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 658
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Skipping accessibility service "

    const-string v4, "AccessibilitySecurityPolicy"

    if-nez v0, :cond_3b

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": it does not require the permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return v2

    .line 667
    :cond_3b
    iget v0, p1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_69

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": the service is the external one and doesn\'t allow to register as an accessibility service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return v2

    .line 675
    :cond_69
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 676
    .local v0, "servicePackageUid":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v6, "android:bind_accessibility_service"

    move v7, v0

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a4

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": disallowed by AppOps"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return v2

    .line 685
    :cond_a4
    const/4 v1, 0x1

    return v1
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 333
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public canTakeScreenshotLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 383
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 18
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 695
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 698
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x1

    if-nez v9, :cond_16

    .line 700
    return v0

    .line 703
    :cond_16
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 704
    .local v10, "servicePackageUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 705
    .local v11, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 706
    .local v12, "identityToken":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getAttributionTag()Ljava/lang/String;

    move-result-object v14

    .line 709
    .local v14, "attributionTag":Ljava/lang/String;
    :try_start_28
    sget v2, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    const/4 v15, 0x0

    if-ne v2, v11, :cond_41

    .line 710
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v3, "android:access_accessibility"

    const/4 v7, 0x0

    move v4, v10

    move-object v5, v8

    move-object v6, v14

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_55

    if-nez v2, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v15

    .line 719
    :goto_3d
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    return v0

    .line 715
    :cond_41
    :try_start_41
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v3, "android:access_accessibility"

    const/4 v7, 0x0

    move v4, v10

    move-object v5, v8

    move-object v6, v14

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_55

    if-nez v2, :cond_50

    goto :goto_51

    :cond_50
    move v0, v15

    .line 719
    :goto_51
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    return v0

    .line 719
    :catchall_55
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    throw v0
.end method

.method public computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "targetUid"    # I

    .line 262
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 264
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 267
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 269
    .local v0, "uidPackages":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz v2, :cond_43

    .line 270
    nop

    .line 271
    invoke-virtual {v2, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 272
    .local v2, "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    .line 273
    array-length v3, v0

    .line 274
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 275
    .local v3, "validPackages":[Ljava/lang/String;
    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 277
    .local v1, "widgetPackageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_33
    if-ge v4, v1, :cond_42

    .line 278
    array-length v5, v0

    add-int/2addr v5, v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 280
    .end local v4    # "i":I
    :cond_42
    return-object v3

    .line 283
    .end local v1    # "widgetPackageCount":I
    .end local v2    # "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "validPackages":[Ljava/lang/String;
    :cond_43
    return-object v0
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 734
    return-void

    .line 731
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not hold permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .line 631
    sget v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 632
    return-void

    .line 634
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 639
    return-void

    .line 635
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 637
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 567
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 568
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1b

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1b

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1b

    const/4 v1, -0x3

    if-ne p1, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    return v1
.end method

.method public onBoundServicesChangedLocked(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;)V"
        }
    .end annotation

    .line 745
    .local p2, "boundServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq v0, p1, :cond_9

    .line 746
    return-void

    .line 749
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 750
    .local v0, "tempNonA11yCategoryServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 751
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 752
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 753
    .local v2, "a11yServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v3

    .line 754
    .local v3, "service":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result v4

    if-nez v4, :cond_47

    .line 755
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 757
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_47

    .line 759
    :cond_3e
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    if-eqz v4, :cond_47

    .line 760
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceBound(ILandroid/content/ComponentName;)V

    .line 750
    .end local v2    # "a11yServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "service":Landroid/content/ComponentName;
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 766
    .end local v1    # "i":I
    :cond_4a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 767
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 768
    .local v2, "service":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceUnbound(ILandroid/content/ComponentName;)V

    .line 766
    .end local v2    # "service":Landroid/content/ComponentName;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 770
    .end local v1    # "i":I
    :cond_63
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 771
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 772
    return-void
.end method

.method public onEnabledServicesChangedLocked(ILjava/util/Set;)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 803
    .local p2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq v0, p1, :cond_9

    .line 804
    return-void

    .line 806
    :cond_9
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/PolicyWarningUIController;->onEnabledServicesChanged(ILjava/util/Set;)V

    .line 808
    return-void
.end method

.method public onSwitchUserLocked(ILjava/util/Set;)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 782
    .local p2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    if-ne v0, p1, :cond_5

    .line 783
    return-void

    .line 785
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/PolicyWarningUIController;->onSwitchUser(ILjava/util/Set;)V

    .line 788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 789
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 790
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 789
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceUnbound(ILandroid/content/ComponentName;)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 792
    .end local v0    # "i":I
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 793
    iput p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    .line 794
    return-void
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 9
    .param p1, "userId"    # I

    .line 527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 528
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v1

    .line 529
    .local v1, "currentUserId":I
    const/4 v2, -0x3

    const/4 v3, -0x2

    if-eqz v0, :cond_72

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_72

    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_17

    goto :goto_72

    .line 538
    :cond_17
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 539
    .local v4, "callingUserId":I
    if-ne v4, p1, :cond_22

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v2

    return v2

    .line 542
    :cond_22
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v5

    .line 543
    .local v5, "callingUserParentId":I
    if-ne v5, v1, :cond_2d

    if-eq p1, v3, :cond_2c

    if-ne p1, v2, :cond_2d

    .line 545
    :cond_2c
    return v1

    .line 547
    :cond_2d
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_67

    .line 548
    const-string v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_67

    .line 549
    :cond_3e
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call from user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " as user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 553
    :cond_67
    :goto_67
    if-eq p1, v3, :cond_71

    if-ne p1, v2, :cond_6c

    goto :goto_71

    .line 557
    :cond_6c
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v2

    return v2

    .line 555
    :cond_71
    :goto_71
    return v1

    .line 532
    .end local v4    # "callingUserId":I
    .end local v5    # "callingUserParentId":I
    :cond_72
    :goto_72
    if-eq p1, v3, :cond_7c

    if-ne p1, v2, :cond_77

    goto :goto_7c

    .line 536
    :cond_77
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v2

    return v2

    .line 534
    :cond_7c
    :goto_7c
    return v1
.end method

.method public resolveProfileParentLocked(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 503
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq p1, v0, :cond_29

    .line 504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 506
    .local v0, "identity":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 507
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_20

    .line 508
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    return v3

    .line 511
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :cond_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    goto :goto_29

    .line 511
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    throw v2

    .line 514
    .end local v0    # "identity":J
    :cond_29
    :goto_29
    return p1
.end method

.method public resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/CharSequence;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "pid"    # I

    .line 213
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 214
    return-object v0

    .line 217
    :cond_4
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_d

    .line 218
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "packageNameStr":Ljava/lang/String;
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 223
    .local v2, "resolvedUid":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isValidPackageForUid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 224
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_20
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz v3, :cond_33

    .line 228
    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 227
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 229
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :cond_33
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACT_AS_PACKAGE_FOR_ACCESSIBILITY"

    invoke-virtual {v3, v4, p4, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_42

    .line 234
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :cond_42
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "packageNames":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 239
    return-object v0

    .line 248
    :cond_4f
    const/4 v0, 0x0

    aget-object v0, v3, v0

    return-object v0
.end method

.method public setAccessibilityWindowManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .registers 2
    .param p1, "awm"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 147
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 148
    return-void
.end method

.method public setAppWidgetManager(Landroid/appwidget/AppWidgetManagerInternal;)V
    .registers 2
    .param p1, "appWidgetManager"    # Landroid/appwidget/AppWidgetManagerInternal;

    .line 154
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    .line 155
    return-void
.end method

.method public setSendingNonA11yToolNotificationLocked(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 128
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    if-ne p1, v0, :cond_5

    .line 129
    return-void

    .line 132
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 133
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/PolicyWarningUIController;->enableSendingNonA11yToolNotification(Z)V

    .line 134
    if-eqz p1, :cond_29

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 136
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 137
    .local v1, "service":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceBound(ILandroid/content/ComponentName;)V

    .line 135
    .end local v1    # "service":Landroid/content/ComponentName;
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 140
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 292
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x43b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 295
    :cond_e
    return-void
.end method
