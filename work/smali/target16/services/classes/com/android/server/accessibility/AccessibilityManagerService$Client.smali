.class public Lcom/android/server/accessibility/AccessibilityManagerService$Client;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# instance fields
.field public final mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

.field public mDeviceId:I

.field public mLastSentRelevantEventTypes:I

.field public final mPackageNames:[Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;I)V
    .registers 7

    .line 5967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5964
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 5968
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 5969
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 5970
    iput p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    .line 5971
    iput p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 5972
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 5973
    :try_start_1b
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmProxyManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/ProxyManager;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p3

    if-eqz p3, :cond_32

    .line 5974
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmProxyManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/ProxyManager;

    move-result-object p1

    .line 5975
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/ProxyManager;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    goto :goto_38

    :catchall_30
    move-exception p0

    goto :goto_3a

    .line 5977
    :cond_32
    invoke-static {p1, p4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mcomputeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 5979
    :goto_38
    monitor-exit p2

    return-void

    :goto_3a
    monitor-exit p2
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_30

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;ILcom/android/server/accessibility/AccessibilityManagerService-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;I)V

    return-void
.end method
