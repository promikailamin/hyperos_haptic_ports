.class public Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "UiAutomationManager.java"


# instance fields
.field public final mMainHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method public static synthetic $r8$lambda$EBbVjiQaLueOGoICPHv_0YkCzl4(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->lambda$connectServiceUnknownThread$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .registers 13

    .line 254
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    move-object p1, p2

    .line 255
    invoke-static {}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$sfgetCOMPONENT_NAME()Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct/range {p0 .. p12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    .line 258
    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 260
    :goto_17
    sget-boolean p2, Landroid/os/Build;->IS_USERDEBUG:Z

    const-string p3, "UiAutomationService must use the main handler"

    if-nez p2, :cond_2a

    sget-boolean p2, Landroid/os/Build;->IS_ENG:Z

    if-eqz p2, :cond_22

    goto :goto_2a

    :cond_22
    if-nez p1, :cond_2d

    .line 263
    const-string p1, "UiAutomationManager"

    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 261
    :cond_2a
    :goto_2a
    invoke-static {p1, p3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 265
    :cond_2d
    :goto_2d
    iput-object p5, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDisplayTypes(I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {p0}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$mdestroyUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)V

    return-void
.end method

.method public connectServiceUnknownThread()V
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disableSelf()V
    .registers 1

    .line 0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 334
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string p3, "UiAutomationManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 335
    :cond_b
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 336
    :try_start_e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ui Automation[eventTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 337
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 336
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 338
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", notificationTimeout="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 339
    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 340
    monitor-exit p1

    return-void

    :catchall_45
    move-exception p0

    monitor-exit p1
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_45

    throw p0
.end method

.method public getSoftKeyboardShowMode()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public hasRightsToCurrentUserLocked()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isAccessibilityButtonAvailable()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isCapturingFingerprintGestures()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$connectServiceUnknownThread$0()V
    .registers 9

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_64

    .line 277
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 278
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v2}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$fgetmUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_14

    const/4 v4, 0x0

    .line 280
    iput-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    goto :goto_1f

    :catchall_12
    move-exception v1

    goto :goto_74

    .line 282
    :cond_14
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v4}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    .line 283
    invoke-interface {v4, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 285
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_12

    if-eqz v1, :cond_73

    if-eqz v2, :cond_73

    .line 289
    :try_start_24
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->addWindowTokensForAllDisplays()V

    .line 290
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v4, 0x2

    invoke-interface {v0, v4, v5}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 292
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-string v2, "UiAutomationService.connectServiceUnknownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "serviceConnection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ";connectionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "windowToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 300
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 292
    invoke-interface {v0, v2, v4, v5, v6}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_66

    :catch_64
    move-exception v0

    goto :goto_76

    .line 303
    :cond_66
    :goto_66
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 306
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 303
    invoke-interface {v1, p0, v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_73} :catch_64

    :cond_73
    return-void

    .line 285
    :goto_74
    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_12

    :try_start_75
    throw v1
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_76} :catch_64

    .line 309
    :goto_76
    const-string v1, "UiAutomationManager"

    const-string v2, "Error initializing connection"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {p0}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$mdestroyUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)V

    return-void
.end method

.method public onFingerprintGesture(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)I
    .registers 3

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public setSoftKeyboardShowMode(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public switchToInputMethod(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public takeScreenshot(ILandroid/os/RemoteCallback;)V
    .registers 3

    .line 0
    return-void
.end method
