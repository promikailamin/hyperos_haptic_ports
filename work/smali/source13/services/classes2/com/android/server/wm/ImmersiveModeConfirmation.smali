.class public Lcom/android/server/wm/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ImmersiveModeConfirmation$H;,
        Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final FACTORY_BUILD_SIGN:Ljava/lang/String; = "1"

.field private static final IMMERSIVE_MODE_CONFIRMATION_WINDOW_TYPE:I = 0x7e1

.field private static final IS_FACTORY_BUILD:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"

.field private static sConfirmed:Z


# instance fields
.field private mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirm:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

.field private mLockTaskState:I

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private final mShowDelayMs:J

.field private mVrModeEnabled:Z

.field private mWindowContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetBubbleLayoutParams(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleHide(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShow(Lcom/android/server/wm/ImmersiveModeConfirmation;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleShow(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetIS_FACTORY_BUILD()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->IS_FACTORY_BUILD:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsConfirmed()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsConfirmed(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smsaveSetting(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->saveSetting(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 109
    const-string/jumbo v0, "ro.boot.factorybuild"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->IS_FACTORY_BUILD:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "vrModeEnabled"    # Z

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 465
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 112
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 113
    .local v1, "uiContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_28

    .line 114
    move-object v2, v1

    goto :goto_2c

    :cond_28
    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_2c
    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 115
    new-instance v2, Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 116
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e007e

    .line 118
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 119
    iput-boolean p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 120
    return-void
.end method

.method private getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    .line 255
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 255
    return-object v0
.end method

.method private getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 236
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e1

    const v4, 0x1000120

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 244
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 246
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000010

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 248
    const-string v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    const v1, 0x10302fc

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 250
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 251
    return-object v0
.end method

.method private getNavBarExitDuration()J
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v1, 0x10a0027

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 124
    .local v0, "exit":Landroid/view/animation/Animation;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    goto :goto_12

    :cond_10
    const-wide/16 v1, 0x0

    :goto_12
    return-wide v1
.end method

.method private getOptionsForWindowContext(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "rootDisplayAreaId"    # I

    .line 442
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 443
    const/4 v0, 0x0

    return-object v0

    .line 446
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v0, "options":Landroid/os/Bundle;
    const-string/jumbo v1, "root_display_area_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    return-object v0
.end method

.method private getWindowManager(I)Landroid/view/WindowManager;
    .registers 7
    .param p1, "rootDisplayAreaId"    # I

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    const/16 v1, 0x7e1

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowContext:Landroid/content/Context;

    if-nez v0, :cond_b

    goto :goto_2c

    .line 423
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getOptionsForWindowContext(I)Landroid/os/Bundle;

    move-result-object v0

    .line 424
    .local v0, "options":Landroid/os/Bundle;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 426
    .local v2, "wms":Landroid/view/IWindowManager;
    :try_start_13
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .line 426
    invoke-interface {v2, v3, v1, v4, v0}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_22} :catch_26

    .line 430
    nop

    .line 432
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v1

    .line 428
    :catch_26
    move-exception v1

    .line 429
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 415
    .end local v0    # "options":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "wms":Landroid/view/IWindowManager;
    :cond_2c
    :goto_2c
    invoke-direct {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getOptionsForWindowContext(I)Landroid/os/Bundle;

    move-result-object v0

    .line 416
    .restart local v0    # "options":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowContext:Landroid/content/Context;

    .line 418
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 419
    return-object v1
.end method

.method private handleHide()V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_2d

    .line 226
    const/4 v0, -0x1

    :try_start_5
    invoke-direct {p0, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager(I)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_e
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_5 .. :try_end_e} :catch_13

    .line 230
    nop

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    goto :goto_2d

    .line 227
    :catch_13
    move-exception v0

    .line 228
    .local v0, "e":Landroid/view/WindowManager$InvalidDisplayException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to hide the immersive confirmation window because of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImmersiveModeConfirmation"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 233
    .end local v0    # "e":Landroid/view/WindowManager$InvalidDisplayException;
    :cond_2d
    :goto_2d
    return-void
.end method

.method private handleShow(I)V
    .registers 6
    .param p1, "rootDisplayAreaId"    # I

    .line 454
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 457
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 459
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager(I)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_18
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_f .. :try_end_18} :catch_19

    .line 462
    goto :goto_32

    .line 460
    :catch_19
    move-exception v1

    .line 461
    .local v1, "e":Landroid/view/WindowManager$InvalidDisplayException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to show the immersive confirmation window because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImmersiveModeConfirmation"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v1    # "e":Landroid/view/WindowManager$InvalidDisplayException;
    :goto_32
    return-void
.end method

.method static loadSetting(ILandroid/content/Context;)Z
    .registers 8
    .param p0, "currentUserId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 129
    .local v0, "wasConfirmed":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, "value":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "immersive_mode_confirmations"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 136
    const-string v3, "confirmed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    .line 140
    goto :goto_34

    .line 138
    :catchall_1b
    move-exception v3

    .line 139
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading confirmations, value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImmersiveModeConfirmation"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_34
    sget-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eq v3, v0, :cond_39

    const/4 v1, 0x1

    :cond_39
    return v1
.end method

.method private static saveSetting(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 147
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz v0, :cond_7

    const-string v0, "confirmed"

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 148
    .local v0, "value":Ljava/lang/String;
    :goto_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_14

    .line 155
    nop

    .end local v0    # "value":Ljava/lang/String;
    goto :goto_2f

    .line 153
    :catchall_14
    move-exception v0

    .line 154
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error saving confirmations, sConfirmed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImmersiveModeConfirmation"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2f
    return-void
.end method


# virtual methods
.method confirmCurrentPrompt()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_b

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_b
    return-void
.end method

.method getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method immersiveModeChangedLw(Ljava/lang/String;IZZZ)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootDisplayAreaId"    # I
    .param p3, "isImmersiveMode"    # Z
    .param p4, "userSetupComplete"    # Z
    .param p5, "navBarEmpty"    # Z

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 177
    if-eqz p3, :cond_3a

    .line 179
    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmationStub;->get()Lcom/android/server/wm/ImmersiveModeConfirmationStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmationStub;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    move-result v0

    .line 182
    .local v0, "disabled":Z
    if-nez v0, :cond_39

    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez v2, :cond_39

    if-eqz p4, :cond_39

    iget-boolean v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-nez v2, :cond_39

    if-nez p5, :cond_39

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 188
    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_39

    iget v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    if-eq v2, v1, :cond_39

    .line 190
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 191
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 192
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-wide v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    .end local v0    # "disabled":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_39
    goto :goto_40

    .line 195
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 197
    :goto_40
    return-void
.end method

.method onLockTaskModeChangedLw(I)V
    .registers 2
    .param p1, "lockTaskState"    # I

    .line 515
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 516
    return-void
.end method

.method onPowerKeyDown(ZJZZ)Z
    .registers 11
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z
    .param p5, "navBarEmpty"    # Z

    .line 201
    const/4 v0, 0x0

    if-nez p1, :cond_13

    iget-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_13

    .line 203
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 205
    :cond_13
    if-eqz p1, :cond_1c

    if-eqz p4, :cond_1c

    if-nez p5, :cond_1c

    .line 207
    iput-wide p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_20

    .line 209
    :cond_1c
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    .line 211
    :goto_20
    return v0
.end method

.method onSettingChanged(I)Z
    .registers 5
    .param p1, "currentUserId"    # I

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->loadSetting(ILandroid/content/Context;)Z

    move-result v0

    .line 166
    .local v0, "changed":Z
    if-eqz v0, :cond_12

    sget-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz v1, :cond_12

    .line 167
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 169
    :cond_12
    return v0
.end method

.method onVrStateChangedLw(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 507
    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 508
    if-eqz p1, :cond_10

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 512
    :cond_10
    return-void
.end method

.method release()V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 161
    return-void
.end method
