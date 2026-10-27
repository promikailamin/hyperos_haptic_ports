.class final Lcom/android/server/inputmethod/InputMethodBindingController;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"


# static fields
.field static final DEBUG:Z = false

.field private static final IME_CONNECTION_BIND_FLAGS:I = 0x40800005

.field private static final IME_VISIBLE_BIND_FLAGS:I = 0x2c081001

.field private static final TAG:Ljava/lang/String;

.field static final TIME_TO_RECONNECT:J = 0xbb8L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurId:Ljava/lang/String;

.field private mCurIntent:Landroid/content/Intent;

.field private mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field private mCurMethodUid:I

.field private mCurSeq:I

.field private mCurToken:Landroid/os/IBinder;

.field private mHasConnection:Z

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mLastBindTime:J

.field private final mMainConnection:Landroid/content/ServiceConnection;

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

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mRes:Landroid/content/res/Resources;

.field private mSelectedMethodId:Ljava/lang/String;

.field private final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mSupportsStylusHw:Z

.field private mVisibleBound:Z

.field private final mVisibleConnection:Landroid/content/ServiceConnection;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMethodMap(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMethodMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedMethodId(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettings(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisibleBound(Lcom/android/server/inputmethod/InputMethodBindingController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/IInputMethodInvoker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastBindTime(Lcom/android/server/inputmethod/InputMethodBindingController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCurMethodAndSessions(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-class v0, Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 246
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$1;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$1;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 270
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$2;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    .line 105
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 106
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMethodMap:Landroid/util/ArrayMap;

    .line 108
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 109
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 110
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 111
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 112
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mRes:Landroid/content/res/Resources;

    .line 113
    return-void
.end method

.method private addFreshWindowToken()V
    .registers 6

    .line 430
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDisplayIdToShowImeLocked()I

    move-result v0

    .line 431
    .local v0, "displayIdToShowIme":I
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 433
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setCurTokenDisplayIdLocked(I)V

    .line 440
    :try_start_12
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 443
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-nez v1, :cond_23

    .line 444
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceVisibleConnection()Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_24

    .line 450
    :cond_23
    goto :goto_49

    .line 447
    :catch_24
    move-exception v1

    .line 448
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not add window token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_49
    return-void
.end method

.method private bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z
    .registers 7
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "flags"    # I

    .line 467
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_19

    if-nez p1, :cond_7

    goto :goto_19

    .line 471
    :cond_7
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 472
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 471
    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 468
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method private bindCurrentInputMethodServiceMainConnection()Z
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    const v1, 0x40800005    # 4.0000024f

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    .line 485
    return v0
.end method

.method private bindCurrentInputMethodServiceVisibleConnection()Z
    .registers 3

    .line 477
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v1, 0x2c081001

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 479
    return v0
.end method

.method private clearCurMethodAndSessions()V
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionsLocked()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 370
    return-void
.end method

.method private createImeBindingIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 420
    const-string v1, "android.intent.extra.client_label"

    const v2, 0x104049e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "android.intent.extra.client_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 425
    return-object v0
.end method

.method private removeCurrentToken()V
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    move-result v0

    .line 380
    .local v0, "curTokenDisplayId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZZI)V

    .line 382
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 383
    return-void
.end method

.method private unbindMainConnection()V
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    .line 457
    return-void
.end method


# virtual methods
.method advanceSequenceNumber()V
    .registers 3

    .line 204
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 205
    if-gtz v0, :cond_a

    .line 206
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 208
    :cond_a
    return-void
.end method

.method bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;
    .registers 13

    .line 388
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 389
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mSelectedMethodId is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 393
    :cond_f
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 394
    .local v0, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_69

    .line 398
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->createImeBindingIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 400
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceMainConnection()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 401
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 404
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->addFreshWindowToken()V

    .line 405
    new-instance v1, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    return-object v1

    .line 410
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure connecting to input method service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 413
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v1

    .line 395
    :cond_69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getCurId()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    return-object v0
.end method

.method getCurIntent()Landroid/content/Intent;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-object v0
.end method

.method getCurMethodUid()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return v0
.end method

.method getCurToken()Landroid/os/IBinder;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getLastBindTime()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    return-wide v0
.end method

.method getSelectedMethodId()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-object v0
.end method

.method getSequenceNumber()I
    .registers 2

    .line 195
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    return v0
.end method

.method hasConnection()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    return v0
.end method

.method isVisibleBound()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return v0
.end method

.method setCurrentMethodNotVisible()V
    .registers 2

    .line 537
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-eqz v0, :cond_7

    .line 538
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    .line 540
    :cond_7
    return-void
.end method

.method setCurrentMethodVisible()V
    .registers 7

    .line 496
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v0, :cond_10

    .line 498
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-nez v0, :cond_f

    .line 499
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceVisibleConnection()Z

    .line 501
    :cond_f
    return-void

    .line 505
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    if-nez v0, :cond_18

    .line 509
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    .line 510
    return-void

    .line 513
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    sub-long/2addr v0, v2

    .line 514
    .local v0, "bindingDuration":J
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4f

    .line 519
    const/16 v2, 0x7d00

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 520
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 519
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 521
    sget-object v2, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    const-string v3, "Force disconnect/connect to the IME in setCurrentMethodVisible()"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindMainConnection()V

    .line 523
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceMainConnection()Z

    .line 530
    :cond_4f
    return-void
.end method

.method setSelectedMethodId(Ljava/lang/String;)V
    .registers 2
    .param p1, "selectedMethodId"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 169
    return-void
.end method

.method supportsStylusHandwriting()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return v0
.end method

.method unbindCurrentMethod()V
    .registers 2

    .line 348
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-eqz v0, :cond_7

    .line 349
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    .line 352
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    if-eqz v0, :cond_e

    .line 353
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindMainConnection()V

    .line 356
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1a

    .line 357
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->removeCurrentToken()V

    .line 358
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSystemUiLocked()V

    .line 361
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    .line 363
    return-void
.end method

.method unbindVisibleConnection()V
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 463
    return-void
.end method
