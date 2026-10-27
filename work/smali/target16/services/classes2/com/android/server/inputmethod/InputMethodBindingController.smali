.class public final Lcom/android/server/inputmethod/InputMethodBindingController;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"


# static fields
.field static final IME_CONNECTION_BIND_FLAGS:I = 0x40880005

.field static final IME_VISIBLE_BIND_FLAGS:I = 0x2c001001

.field public static final TAG:Ljava/lang/String; = "InputMethodBindingController"


# instance fields
.field public final mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

.field public mBackDisposition:I

.field public final mContext:Landroid/content/Context;

.field public mCurId:Ljava/lang/String;

.field public mCurIntent:Landroid/content/Intent;

.field public mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public mCurMethodUid:I

.field public mCurSeq:I

.field public mCurToken:Landroid/os/IBinder;

.field public mCurTokenDisplayId:I

.field public mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public mDeviceIdToShowIme:I

.field public mDisplayIdToShowIme:I

.field public mHasMainConnection:Z

.field public final mImeConnectionBindFlags:I

.field public mImeWindowVis:I

.field public mLastBindTime:J

.field public mLatchForTesting:Ljava/util/concurrent/CountDownLatch;

.field public final mMainConnection:Landroid/content/ServiceConnection;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSelectedMethodId:Ljava/lang/String;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mSupportsConnectionlessStylusHw:Z

.field public mSupportsStylusHw:Z

.field public final mUserId:I

.field public mVisibleBound:Z

.field public final mVisibleConnection:Landroid/content/ServiceConnection;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAutofillController(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/AutofillSuggestionsController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLatchForTesting(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLatchForTesting:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectedMethodId(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportsConnectionlessStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/IInputMethodInvoker;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastBindTime(Lcom/android/server/inputmethod/InputMethodBindingController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSupportsConnectionlessStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearCurMethodAndSessions(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 5

    .line 156
    sget v0, Lcom/android/server/inputmethod/InputMethodBindingController;->IME_CONNECTION_BIND_FLAGS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;ILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;ILjava/util/concurrent/CountDownLatch;)V
    .registers 6

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 94
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 102
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 115
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    .line 356
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$1;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$1;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 380
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$2;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    .line 162
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 163
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 164
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 165
    new-instance p1, Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 166
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 167
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 168
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeConnectionBindFlags:I

    .line 169
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLatchForTesting:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public advanceSequenceNumber()V
    .registers 3

    .line 307
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    if-gtz v0, :cond_a

    .line 309
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    :cond_a
    return-void
.end method

.method public final bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z
    .registers 6

    .line 613
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_15

    if-nez p1, :cond_7

    goto :goto_15

    .line 617
    :cond_7
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 614
    :cond_15
    :goto_15
    sget-object p2, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- bind failed: service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", conn = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final bindCurrentInputMethodServiceMainConnection()Z
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeConnectionBindFlags:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    return v0
.end method

.method public bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;
    .registers 14

    .line 547
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 548
    sget-object p0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    const-string v0, "mSelectedMethodId is null!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 552
    :cond_e
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 558
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->createImeBindingIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 560
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceMainConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    .line 561
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 564
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 565
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 570
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v4, 0x7db

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 573
    new-instance v5, Lcom/android/internal/inputmethod/InputBindResult;

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v12, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v5

    .line 578
    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure connecting to input method service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 581
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 555
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clearCurMethodAndSessions()V
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 525
    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setInputShown(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionsLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    const/4 v0, -0x1

    .line 529
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return-void
.end method

.method public final createImeBindingIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 6

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 588
    const-string p1, "android.intent.extra.client_label"

    const v1, 0x104053f

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v1, 0x2

    .line 591
    invoke-virtual {p1, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 593
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 595
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 v3, 0x0

    .line 593
    invoke-static {p0, v3, v1, v2, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "android.intent.extra.client_intent"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSelectedMethodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentSubtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHasMainConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mVisibleBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurTokenDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurHostInputToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurHostInputToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImeWindowVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mBackDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayIdToShowIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDeviceIdToShowIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSupportsStylusHw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mSupportsConnectionlessStylusHw="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBackDisposition()I
    .registers 1

    .line 769
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    return p0
.end method

.method public getCurHostInputToken()Landroid/os/IBinder;
    .registers 1

    .line 498
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->getCurHostInputToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getCurId()Ljava/lang/String;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurIntent()Landroid/content/Intent;
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 1

    .line 320
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-object p0
.end method

.method public getCurMethodUid()I
    .registers 1

    .line 328
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return p0
.end method

.method public getCurToken()Landroid/os/IBinder;
    .registers 1

    .line 247
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getCurTokenDisplayId()I
    .registers 1

    .line 280
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    return p0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 5

    .line 714
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 718
    :cond_8
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 719
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 720
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_28

    .line 723
    :cond_1f
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v0, v2, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->getCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 725
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0

    :cond_28
    :goto_28
    return-object v1
.end method

.method public getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object p0
.end method

.method public getDeviceIdToShowIme()I
    .registers 1

    .line 747
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    return p0
.end method

.method public getDisplayIdToShowIme()I
    .registers 1

    .line 737
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    return p0
.end method

.method public getImeWindowVis()I
    .registers 1

    .line 763
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    return p0
.end method

.method public getLastBindTime()J
    .registers 3

    .line 178
    iget-wide v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    return-wide v0
.end method

.method public getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    .line 237
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedMethodId()Ljava/lang/String;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-object p0
.end method

.method public getSequenceNumber()I
    .registers 1

    .line 298
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 752
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    return p0
.end method

.method public hasMainConnection()Z
    .registers 1

    .line 187
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    return p0
.end method

.method public invalidateAutofillSession()V
    .registers 1

    .line 485
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->invalidateAutofillSession()V

    return-void
.end method

.method public isVisibleBound()Z
    .registers 1

    .line 336
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return p0
.end method

.method public onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;Z)V
    .registers 4

    .line 491
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;Z)V

    return-void
.end method

.method public final removeCurrentToken()V
    .registers 6

    .line 538
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZZI)V

    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    const/4 v0, -0x1

    .line 541
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    return-void
.end method

.method public setBackDisposition(I)V
    .registers 2

    .line 774
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    return-void
.end method

.method public setCurrentMethodNotVisible()V
    .registers 2

    .line 677
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 678
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    :cond_9
    return-void
.end method

.method public setCurrentMethodVisible()V
    .registers 5

    .line 635
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v0, :cond_1c

    .line 637
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v0

    if-nez v0, :cond_56

    .line 638
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v1, 0x2c001001

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return-void

    .line 645
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v0

    if-nez v0, :cond_26

    .line 649
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    return-void

    .line 653
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_56

    .line 659
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d00

    .line 659
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 661
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    const-string v1, "Force disconnect/connect to the IME in setCurrentMethodVisible()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindMainConnection()V

    .line 663
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceMainConnection()Z

    :cond_56
    return-void
.end method

.method public setCurrentSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method

.method public setDeviceIdToShowIme(I)V
    .registers 2

    .line 742
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    return-void
.end method

.method public setDisplayIdToShowIme(I)V
    .registers 2

    .line 732
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    return-void
.end method

.method public setImeWindowVis(I)V
    .registers 2

    .line 757
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    return-void
.end method

.method public setSelectedMethodId(Ljava/lang/String;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-void
.end method

.method public supportsConnectionlessStylusHandwriting()Z
    .registers 1

    .line 350
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    return p0
.end method

.method public supportsStylusHandwriting()Z
    .registers 1

    .line 344
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return p0
.end method

.method public unbindCurrentMethod()V
    .registers 2

    .line 503
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 504
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    .line 507
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 508
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindMainConnection()V

    .line 511
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 512
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSystemUiLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->removeCurrentToken()V

    .line 514
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->onResetSystemUi()V

    :cond_25
    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 518
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    return-void
.end method

.method public final unbindMainConnection()V
    .registers 3

    .line 601
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 602
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    return-void
.end method

.method public unbindVisibleConnection()V
    .registers 3

    .line 607
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return-void
.end method
