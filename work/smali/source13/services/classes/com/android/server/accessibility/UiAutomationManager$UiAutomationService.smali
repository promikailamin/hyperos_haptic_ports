.class Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "UiAutomationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/UiAutomationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiAutomationService"
.end annotation


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .registers 27
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "id"    # I
    .param p5, "mainHandler"    # Landroid/os/Handler;
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .param p8, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "trace"    # Landroid/accessibilityservice/AccessibilityTrace;
    .param p10, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p11, "systemActionPerformer"    # Lcom/android/server/accessibility/SystemActionPerformer;
    .param p12, "awm"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 251
    move-object v13, p0

    move-object v0, p1

    iput-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 252
    invoke-static {}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$sfgetCOMPONENT_NAME()Landroid/content/ComponentName;

    move-result-object v2

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    .line 255
    move-object/from16 v0, p5

    iput-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    .line 256
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$mdestroyUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 296
    return-void
.end method

.method connectServiceUnknownThread()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method public disableSelf()V
    .registers 1

    .line 347
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mContext:Landroid/content/Context;

    const-string v1, "UiAutomationManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ui Automation[eventTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mEventTypes:I

    .line 314
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mNotificationTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 316
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 317
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public getSoftKeyboardShowMode()I
    .registers 2

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method protected hasRightsToCurrentUserLocked()Z
    .registers 2

    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public isAccessibilityButtonAvailable()Z
    .registers 2

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public isCapturingFingerprintGestures()Z
    .registers 2

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$connectServiceUnknownThread$0$com-android-server-accessibility-UiAutomationManager$UiAutomationService()V
    .registers 9

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_6f

    .line 264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 265
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 266
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mService:Landroid/os/IBinder;

    goto :goto_19

    .line 268
    :cond_c
    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mService:Landroid/os/IBinder;

    .line 269
    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mService:Landroid/os/IBinder;

    invoke-interface {v3, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 271
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_6c

    .line 274
    if-eqz v1, :cond_6b

    .line 275
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v3, 0x2

    invoke-interface {v0, v3, v4}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 277
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-string v5, "UiAutomationService.connectServiceUnknownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "serviceConnection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";connectionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "windowToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 281
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-interface {v0, v5, v3, v4, v6}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 283
    :cond_5e
    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mId:I

    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 284
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 283
    invoke-interface {v1, p0, v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_6b} :catch_6f

    .line 289
    .end local v1    # "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :cond_6b
    goto :goto_7c

    .line 271
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    .end local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :try_start_6e
    throw v1
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_6f} :catch_6f

    .line 286
    .restart local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :catch_6f
    move-exception v0

    .line 287
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UiAutomationManager"

    const-string v2, "Error initialized connection"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v1}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$mdestroyUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 290
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_7c
    return-void
.end method

.method public onFingerprintGesture(I)V
    .registers 2
    .param p1, "gesture"    # I

    .line 364
    return-void
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 361
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 350
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 353
    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)I
    .registers 4
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 338
    const/4 v0, 0x2

    return v0
.end method

.method public setSoftKeyboardShowMode(I)Z
    .registers 3
    .param p1, "mode"    # I

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public switchToInputMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "imeId"    # Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public takeScreenshot(ILandroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 367
    return-void
.end method
