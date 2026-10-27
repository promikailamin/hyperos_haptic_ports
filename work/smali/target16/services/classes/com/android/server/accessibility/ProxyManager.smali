.class public Lcom/android/server/accessibility/ProxyManager;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

.field public final mContext:Landroid/content/Context;

.field public final mLastStates:Landroid/util/SparseIntArray;

.field public mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mProxyA11yServiceConnections:Landroid/util/SparseArray;

.field public final mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

.field public final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field public mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# direct methods
.method public static synthetic $r8$lambda$-IG3KJG4NAnSHo7vTbNqt8lLdf0(Lcom/android/server/accessibility/ProxyManager;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleUpdateProxyClientsIfNeededLocked$5(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$-k1KYsNfFQwHFE-WgQHWebfbZKE(IILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 4

    .line 654
    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v0, p0, :cond_9

    .line 655
    iget-object p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$4889UMx4BwcOP2mn_3XT61FNJx8(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 4

    .line 699
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 700
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 701
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusStrokeWidthLocked()I

    move-result v0

    .line 702
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusColorLocked()I

    move-result p0

    .line 700
    invoke-interface {p1, v0, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setFocusAppearance(II)V

    :cond_15
    return-void
.end method

.method public static synthetic $r8$lambda$ARuf4bebvJtnAOQNXBE4M3klZZo(Lcom/android/server/accessibility/ProxyManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$registerProxy$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Evntl20xHkhr9UkqX_KSm1VP_P0(Lcom/android/server/accessibility/ProxyManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateStateForRemovedDisplay$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIJvOkJvQmQGxiAVHXSyRN0e5TQ(Lcom/android/server/accessibility/ProxyManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateRelevantEventTypesLocked$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wqxx1GMj-YLb_sLxv-SFzxge_p0(Lcom/android/server/accessibility/ProxyManager;ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateRelevantEventTypesLocked$2(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hvV7l-GlfbePw44K3v-S1WYuvGQ(Lcom/android/server/accessibility/ProxyManager;ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$6(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lBgkTcbhMqv5cu7EXZFka15VWvY(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateFocusAppearanceLocked$9(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yCYjlygi7UCzGu8H1p3QlcK2IPQ(Lcom/android/server/accessibility/ProxyManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$7(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearConnectionAndUpdateState(Lcom/android/server/accessibility/ProxyManager;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 71
    const-string v0, "ProxyManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/accessibility/UiAutomationManager;Lcom/android/server/accessibility/ProxyManager$SystemSupport;)V
    .registers 8

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 142
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 143
    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 144
    iput-object p3, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 145
    iput-object p4, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 146
    iput-object p5, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 147
    iput-object p6, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 148
    const-class p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method


# virtual methods
.method public addServiceInterfacesLocked(Ljava/util/List;I)V
    .registers 6

    const/4 v0, 0x0

    .line 535
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 536
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 537
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v1, :cond_24

    .line 538
    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    if-ne v2, p2, :cond_24

    .line 539
    iget-object v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    .line 540
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v2, :cond_24

    if-eqz v1, :cond_24

    .line 542
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public final broadcastToClientsLocked(Ljava/util/function/Consumer;)V
    .registers 3

    .line 722
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 723
    invoke-interface {v0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 724
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 725
    invoke-interface {p0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getGlobalClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object p0

    .line 726
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 727
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 398
    :goto_2
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 399
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 400
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 401
    iget-boolean v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    goto :goto_1b

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 406
    :cond_1b
    :goto_1b
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_35

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At least one proxy can retrieve windows: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ProxyManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return v0
.end method

.method public clearCacheLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 896
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 897
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 898
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 899
    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final clearConnectionAndUpdateState(I)Z
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 286
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 289
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_2a

    .line 290
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->unregisterVirtualDeviceListener()V

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_57

    :cond_2a
    :goto_2a
    const/4 v2, 0x1

    goto :goto_2e

    :cond_2c
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 293
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_28

    if-eqz v2, :cond_34

    .line 296
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager;->updateStateForRemovedDisplay(II)V

    .line 299
    :cond_34
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_56

    .line 300
    const-string p0, "ProxyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistered proxy for display id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return v2

    .line 293
    :goto_57
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_28

    throw p0
.end method

.method public clearConnections(I)V
    .registers 8

    .line 252
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 254
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 255
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 256
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_2c

    .line 257
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v5

    if-ne v5, p1, :cond_2c

    .line 258
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDisplayId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_41

    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 261
    :cond_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2a

    .line 262
    :goto_30
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_40

    .line 263
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_40
    return-void

    .line 261
    :goto_41
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_2a

    throw p0
.end method

.method public computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 510
    :goto_3
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3a

    .line 511
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 512
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_37

    .line 513
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v4, v5, :cond_37

    .line 514
    invoke-virtual {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result v3

    or-int/2addr v2, v3

    .line 515
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 516
    invoke-virtual {v3}, Lcom/android/server/accessibility/UiAutomationManager;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 515
    invoke-static {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 517
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v3}, Lcom/android/server/accessibility/UiAutomationManager;->getRelevantEventTypes()I

    move-result v3

    goto :goto_36

    :cond_35
    move v3, v0

    :goto_36
    or-int/2addr v2, v3

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 521
    :cond_3a
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_62

    .line 522
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Relevant event types for device id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 522
    const-string p1, "ProxyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 930
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 932
    const-string v1, "Proxy manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Number of proxy connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    const-string v1, "    Registered proxy connections:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 936
    invoke-interface {v1}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 937
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 938
    invoke-interface {v2}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getGlobalClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v2

    const/4 v3, 0x0

    .line 939
    :goto_37
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_70

    .line 940
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 941
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_4f

    .line 943
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_4f

    :catchall_4d
    move-exception p0

    goto :goto_72

    .line 945
    :cond_4f
    :goto_4f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 946
    const-string v5, "        User clients for proxy\'s virtual device id"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v5

    invoke-virtual {p0, p2, v1, v5}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    .line 948
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 949
    const-string v5, "        Global clients for proxy\'s virtual device id"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    invoke-virtual {p0, p2, v2, v4}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 953
    :cond_70
    monitor-exit v0

    return-void

    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_4d

    throw p0
.end method

.method public getFirstDeviceIdForUidLocked(I)I
    .registers 4

    .line 810
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_8

    goto :goto_2d

    .line 814
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object p0

    .line 815
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 816
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_10

    .line 817
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2d
    :goto_2d
    return v0
.end method

.method public final getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;
    .registers 5

    const/4 v0, 0x0

    .line 710
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 711
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 712
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v1, :cond_1a

    .line 713
    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFocusColorLocked(I)I
    .registers 2

    .line 796
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 798
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusColorLocked()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getFocusStrokeWidthLocked(I)I
    .registers 2

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 786
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusStrokeWidthLocked()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getInstalledAndEnabledServiceInfosLocked(II)Ljava/util/List;
    .registers 8

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 556
    :goto_6
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 557
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 558
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v2, :cond_4b

    .line 559
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v3

    if-ne v3, p2, :cond_4b

    const/4 v3, -0x1

    if-ne p1, v3, :cond_29

    .line 562
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4b

    .line 563
    :cond_29
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_4b

    .line 565
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v2

    .line 567
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 568
    iget v4, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_36

    .line 569
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4e
    return-object v0
.end method

.method public final getLastSentStateLocked(I)I
    .registers 3

    .line 466
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .registers 2

    .line 914
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_e

    .line 915
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 917
    :cond_e
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public getRecommendedTimeoutMillisLocked(I)J
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 763
    :goto_3
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 764
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 765
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_2b

    .line 766
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    if-ne v4, p1, :cond_2b

    .line 768
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInteractiveTimeout()I

    move-result v4

    .line 770
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getNonInteractiveTimeout()I

    move-result v3

    .line 771
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 773
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 777
    :cond_2e
    invoke-static {v1, v2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getStateForDisplayIdLocked(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)I
    .registers 6

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 447
    iget-boolean p1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x3

    goto :goto_d

    :cond_a
    move p1, p0

    goto :goto_d

    :cond_c
    move p1, v0

    .line 452
    :goto_d
    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v1, :cond_48

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility is enabled for all proxies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_21

    move v2, p0

    goto :goto_22

    :cond_21
    move v2, v0

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProxyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Touch exploration is enabled for all proxies: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move p0, v0

    :goto_3e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return p1
.end method

.method public getStateLocked(I)I
    .registers 7

    .line 417
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canIntrospect()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 421
    :goto_8
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 422
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 423
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_25

    .line 424
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    if-ne v4, p1, :cond_25

    .line 426
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/ProxyManager;->getStateForDisplayIdLocked(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)I

    move-result v3

    or-int/2addr v0, v3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 430
    :cond_28
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_71

    .line 431
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For device id "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " a11y is enabled: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_45

    move v3, v4

    goto :goto_46

    :cond_45
    move v3, v1

    :goto_46
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "ProxyManager"

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " touch exploration is enabled: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_67

    move v1, v4

    :cond_67
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    return v0
.end method

.method public isProxyedDeviceId(I)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    goto :goto_38

    .line 368
    :cond_7
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    .line 370
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_35

    .line 371
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_34

    .line 372
    const-string p0, "ProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return v0

    :catchall_35
    move-exception p0

    .line 370
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    :goto_38
    return v0
.end method

.method public isProxyedDisplay(I)Z
    .registers 6

    .line 351
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    .line 353
    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v1, :cond_2e

    .line 354
    const-string v1, "ProxyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking proxy display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 356
    :cond_2e
    :goto_2e
    monitor-exit v0

    return p0

    .line 357
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2c

    throw p0
.end method

.method public final synthetic lambda$registerProxy$0(I)V
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_7

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplayIfInstalled(I)V

    :cond_7
    return-void
.end method

.method public final synthetic lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$6(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 4

    .line 675
    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v0, p1, :cond_15

    .line 676
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_7
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getRecommendedTimeoutMillisLocked(I)J

    move-result-wide p0

    .line 677
    invoke-interface {p2, p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    .line 679
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    return-void
.end method

.method public final synthetic lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$7(I)V
    .registers 3

    .line 674
    new-instance v0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$scheduleUpdateProxyClientsIfNeededLocked$5(II)V
    .registers 5

    .line 652
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_3
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;-><init>(II)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 658
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final synthetic lambda$updateFocusAppearanceLocked$9(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .registers 3

    .line 698
    new-instance v0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$updateRelevantEventTypesLocked$2(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 4

    .line 493
    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v0, p1, :cond_13

    .line 494
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/ProxyManager;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p0

    .line 495
    iget p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    if-eq p1, p0, :cond_13

    .line 496
    iput p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 497
    iget-object p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    :cond_13
    return-void
.end method

.method public final synthetic lambda$updateRelevantEventTypesLocked$3(I)V
    .registers 4

    .line 490
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_3
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 501
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final synthetic lambda$updateStateForRemovedDisplay$1(I)V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v0, :cond_19

    .line 316
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 318
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 321
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplayIfInstalled(Landroid/view/Display;)V

    :cond_19
    return-void
.end method

.method public notifyProxyOfRunningAppsChange(ILandroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 873
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 874
    const-string v0, "ProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyProxyOfRunningAppsChange: deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " runningUids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_23
    iget-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    move v1, v0

    .line 879
    :goto_28
    :try_start_28
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_48

    .line 880
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v2, :cond_45

    .line 881
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    if-ne p1, v2, :cond_45

    move v0, v3

    goto :goto_48

    :catchall_43
    move-exception p0

    goto :goto_4f

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 886
    :cond_48
    :goto_48
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_43

    if-eqz v0, :cond_4e

    .line 888
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    :cond_4e
    return-void

    .line 886
    :goto_4f
    :try_start_4f
    monitor-exit p2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_43

    throw p0
.end method

.method public onProxyChanged(I)V
    .registers 3

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    return-void
.end method

.method public final onProxyChanged(IZ)V
    .registers 6

    .line 605
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 606
    const-string v0, "ProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProxyChanged called for deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(I)V

    .line 618
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->updateWindowsForAccessibilityCallbackLocked()V

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->updateRelevantEventTypesLocked(I)V

    .line 622
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->scheduleUpdateProxyClientsIfNeededLocked(IZ)V

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    .line 626
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->updateFocusAppearanceLocked(I)V

    .line 627
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->notifyClearAccessibilityCacheLocked()V

    .line 628
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V
    .registers 7

    if-eqz p2, :cond_35

    const/4 p0, 0x0

    .line 959
    :goto_3
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-ge p0, v0, :cond_35

    .line 962
    invoke-virtual {p2, p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 963
    iget v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v1, p3, :cond_32

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_35
    return-void
.end method

.method public registerProxy(Landroid/accessibilityservice/IAccessibilityServiceClient;IILcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    .line 159
    sget-boolean v2, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 160
    const-string v2, "ProxyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register proxy for display id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_20
    iget-object v2, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v2, :cond_2d

    return-void

    .line 167
    :cond_2d
    invoke-virtual {v2, v14}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v15

    .line 171
    new-instance v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    const/4 v2, 0x3

    .line 172
    invoke-virtual {v5, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxyClass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "ProxyPackage"

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 177
    new-instance v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    move/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v2 .. v15}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager;II)V

    .line 183
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_73
    iget-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    iget-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    if-nez v4, :cond_91

    .line 186
    new-instance v4, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    iput-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    .line 187
    invoke-virtual {v0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v4

    if-eqz v4, :cond_91

    .line 189
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    invoke-virtual {v4, v5}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->registerAppsOnVirtualDeviceListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;)V

    goto :goto_91

    :catchall_8f
    move-exception v0

    goto :goto_b9

    .line 192
    :cond_91
    :goto_91
    iget-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9d

    .line 193
    invoke-virtual {v0}, Lcom/android/server/accessibility/ProxyManager;->registerVirtualDeviceListener()V

    .line 195
    :cond_9d
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_73 .. :try_end_9e} :catchall_8f

    .line 198
    new-instance v3, Lcom/android/server/accessibility/ProxyManager$1;

    invoke-direct {v3, v0, v1, v14}, Lcom/android/server/accessibility/ProxyManager$1;-><init>(Lcom/android/server/accessibility/ProxyManager;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 206
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 208
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v14}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->initializeClient(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    return-void

    .line 195
    :goto_b9
    :try_start_b9
    monitor-exit v3
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_8f

    throw v0
.end method

.method public final registerVirtualDeviceListener()V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_d

    return-void

    .line 221
    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    if-nez v1, :cond_18

    .line 222
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/ProxyManager$2;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 230
    :cond_18
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-virtual {v0, v1, p0}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    return-void
.end method

.method public final scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V
    .registers 4

    .line 670
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify services state change at device id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_1a
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleUpdateProxyClientsIfNeededLocked(IZ)V
    .registers 8

    .line 642
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    move-result v0

    .line 643
    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v1, :cond_58

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State for device id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProxyManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last state for device id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getLastSentStateLocked(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_58
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getLastSentStateLocked(I)I

    move-result v1

    if-ne v1, v0, :cond_62

    if-eqz p2, :cond_61

    goto :goto_62

    :cond_61
    return-void

    .line 650
    :cond_62
    :goto_62
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager;->setLastStateLocked(II)V

    .line 651
    iget-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 381
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 382
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz p0, :cond_37

    .line 384
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send proxy event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for display id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_37
    return-void
.end method

.method public setAccessibilityInputFilter(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .registers 4

    .line 907
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set proxy input filter to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_1a
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-void
.end method

.method public final setLastStateLocked(II)V
    .registers 3

    .line 473
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public setLocalVirtualDeviceManager(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;)V
    .registers 2

    .line 922
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method

.method public unregisterProxy(I)Z
    .registers 2

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    move-result p0

    return p0
.end method

.method public final unregisterVirtualDeviceListener()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_d

    return-void

    .line 238
    :cond_d
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-virtual {v0, p0}, Landroid/companion/virtual/VirtualDeviceManager;->unregisterVirtualDeviceListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    return-void
.end method

.method public final updateDeviceIdsIfNeededLocked(I)V
    .registers 4

    .line 828
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 829
    invoke-interface {v0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 830
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 831
    invoke-interface {v1}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getGlobalClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 833
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    .line 834
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public final updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V
    .registers 10

    .line 842
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    if-nez p0, :cond_8

    goto/16 :goto_88

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    .line 847
    :goto_a
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-ge v1, v2, :cond_88

    .line 849
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    if-eqz p1, :cond_85

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1c

    goto :goto_85

    .line 853
    :cond_1c
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    .line 854
    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 855
    iget v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    const-string v5, " are "

    const-string v6, "ProxyManager"

    if-eq v4, p1, :cond_5b

    if-eqz v3, :cond_5b

    .line 856
    sget-boolean v3, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v3, :cond_58

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Packages moved to device id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 858
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 857
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_58
    iput p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    goto :goto_85

    :cond_5b
    if-ne v4, p1, :cond_85

    if-nez v3, :cond_85

    .line 862
    iput v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 863
    sget-boolean v3, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v3, :cond_85

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Packages moved to the default device from device id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 865
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    :goto_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_88
    :goto_88
    return-void
.end method

.method public final updateFocusAppearanceLocked(I)V
    .registers 4

    .line 689
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update proxy focus appearance at device id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 697
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    return-void
.end method

.method public final updateRelevantEventTypesLocked(I)V
    .registers 4

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 489
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateStateForRemovedDisplay(II)V
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingDisplayProxy(I)V

    .line 313
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p1

    if-nez p1, :cond_41

    .line 329
    iget-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 330
    :try_start_18
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_33

    .line 331
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 332
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    if-eqz v1, :cond_33

    .line 333
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->unregisterAppsOnVirtualDeviceListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;)V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_3f

    .line 338
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    invoke-interface {v0, p2}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->removeDeviceIdLocked(I)V

    .line 339
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 340
    monitor-exit p1

    return-void

    :goto_3f
    monitor-exit p1
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_31

    throw p0

    .line 343
    :cond_41
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(I)V

    return-void
.end method

.method public updateTimeoutsIfNeeded(II)V
    .registers 7

    .line 742
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 743
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 744
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 745
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v2, :cond_26

    .line 747
    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->updateTimeouts(II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 748
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_2b

    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 752
    :cond_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_24

    throw p0
.end method
