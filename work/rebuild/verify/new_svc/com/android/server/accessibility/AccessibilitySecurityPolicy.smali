.class public Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilitySecurityPolicy.java"


# static fields
.field public static final OWN_PROCESS_ID:I


# instance fields
.field public final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field public mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mNonA11yCategoryServices:Landroid/util/ArraySet;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

.field public mSendNonA11yToolNotificationEnabled:Z

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/PolicyWarningUIController;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Landroid/content/pm/PackageManagerInternal;)V
    .registers 6

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    const/16 v0, -0x2710

    .line 115
    iput v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 125
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 126
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 127
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 128
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 129
    const-string/jumbo p3, "user"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    .line 130
    const-string p3, "appops"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 131
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    return-void
.end method


# virtual methods
.method public canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 2

    .line 381
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 2

    .line 357
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public canDispatchAccessibilityEventLocked(ILandroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 178
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_12

    .line 206
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    move-result p0

    return p0

    :sswitch_10
    const/4 p0, 0x1

    return p0

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

.method public canEnableDisableInputMethod(Ljava/lang/String;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)I
    .registers 7

    .line 410
    invoke-virtual {p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 414
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 417
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    if-eqz v1, :cond_4a

    .line 425
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 432
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 433
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-static {p0, p1, p3}, Lcom/android/server/accessibility/RestrictedLockUtilsInternal;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_48

    const/4 p0, 0x1

    return p0

    :cond_48
    const/4 p0, 0x0

    return p0

    .line 426
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The input method is in a different package with the accessibility service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z
    .registers 4

    .line 319
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 320
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 2

    .line 369
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public canRegisterService(Landroid/content/pm/ServiceInfo;)Z
    .registers 13

    .line 611
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Skipping accessibility service "

    const-string v4, "AccessibilitySecurityPolicy"

    if-nez v0, :cond_37

    .line 613
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": it does not require the permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 613
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 620
    :cond_37
    iget v0, p1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_62

    .line 621
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": the service is the external one and doesn\'t allow to register as an accessibility service "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 621
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 628
    :cond_62
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 629
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v6, "android:bind_accessibility_service"

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_99

    .line 632
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": disallowed by AppOps"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 632
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_99
    const/4 p0, 0x1

    return p0
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 2

    .line 344
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    return p1

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 2

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    if-eqz p0, :cond_c

    iget-boolean p0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public canTakeScreenshotLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 2

    .line 394
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 13

    .line 648
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v7, 0x1

    if-nez v0, :cond_14

    return v7

    .line 656
    :cond_14
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 657
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 658
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 659
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 662
    :try_start_26
    sget p1, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    const/4 v10, 0x0

    if-ne p1, v0, :cond_3f

    .line 663
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v2, "android:access_accessibility"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_3c

    if-nez p0, :cond_37

    goto :goto_38

    :cond_37
    move v7, v10

    .line 672
    :goto_38
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_50

    .line 668
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v2, "android:access_accessibility"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_3c

    if-nez p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v7, v10

    .line 672
    :goto_4c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :goto_50
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    throw p0
.end method

.method public checkForAccessibilityPermissionOrDisplayOwnership(I)V
    .registers 4

    .line 705
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    .line 706
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 711
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->displayBelongsToCaller(II)Z

    move-result p0

    if-eqz p0, :cond_16

    return-void

    .line 712
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to the caller."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    .line 273
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 275
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 278
    :cond_b
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 280
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz p0, :cond_3e

    .line 282
    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 283
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3e

    .line 285
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 286
    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    :goto_2f
    if-ge v1, p1, :cond_3d

    add-int v2, v0, v1

    .line 289
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p2, v2

    move v1, v2

    goto :goto_2f

    :cond_3d
    return-object p2

    :cond_3e
    return-object p1
.end method

.method public final displayBelongsToCaller(II)Z
    .registers 4

    .line 691
    const-class p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 696
    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdForDisplayId(I)I

    move-result p2

    .line 697
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result p0

    if-ne p1, p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 601
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 4

    .line 521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 522
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1b

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_1b

    const/4 p0, -0x2

    if-eq p1, p0, :cond_1b

    const/4 p0, -0x3

    if-ne p1, p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public final isRetrievalAllowingWindowLocked(II)Z
    .registers 7

    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    return v2

    .line 546
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1a

    .line 547
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isShellAllowedToRetrieveWindowLocked(II)Z

    move-result v0

    if-nez v0, :cond_1a

    return v3

    .line 551
    :cond_1a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 552
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result p1

    if-ne v0, p1, :cond_29

    return v2

    .line 555
    :cond_29
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    if-eqz p0, :cond_32

    return v2

    :cond_32
    return v3
.end method

.method public final isShellAllowedToRetrieveWindowLocked(II)Z
    .registers 6

    .line 559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 561
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 562
    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_32

    const/4 p2, 0x0

    if-nez p1, :cond_11

    .line 573
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    .line 566
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_32

    const/16 v2, -0x2710

    if-ne p1, v2, :cond_1f

    .line 573
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    .line 570
    :cond_1f
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo p2, "no_debugging_features"

    .line 571
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 570
    invoke-virtual {p0, p2, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_32

    xor-int/lit8 p0, p0, 0x1

    .line 573
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 574
    throw p0
.end method

.method public isValidPackageForUid(Ljava/lang/String;I)Z
    .registers 12

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 534
    :try_start_4
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 535
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-wide/32 v5, 0x400000

    move-object v4, p1

    move v7, p2

    .line 534
    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;JII)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 537
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    throw p0
.end method

.method public onBoundServicesChangedLocked(ILjava/util/ArrayList;)V
    .registers 8

    .line 726
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq v0, p1, :cond_9

    return-void

    .line 730
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 731
    :goto_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 732
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 733
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 734
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v4

    .line 735
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result v3

    if-nez v3, :cond_48

    .line 736
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 738
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_48

    .line 740
    :cond_3f
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    if-eqz v3, :cond_48

    .line 741
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceBound(ILandroid/content/ComponentName;)V

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 747
    :cond_4b
    :goto_4b
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v1, p2, :cond_63

    .line 748
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    .line 749
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceUnbound(ILandroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 751
    :cond_63
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 752
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method public onEnabledServicesChangedLocked(ILjava/util/Set;)V
    .registers 4

    .line 784
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq v0, p1, :cond_9

    return-void

    .line 787
    :cond_9
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/PolicyWarningUIController;->onEnabledServicesChanged(ILjava/util/Set;)V

    return-void
.end method

.method public onSwitchUserLocked(ILjava/util/Set;)V
    .registers 6

    .line 763
    iget v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    if-ne v0, p1, :cond_5

    return-void

    .line 766
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/PolicyWarningUIController;->onSwitchUser(ILjava/util/Set;)V

    const/4 p2, 0x0

    .line 769
    :goto_10
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge p2, v0, :cond_2a

    .line 770
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 771
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 770
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceUnbound(ILandroid/content/ComponentName;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    .line 773
    :cond_2a
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 774
    iput p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    return-void
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 7

    .line 481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v1

    const/4 v2, -0x3

    const/4 v3, -0x2

    if-eqz v0, :cond_6c

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_6c

    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_17

    goto :goto_6c

    .line 492
    :cond_17
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_22

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p0

    return p0

    .line 496
    :cond_22
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v4

    if-ne v4, v1, :cond_2d

    if-eq p1, v3, :cond_76

    if-ne p1, v2, :cond_2d

    goto :goto_76

    .line 501
    :cond_2d
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 502
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_62

    .line 503
    :cond_3e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as user "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    :goto_62
    if-eq p1, v3, :cond_76

    if-ne p1, v2, :cond_67

    goto :goto_76

    .line 511
    :cond_67
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p0

    return p0

    :cond_6c
    :goto_6c
    if-eq p1, v3, :cond_76

    if-ne p1, v2, :cond_71

    goto :goto_76

    .line 490
    :cond_71
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p0

    return p0

    :cond_76
    :goto_76
    return v1
.end method

.method public resolveProfileParentLocked(I)I
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq p1, v0, :cond_42

    .line 452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 455
    :try_start_c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 456
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSupervisingProfile()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 457
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result p0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_24

    .line 465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_24
    move-exception p0

    goto :goto_3e

    .line 460
    :cond_26
    :try_start_26
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 462
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_24

    .line 465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw p0

    :cond_42
    return p1
.end method

.method public resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_d

    .line 229
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 232
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 234
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isValidPackageForUid(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 235
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 238
    :cond_20
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz p3, :cond_33

    .line 239
    invoke-virtual {p3, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object p3

    .line 238
    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_33

    .line 240
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :cond_33
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACT_AS_PACKAGE_FOR_ACCESSIBILITY"

    invoke-virtual {p3, v1, p4, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_42

    .line 245
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_42
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    return-object v0

    :cond_4f
    const/4 p1, 0x0

    .line 259
    aget-object p0, p0, p1

    return-object p0
.end method

.method public setAccessibilityWindowManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    return-void
.end method

.method public setAppWidgetManager(Landroid/appwidget/AppWidgetManagerInternal;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    return-void
.end method

.method public setSendingNonA11yToolNotificationLocked(Z)V
    .registers 5

    .line 139
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    if-ne p1, v0, :cond_5

    goto :goto_29

    .line 143
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 144
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/PolicyWarningUIController;->enableSendingNonA11yToolNotification(Z)V

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    .line 146
    :goto_f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge p1, v0, :cond_29

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 148
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceBound(ILandroid/content/ComponentName;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_29
    :goto_29
    return-void
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 303
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p0

    const v0, 0x443b9bf

    and-int/2addr p0, v0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 304
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    :cond_e
    return-void
.end method
