.class public Lcom/android/server/inputmethod/InputMethodBindingController$2;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodBindingController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 384
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 385
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 386
    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    .line 390
    const-string v0, "IMMS.onServiceConnected"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 391
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 392
    :try_start_a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_db

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 393
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethod;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->create(Lcom/android/internal/inputmethod/IInputMethod;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/IInputMethodInvoker;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;->updateCurrentMethodUid()V

    .line 395
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_50

    .line 396
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Service connected without a token!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 398
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 399
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p0

    goto/16 :goto_fa

    .line 402
    :cond_50
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result p1

    .line 403
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmSelectedMethodId(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    .line 405
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z

    move-result p2

    .line 406
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result v3

    if-eq p2, v3, :cond_76

    const/4 p2, 0x1

    goto :goto_77

    :cond_76
    const/4 p2, 0x0

    .line 407
    :goto_77
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V

    if-eqz p2, :cond_85

    .line 409
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    .line 411
    :cond_85
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmSupportsConnectionlessStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z

    move-result p2

    .line 413
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result v3

    if-eq p2, v3, :cond_9d

    .line 415
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 416
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmSupportsConnectionlessStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V

    .line 418
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    .line 420
    :cond_9d
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 422
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 423
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reRequestCurrentClientSessionLocked(I)V

    .line 424
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmAutofillController(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/AutofillSuggestionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->performOnCreateInlineSuggestionsRequest()V

    .line 430
    :cond_db
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 431
    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_a .. :try_end_e5} :catchall_4d

    .line 432
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 434
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmLatchForTesting(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_f9

    .line 435
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmLatchForTesting(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_f9
    return-void

    .line 431
    :goto_fa
    :try_start_fa
    monitor-exit v0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_4d

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 465
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 473
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmLastBindTime(Lcom/android/server/inputmethod/InputMethodBindingController;J)V

    .line 474
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$mclearCurMethodAndSessions(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 475
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 476
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setInputShown(Z)V

    .line 477
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result p0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    goto :goto_5a

    :catchall_58
    move-exception p0

    goto :goto_5c

    .line 479
    :cond_5a
    :goto_5a
    monitor-exit v0

    return-void

    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_58

    throw p0
.end method

.method public final updateCurrentMethodUid()V
    .registers 6

    .line 441
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_41

    .line 445
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get UID for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V

    return-void

    .line 448
    :cond_41
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V

    return-void
.end method
