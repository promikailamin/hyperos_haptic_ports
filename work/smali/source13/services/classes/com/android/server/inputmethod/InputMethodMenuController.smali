.class final Lcom/android/server/inputmethod/InputMethodMenuController;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field private mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

.field private mImmsHandler:Landroid/os/Handler;

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastConfig:Landroid/content/res/Configuration;

.field private final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mShowImeWithHardKeyboard:Z

.field private mSubtypeIds:[I

.field private final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-class v0, Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 98
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImmsHandler:Landroid/os/Handler;

    .line 100
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 101
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 102
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    .line 103
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 104
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 106
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-static {v0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 116
    return-void
.end method

.method private isScreenLocked()Z
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 365
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 364
    :goto_15
    return v0
.end method


# virtual methods
.method getShowImeWithHardKeyboard()Z
    .registers 2

    .line 423
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    return v0
.end method

.method getSwitchingDialogLocked()Lmiuix/appcompat/app/AlertDialog;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object v0
.end method

.method handleHardKeyboardStatusChange(Z)V
    .registers 5
    .param p1, "available"    # Z

    .line 434
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 435
    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HardKeyboardStatusChanged: available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1c
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 438
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_3f

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v2, :cond_3f

    .line 439
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 440
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    const v2, 0x1020314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 442
    if-eqz p1, :cond_3a

    const/4 v2, 0x0

    goto :goto_3c

    :cond_3a
    const/16 v2, 0x8

    .line 441
    :goto_3c
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_3f
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_1f .. :try_end_43} :catchall_41

    throw v1
.end method

.method hideInputMethodMenu()V
    .registers 3

    .line 379
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 380
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImmsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImmsHandler:Landroid/os/Handler;

    .line 388
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 389
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImmsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void

    .line 397
    :cond_25
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    const-string v1, "Hide switching menu"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_30
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_5a

    .line 402
    sget-boolean v0, Landroid/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_3e

    .line 403
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_47

    .line 405
    :cond_3e
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-interface {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->dismissWithoutAnimation(Lmiuix/appcompat/app/AlertDialog;)V

    .line 408
    :goto_47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 409
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 411
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked()V

    .line 412
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 413
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 414
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 416
    :cond_5a
    return-void
.end method

.method isisInputMethodPickerShownForTestLocked()Z
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_6

    .line 428
    const/4 v0, 0x0

    return v0

    .line 430
    :cond_6
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$hideInputMethodMenuLocked$6$com-android-server-inputmethod-InputMethodMenuController()V
    .registers 3

    .line 390
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 391
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 392
    monitor-exit v0

    .line 393
    return-void

    .line 392
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$new$0$com-android-server-inputmethod-InputMethodMenuController(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 107
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mLastConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_f

    .line 108
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mLastConfig:Landroid/content/res/Configuration;

    .line 109
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_1f

    .line 110
    :cond_f
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1f

    .line 111
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 112
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 114
    :cond_1f
    :goto_1f
    return-void
.end method

.method synthetic lambda$showInputMethodMenu$1$com-android-server-inputmethod-InputMethodMenuController(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 189
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    return-void
.end method

.method synthetic lambda$showInputMethodMenu$2$com-android-server-inputmethod-InputMethodMenuController(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 216
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 220
    return-void
.end method

.method synthetic lambda$showInputMethodMenu$3$com-android-server-inputmethod-InputMethodMenuController(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "adapter"    # Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .param p2, "noCustomziedImeListAdapter"    # Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 248
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_51

    array-length v2, v1

    if-le v2, p4, :cond_51

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    if-eqz v2, :cond_51

    array-length v3, v2

    if-gt v3, p4, :cond_12

    goto :goto_51

    .line 253
    :cond_12
    aget-object v1, v1, p4

    .line 254
    .local v1, "im":Landroid/view/inputmethod/InputMethodInfo;
    aget v2, v2, p4

    .line 255
    .local v2, "subtypeId":I
    iput p4, p1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 256
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    .line 259
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->isSupportedCustomizedDialog()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz p2, :cond_2e

    .line 261
    const/4 v3, -0x1

    iput v3, p2, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 263
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    goto :goto_31

    .line 266
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 269
    :goto_31
    if-eqz v1, :cond_4f

    .line 270
    if-ltz v2, :cond_3b

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-lt v2, v3, :cond_3c

    .line 271
    :cond_3b
    const/4 v2, -0x1

    .line 275
    :cond_3c
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v3

    .line 276
    invoke-interface {v3}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->isSupportedCustomizedDialog()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 277
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 281
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "subtypeId":I
    :cond_4f
    monitor-exit v0

    .line 282
    return-void

    .line 251
    :cond_51
    :goto_51
    monitor-exit v0

    return-void

    .line 281
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method synthetic lambda$showInputMethodMenu$4$com-android-server-inputmethod-InputMethodMenuController([Landroid/view/inputmethod/InputMethodInfo;[ILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 23
    .param p1, "mNoCustomizedIms"    # [Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "mNoCustomizedSubtypeIds"    # [I
    .param p3, "adapter"    # Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .param p4, "noCustomziedImeListAdapter"    # Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .param p5, "dialogWindowContext"    # Landroid/content/Context;
    .param p6, "lastInputMethodId"    # Ljava/lang/String;
    .param p7, "imList"    # Ljava/util/List;
    .param p8, "dialog"    # Landroid/content/DialogInterface;
    .param p9, "which"    # I

    .line 294
    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 295
    :try_start_8
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_5c

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    if-eqz v0, :cond_5c

    if-eqz p1, :cond_5c

    if-nez p2, :cond_15

    goto :goto_5c

    .line 301
    :cond_15
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_27

    .line 303
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget v5, v2, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    aget-object v0, v0, v5

    .line 304
    .local v0, "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    iget v6, v2, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    aget v5, v5, v6

    .local v5, "subtypeId":I
    goto :goto_33

    .line 305
    .end local v0    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "subtypeId":I
    :cond_27
    iget v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    if-eq v0, v5, :cond_53

    .line 307
    iget v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    aget-object v0, p1, v0

    .line 308
    .restart local v0    # "im":Landroid/view/inputmethod/InputMethodInfo;
    iget v5, v3, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    aget v5, p2, v5

    .line 314
    .restart local v5    # "subtypeId":I
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 315
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 316
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v6

    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    .line 317
    move-object/from16 v7, p5

    move-object v8, v0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v6 .. v12}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->onSwitchIME(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/util/ArrayMap;)V

    .line 319
    .end local v0    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "subtypeId":I
    monitor-exit v4

    .line 320
    return-void

    .line 311
    :cond_53
    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    const-string v5, "The currently selected input method is abnormal."

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v4

    return-void

    .line 297
    :cond_5c
    :goto_5c
    monitor-exit v4

    return-void

    .line 319
    :catchall_5e
    move-exception v0

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_5e

    throw v0
.end method

.method synthetic lambda$showInputMethodMenu$5$com-android-server-inputmethod-InputMethodMenuController(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 323
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 324
    return-void
.end method

.method showInputMethodMenu(ZI)V
    .registers 38
    .param p1, "showAuxSubtypes"    # Z
    .param p2, "displayId"    # I

    .line 119
    move-object/from16 v10, p0

    move/from16 v11, p1

    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show switching menu. showAuxSubtypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isScreenLocked()Z

    move-result v12

    .line 123
    .local v12, "isScreenLocked":Z
    iget-object v0, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v13

    .line 124
    .local v13, "lastInputMethodId":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, "lastInputMethodSubtypeId":I
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current IME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_4c
    const-class v14, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v14

    .line 128
    :try_start_4f
    iget-object v0, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 129
    invoke-virtual {v0, v11, v12}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListForImeMenuLocked(ZZ)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 132
    monitor-exit v14

    return-void

    .line 137
    :cond_5d
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->filterNotCustomziedInputMethodList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v9, v2

    .line 140
    .local v9, "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 142
    const/4 v2, -0x1

    if-ne v1, v2, :cond_8e

    .line 143
    iget-object v3, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 144
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 145
    .local v3, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v3, :cond_8e

    .line 146
    iget-object v4, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "curMethodId":Ljava/lang/String;
    iget-object v5, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 148
    .local v5, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 149
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v6

    .line 148
    invoke-static {v5, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v6
    :try_end_8b
    .catchall {:try_start_4f .. :try_end_8b} :catchall_303

    move v1, v6

    move v8, v1

    goto :goto_8f

    .line 154
    .end local v3    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "curMethodId":Ljava/lang/String;
    .end local v5    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_8e
    move v8, v1

    .end local v1    # "lastInputMethodSubtypeId":I
    .local v8, "lastInputMethodSubtypeId":I
    :goto_8f
    :try_start_8f
    invoke-static {}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->getInstance()Lcom/android/server/inputmethod/MiuiInputMethodStub;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->removeMethod(Ljava/util/List;)V

    .line 155
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, v9, v13, v8, v2}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->initNoCustomizedInputMethodData(Ljava/util/List;Ljava/lang/String;II)V

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 160
    .local v1, "size":I
    new-array v3, v1, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v3, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 161
    new-array v3, v1, [I

    iput-object v3, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I
    :try_end_a9
    .catchall {:try_start_8f .. :try_end_a9} :catchall_2fd

    .line 164
    const/4 v3, -0x1

    .line 165
    .local v3, "checkedItem":I
    const/4 v4, 0x0

    move v15, v3

    .end local v3    # "checkedItem":I
    .local v4, "i":I
    .local v15, "checkedItem":I
    :goto_ac
    if-ge v4, v1, :cond_e3

    .line 166
    :try_start_ae
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 167
    .local v3, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v5, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v6, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v6, v5, v4

    .line 168
    iget-object v5, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    iget v6, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v6, v5, v4

    .line 169
    iget-object v5, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 170
    iget-object v5, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    aget v5, v5, v4
    :try_end_d2
    .catchall {:try_start_ae .. :try_end_d2} :catchall_df

    .line 171
    .local v5, "subtypeId":I
    if-eq v5, v2, :cond_da

    if-ne v8, v2, :cond_d8

    if-eqz v5, :cond_da

    :cond_d8
    if-ne v5, v8, :cond_dc

    .line 174
    :cond_da
    move v6, v4

    move v15, v6

    .line 165
    .end local v3    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v5    # "subtypeId":I
    :cond_dc
    add-int/lit8 v4, v4, 0x1

    goto :goto_ac

    .line 356
    .end local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v1    # "size":I
    .end local v4    # "i":I
    .end local v9    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v15    # "checkedItem":I
    :catchall_df
    move-exception v0

    move v1, v8

    goto/16 :goto_304

    .line 179
    .restart local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v1    # "size":I
    .restart local v9    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v15    # "checkedItem":I
    :cond_e3
    :try_start_e3
    iget-object v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;
    :try_end_e5
    .catchall {:try_start_e3 .. :try_end_e5} :catchall_2fd

    if-nez v2, :cond_ee

    .line 180
    :try_start_e7
    new-instance v2, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    invoke-direct {v2}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;-><init>()V

    iput-object v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;
    :try_end_ee
    .catchall {:try_start_e7 .. :try_end_ee} :catchall_df

    .line 182
    :cond_ee
    :try_start_ee
    iget-object v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    move/from16 v7, p2

    invoke-virtual {v2, v7}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->get(I)Landroid/content/Context;

    move-result-object v2

    move-object v6, v2

    .line 185
    .local v6, "dialogWindowContext":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "AlertDialog.Theme.DayNight"

    const-string/jumbo v4, "style"

    const-string/jumbo v5, "miuix.stub"

    .line 186
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v5, v2

    .line 187
    .local v5, "dialogThemeId":I
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v6, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 189
    new-instance v3, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v10}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 191
    iget-object v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v2

    .line 192
    .local v3, "dialogContext":Landroid/content/Context;
    sget-object v2, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v4, 0x101005d

    move/from16 v21, v1

    .end local v1    # "size":I
    .local v21, "size":I
    const/4 v1, 0x0

    move/from16 v16, v5

    .end local v5    # "dialogThemeId":I
    .local v16, "dialogThemeId":I
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 195
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 197
    .local v4, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 201
    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 202
    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v18, v2

    .end local v2    # "a":Landroid/content/res/TypedArray;
    .local v18, "a":Landroid/content/res/TypedArray;
    const v2, 0x1090095

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    .line 204
    .local v5, "tv":Landroid/view/View;
    iget-object v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 207
    iput-object v5, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 208
    const v2, 0x1020314

    .line 209
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 210
    move-object/from16 v22, v1

    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .local v22, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v1

    if-eqz v1, :cond_166

    .line 211
    const/4 v1, 0x0

    goto :goto_168

    :cond_166
    const/16 v1, 0x8

    .line 210
    :goto_168
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    const v2, 0x1020315

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 214
    .local v1, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 215
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v10}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->isSupportedCustomizedDialog()Z

    move-result v2
    :try_end_18b
    .catchall {:try_start_ee .. :try_end_18b} :catchall_2fd

    if-eqz v2, :cond_1f7

    .line 226
    :try_start_18d
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v2

    move-object/from16 v23, v1

    .end local v1    # "hardKeySwitch":Landroid/widget/Switch;
    .local v23, "hardKeySwitch":Landroid/widget/Switch;
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    move-object/from16 v17, v4

    .end local v4    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .local v17, "dialogIcon":Landroid/graphics/drawable/Drawable;
    iget-object v4, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    invoke-interface {v2, v1, v4}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->removeCustomTitle(Lmiuix/appcompat/app/AlertDialog$Builder;Landroid/view/View;)V

    .line 228
    nop

    .line 229
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "miui_customized_input_method_list_item"

    const-string/jumbo v4, "layout"

    move-object/from16 v19, v5

    .end local v5    # "tv":Landroid/view/View;
    .local v19, "tv":Landroid/view/View;
    const-string/jumbo v5, "miuix.stub"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v24, v17

    .line 231
    .end local v17    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .local v4, "miui_customized_input_method_list_item_id":I
    .local v24, "dialogIcon":Landroid/graphics/drawable/Drawable;
    nop

    .line 232
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "miui_no_customized_input_method_list_item"

    const-string/jumbo v5, "layout"

    move-object/from16 v20, v3

    .end local v3    # "dialogContext":Landroid/content/Context;
    .local v20, "dialogContext":Landroid/content/Context;
    const-string/jumbo v3, "miuix.stub"

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 235
    .local v17, "miui_no_customized_input_method_list_item_id":I
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    const/16 v25, 0x0

    move-object/from16 v26, v18

    .end local v18    # "a":Landroid/content/res/TypedArray;
    .local v26, "a":Landroid/content/res/TypedArray;
    move-object v2, v1

    move-object/from16 v27, v20

    .end local v20    # "dialogContext":Landroid/content/Context;
    .local v27, "dialogContext":Landroid/content/Context;
    move-object/from16 v3, v27

    move/from16 v28, v16

    move-object/from16 v29, v19

    .end local v16    # "dialogThemeId":I
    .end local v19    # "tv":Landroid/view/View;
    .local v28, "dialogThemeId":I
    .local v29, "tv":Landroid/view/View;
    move-object v5, v0

    move-object/from16 v30, v6

    .end local v6    # "dialogWindowContext":Landroid/content/Context;
    .local v30, "dialogWindowContext":Landroid/content/Context;
    move v6, v15

    move-object/from16 v7, v25

    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;ILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter-IA;)V

    .line 237
    .local v1, "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    .line 239
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v3

    .line 240
    invoke-interface {v3}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getNoCustomizedCheckedItem()I

    move-result v19

    const/16 v20, 0x0

    move v7, v15

    .end local v15    # "checkedItem":I
    .local v7, "checkedItem":I
    move-object v15, v2

    move-object/from16 v16, v30

    move-object/from16 v18, v9

    invoke-direct/range {v15 .. v20}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;ILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter-IA;)V
    :try_end_1f3
    .catchall {:try_start_18d .. :try_end_1f3} :catchall_df

    .line 241
    .end local v4    # "miui_customized_input_method_list_item_id":I
    .end local v17    # "miui_no_customized_input_method_list_item_id":I
    .local v2, "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    move-object v15, v1

    move v11, v7

    move-object v7, v2

    goto :goto_219

    .line 242
    .end local v2    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v7    # "checkedItem":I
    .end local v23    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v24    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v26    # "a":Landroid/content/res/TypedArray;
    .end local v27    # "dialogContext":Landroid/content/Context;
    .end local v28    # "dialogThemeId":I
    .end local v29    # "tv":Landroid/view/View;
    .end local v30    # "dialogWindowContext":Landroid/content/Context;
    .local v1, "hardKeySwitch":Landroid/widget/Switch;
    .restart local v3    # "dialogContext":Landroid/content/Context;
    .local v4, "dialogIcon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "tv":Landroid/view/View;
    .restart local v6    # "dialogWindowContext":Landroid/content/Context;
    .restart local v15    # "checkedItem":I
    .restart local v16    # "dialogThemeId":I
    .restart local v18    # "a":Landroid/content/res/TypedArray;
    :cond_1f7
    move-object/from16 v23, v1

    move-object/from16 v27, v3

    move-object/from16 v24, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move v7, v15

    move/from16 v28, v16

    move-object/from16 v26, v18

    .end local v1    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v3    # "dialogContext":Landroid/content/Context;
    .end local v4    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "tv":Landroid/view/View;
    .end local v6    # "dialogWindowContext":Landroid/content/Context;
    .end local v15    # "checkedItem":I
    .end local v16    # "dialogThemeId":I
    .end local v18    # "a":Landroid/content/res/TypedArray;
    .restart local v7    # "checkedItem":I
    .restart local v23    # "hardKeySwitch":Landroid/widget/Switch;
    .restart local v24    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .restart local v26    # "a":Landroid/content/res/TypedArray;
    .restart local v27    # "dialogContext":Landroid/content/Context;
    .restart local v28    # "dialogThemeId":I
    .restart local v29    # "tv":Landroid/view/View;
    .restart local v30    # "dialogWindowContext":Landroid/content/Context;
    :try_start_206
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    const v4, 0x1090096

    const/4 v15, 0x0

    move-object v2, v1

    move-object/from16 v3, v27

    move-object v5, v0

    move v6, v7

    move v11, v7

    .end local v7    # "checkedItem":I
    .local v11, "checkedItem":I
    move-object v7, v15

    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;ILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter-IA;)V

    .line 244
    .local v1, "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    const/4 v2, 0x0

    move-object v15, v1

    move-object v7, v2

    .line 247
    .end local v1    # "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .local v7, "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .local v15, "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    :goto_219
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v10, v15, v7}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V

    move-object v6, v1

    .line 283
    .local v6, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v15, v11, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 286
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->isSupportedCustomizedDialog()Z

    move-result v1

    if-eqz v1, :cond_29e

    if-eqz v7, :cond_29e

    .line 289
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getNoCustomizedIms()[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 291
    .local v3, "mNoCustomizedIms":[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getNoCustomizedSubtypeIds()[I

    move-result-object v4

    .line 292
    .local v4, "mNoCustomizedSubtypeIds":[I
    if-nez v12, :cond_276

    .line 293
    new-instance v16, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;
    :try_end_244
    .catchall {:try_start_206 .. :try_end_244} :catchall_2fd

    move-object/from16 v25, v23

    move-object/from16 v23, v22

    move/from16 v22, v21

    .end local v21    # "size":I
    .local v22, "size":I
    .local v23, "inflater":Landroid/view/LayoutInflater;
    .local v25, "hardKeySwitch":Landroid/widget/Switch;
    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v5, v15

    move-object/from16 v31, v6

    .end local v6    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .local v31, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object v6, v7

    move-object/from16 v32, v7

    .end local v7    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .local v32, "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    move-object/from16 v7, v30

    move/from16 v33, v8

    .end local v8    # "lastInputMethodSubtypeId":I
    .local v33, "lastInputMethodSubtypeId":I
    move-object v8, v13

    move-object/from16 v34, v9

    .end local v9    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .local v34, "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    move-object v9, v0

    :try_start_25c
    invoke-direct/range {v1 .. v9}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;[Landroid/view/inputmethod/InputMethodInfo;[ILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v1, v16

    .line 322
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v10}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    .line 325
    .local v2, "negativeListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    const v6, 0x104000a

    invoke-virtual {v5, v6, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 326
    iget-object v5, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_284

    .line 292
    .end local v1    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "negativeListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v25    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v31    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v32    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v33    # "lastInputMethodSubtypeId":I
    .end local v34    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v6    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v7    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .restart local v8    # "lastInputMethodSubtypeId":I
    .restart local v9    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v21    # "size":I
    .local v22, "inflater":Landroid/view/LayoutInflater;
    .local v23, "hardKeySwitch":Landroid/widget/Switch;
    :cond_276
    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v25, v23

    move-object/from16 v23, v22

    move/from16 v22, v21

    .line 329
    .end local v6    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v8    # "lastInputMethodSubtypeId":I
    .end local v9    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v21    # "size":I
    .local v22, "size":I
    .local v23, "inflater":Landroid/view/LayoutInflater;
    .restart local v25    # "hardKeySwitch":Landroid/widget/Switch;
    .restart local v31    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v32    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .restart local v33    # "lastInputMethodSubtypeId":I
    .restart local v34    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :goto_284
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v16

    iget-object v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    move-object v5, v15

    .end local v15    # "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .local v5, "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    move-object v15, v1

    move-object/from16 v17, v34

    move-object/from16 v18, v2

    move-object/from16 v19, v32

    move-object/from16 v20, v5

    move-object/from16 v21, v27

    invoke-interface/range {v15 .. v21}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->generateView(ZLjava/util/List;Lmiuix/appcompat/app/AlertDialog$Builder;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/Context;)V

    goto :goto_2ad

    .line 286
    .end local v3    # "mNoCustomizedIms":[Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "mNoCustomizedSubtypeIds":[I
    .end local v5    # "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v25    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v31    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v32    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v33    # "lastInputMethodSubtypeId":I
    .end local v34    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v6    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v7    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .restart local v8    # "lastInputMethodSubtypeId":I
    .restart local v9    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v15    # "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .restart local v21    # "size":I
    .local v22, "inflater":Landroid/view/LayoutInflater;
    .local v23, "hardKeySwitch":Landroid/widget/Switch;
    :cond_29e
    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move/from16 v33, v8

    move-object/from16 v34, v9

    move-object v5, v15

    move-object/from16 v25, v23

    move-object/from16 v23, v22

    move/from16 v22, v21

    .line 335
    .end local v6    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v8    # "lastInputMethodSubtypeId":I
    .end local v9    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v15    # "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v21    # "size":I
    .restart local v5    # "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .local v22, "size":I
    .local v23, "inflater":Landroid/view/LayoutInflater;
    .restart local v25    # "hardKeySwitch":Landroid/widget/Switch;
    .restart local v31    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v32    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .restart local v33    # "lastInputMethodSubtypeId":I
    .restart local v34    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :goto_2ad
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 336
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 337
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 338
    .local v1, "w":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 339
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7dc

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 340
    invoke-virtual {v1, v2}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 344
    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 345
    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 346
    const-string v2, "Select input method"

    invoke-virtual {v3, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 348
    iget-object v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked()V

    .line 349
    iget-object v2, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 355
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->updateImeAttrs(Landroid/view/WindowManager$LayoutParams;Landroid/view/Window;)V

    .line 356
    .end local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v1    # "w":Landroid/view/Window;
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v11    # "checkedItem":I
    .end local v22    # "size":I
    .end local v23    # "inflater":Landroid/view/LayoutInflater;
    .end local v24    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v25    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v26    # "a":Landroid/content/res/TypedArray;
    .end local v27    # "dialogContext":Landroid/content/Context;
    .end local v28    # "dialogThemeId":I
    .end local v29    # "tv":Landroid/view/View;
    .end local v30    # "dialogWindowContext":Landroid/content/Context;
    .end local v31    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v32    # "noCustomziedImeListAdapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v34    # "noCustomizedInputMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    monitor-exit v14
    :try_end_2f1
    .catchall {:try_start_25c .. :try_end_2f1} :catchall_2f9

    .line 357
    iget-object v0, v10, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2f8

    .line 358
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 361
    :cond_2f8
    return-void

    .line 356
    :catchall_2f9
    move-exception v0

    move/from16 v1, v33

    goto :goto_304

    .end local v33    # "lastInputMethodSubtypeId":I
    .restart local v8    # "lastInputMethodSubtypeId":I
    :catchall_2fd
    move-exception v0

    move/from16 v33, v8

    move/from16 v1, v33

    .end local v8    # "lastInputMethodSubtypeId":I
    .restart local v33    # "lastInputMethodSubtypeId":I
    goto :goto_304

    .end local v33    # "lastInputMethodSubtypeId":I
    .local v1, "lastInputMethodSubtypeId":I
    :catchall_303
    move-exception v0

    :goto_304
    :try_start_304
    monitor-exit v14
    :try_end_305
    .catchall {:try_start_304 .. :try_end_305} :catchall_303

    throw v0
.end method

.method updateKeyboardFromSettingsLocked()V
    .registers 3

    .line 369
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    .line 370
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_26

    .line 371
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 372
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x1020315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 374
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 376
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_26
    return-void
.end method
