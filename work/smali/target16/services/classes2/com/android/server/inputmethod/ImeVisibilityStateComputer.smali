.class public final Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"


# instance fields
.field public mCurVisibleImeInputTarget:Landroid/os/IBinder;

.field public mHasVisibleImeLayeringOverlay:Z

.field public final mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

.field public mInputShown:Z

.field public mLastImeTargetWindow:Landroid/os/IBinder;

.field public final mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

.field public final mRequestWindowStateMap:Ljava/util/WeakHashMap;

.field public mRequestedImeScreenshot:Z

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mUserId:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .registers 11

    .line 126
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 127
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 128
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 129
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerInternal;)V

    new-instance v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-direct {v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    .line 126
    invoke-direct/range {v1 .. v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;)V
    .registers 10

    .line 136
    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getUserManagerService()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getWmService()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v3

    .line 137
    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getImeValidator()Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    move-result-object v4

    new-instance v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-direct {v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;-><init>()V

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    .line 136
    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;I)V
    .registers 8

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 159
    iput p6, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    .line 160
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 161
    iput-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 162
    iput-object p3, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 163
    iput-object p4, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 164
    iput-object p5, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    return-void
.end method


# virtual methods
.method public computeImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)I
    .registers 6

    .line 204
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 205
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 208
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForVisibleBackgroundUserOnAutomotive(IILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result p2

    goto :goto_2b

    .line 211
    :cond_25
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result p2

    .line 213
    :goto_2b
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    .line 215
    :goto_34
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setImeHiddenByDisplayPolicy(Z)V

    return p2
.end method

.method public computeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;ZZ)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    .registers 10

    .line 311
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getSoftInputModeState()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    and-int/lit16 v2, v0, 0xf0

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_20

    .line 320
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 323
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_20

    :cond_1e
    move v2, v5

    goto :goto_21

    :cond_20
    :goto_20
    move v2, v4

    :goto_21
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_27

    move v0, v4

    goto :goto_28

    :cond_27
    move v0, v5

    .line 334
    :goto_28
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->shouldRestoreImeVisibility(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 335
    sget-object p2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p3, "Will show input to restore visibility"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-static {p1, v4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    .line 340
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x17

    invoke-direct {p0, v4, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(ZI)V

    return-object p0

    :cond_4f
    if-eqz v1, :cond_a6

    if-eq v1, v4, :cond_96

    const/4 v2, 0x4

    .line 344
    const-string v3, "ImeVisibilityStateComputer"

    if-eq v1, v2, :cond_7c

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5d

    goto/16 :goto_e7

    .line 399
    :cond_5d
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Window asks to always show input"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_76

    .line 401
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    if-eqz p2, :cond_e7

    .line 402
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x8

    invoke-direct {p0, v4, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(ZI)V

    return-object p0

    .line 406
    :cond_76
    const-string p2, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    :cond_7c
    if-eqz v0, :cond_e7

    if-eqz p2, :cond_90

    .line 387
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Window asks to show input going forward"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/4 p1, 0x7

    invoke-direct {p0, v4, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(ZI)V

    return-object p0

    .line 392
    :cond_90
    const-string p2, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 371
    :cond_96
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object p2

    if-eqz p2, :cond_e7

    .line 373
    invoke-virtual {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    goto :goto_e7

    .line 346
    :cond_a6
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    if-eqz p2, :cond_cd

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result p2

    if-nez p2, :cond_cd

    .line 347
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getWindowFlags()I

    move-result p2

    invoke-static {p2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result p2

    if-eqz p2, :cond_e7

    .line 351
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Unspecified window will hide input"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0xc

    invoke-direct {p0, v5, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(ZI)V

    return-object p0

    .line 356
    :cond_cd
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result p2

    if-eqz p2, :cond_e7

    if-eqz v2, :cond_e7

    if-eqz v0, :cond_e7

    .line 364
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Unspecified window will show input"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/4 p1, 0x6

    invoke-direct {p0, v4, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(ZI)V

    return-object p0

    .line 413
    :cond_e7
    :goto_e7
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    if-nez p2, :cond_104

    .line 420
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isStartInputByWindowGainFocus()Z

    move-result p2

    if-eqz p2, :cond_104

    .line 421
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Same window without editor will hide input"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x15

    invoke-direct {p0, v5, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(ZI)V

    return-object p0

    .line 427
    :cond_104
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result p2

    if-nez p2, :cond_134

    iget-boolean p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-nez p2, :cond_110

    if-eqz p3, :cond_134

    .line 428
    :cond_110
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isStartInputByWindowGainFocus()Z

    move-result p2

    if-eqz p2, :cond_134

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    .line 429
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->shouldHideImeWhenNoEditorFocus()Z

    move-result p0

    if-eqz p0, :cond_134

    .line 437
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p2, "Window without editor will hide input"

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p2, p3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    invoke-static {p1, v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    .line 439
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x21

    invoke-direct {p0, v5, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(ZI)V

    return-object p0

    :cond_134
    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 543
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImeHiddenByDisplayPolicy="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isImeHiddenByDisplayPolicy()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 545
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mInputShown="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mLastImeTargetWindow="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    .line 536
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 537
    invoke-virtual {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isA11yRequestNoSoftKeyboard()Z

    move-result p2

    const-wide v0, 0x10800000018L

    .line 536
    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p2, 0x1080000000cL

    .line 538
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;
    .registers 1

    .line 609
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    return-object p0
.end method

.method public getLastImeTargetWindow()Landroid/os/IBinder;
    .registers 1

    .line 526
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    return-object p0
.end method

.method public getOrCreateWindowState(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    .registers 9

    .line 243
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-nez p0, :cond_16

    .line 245
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIZZZI)V

    return-object v0

    :cond_16
    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 510
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    return p0
.end method

.method public getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    .registers 2

    .line 255
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    return-object p0
.end method

.method public getWindowTokenFrom(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .registers 6

    .line 471
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 472
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 473
    invoke-virtual {v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getRequestImeToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_a

    return-object v1

    .line 477
    :cond_25
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    .line 479
    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    return-object p0
.end method

.method public getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;
    .registers 5

    .line 484
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 485
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-ne v2, p1, :cond_a

    return-object v1

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAllowedByAccessibilityAndDisplayPolicy()Z
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fgetmA11yRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-static {p0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fgetmImeHiddenByDisplayPolicy(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isInputShown()Z
    .registers 1

    .line 515
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    return p0
.end method

.method public onImeInputTargetVisibilityChanged(Landroid/os/IBinder;Z)V
    .registers 6

    if-eqz p2, :cond_5

    .line 176
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    return-void

    .line 179
    :cond_5
    iget-boolean p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mHasVisibleImeLayeringOverlay:Z

    if-eqz p2, :cond_27

    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    if-ne p2, p1, :cond_27

    .line 182
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    const/4 p2, 0x6

    const/16 v0, 0x25

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, p2, v0, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    .line 184
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    invoke-virtual {p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    :cond_27
    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    return-void
.end method

.method public requestImeVisibility(Landroid/os/IBinder;Z)V
    .registers 5

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getOrCreateWindowState(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-static {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fgetmPendingA11yRequestingHideKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 229
    invoke-static {v0, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    goto :goto_16

    .line 234
    :cond_10
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fputmPendingA11yRequestingHideKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;Z)V

    .line 237
    :goto_16
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->setRequestImeToken(Landroid/os/IBinder;)V

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    return-void
.end method

.method public setHasVisibleImeLayeringOverlay(Z)V
    .registers 2

    .line 169
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mHasVisibleImeLayeringOverlay:Z

    return-void
.end method

.method public setInputShown(Z)V
    .registers 2

    .line 520
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    return-void
.end method

.method public setLastImeTargetWindow(Landroid/os/IBinder;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    return-void
.end method

.method public setWindowState(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V
    .registers 5

    .line 260
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-eqz v0, :cond_17

    .line 261
    invoke-virtual {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 264
    invoke-virtual {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    .line 266
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    return-void
.end method

.method public final setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V
    .registers 6

    .line 271
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v1, "setWindowStateInner, windowToken=%s, state=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldRestoreImeVisibility(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z
    .registers 6

    .line 495
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getSoftInputModeState()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_f

    const/4 v0, 0x3

    if-eq v1, v0, :cond_e

    goto :goto_14

    :cond_e
    return v3

    :cond_f
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_14

    return v3

    .line 504
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->shouldRestoreImeVisibility(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public shouldShowImeScreenshot(Landroid/os/IBinder;Z)Ljava/lang/Boolean;
    .registers 3

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 458
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    const/4 p1, 0x1

    .line 459
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    .line 460
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_18
    if-eqz p2, :cond_24

    .line 462
    iget-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    .line 463
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    .line 464
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method
