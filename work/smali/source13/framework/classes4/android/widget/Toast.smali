.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$CallbackBinder;,
        Landroid/widget/Toast$Callback;,
        Landroid/widget/Toast$TN;,
        Landroid/widget/Toast$Duration;
    }
.end annotation


# static fields
.field private static final blacklist CHANGE_TEXT_TOASTS_IN_THE_SYSTEM:J = 0x8cf3b87L

.field public static final whitelist LENGTH_LONG:I = 0x1

.field public static final whitelist LENGTH_SHORT:I = 0x0

.field static final greylist-max-o TAG:Ljava/lang/String; = "Toast"

.field static final greylist-max-o localLOGV:Z = false

.field private static greylist-max-p sService:Landroid/app/INotificationManager;


# instance fields
.field private blacklist isTopMostToast:Z

.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field greylist mDuration:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private greylist-max-o mNextView:Landroid/view/View;

.field final greylist-max-p mTN:Landroid/widget/Toast$TN;

.field private blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/app/INotificationManager;
    .registers 1

    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 165
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 173
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    .line 174
    invoke-direct {p0, p2}, Landroid/widget/Toast;->getLooper(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p2

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    .line 177
    new-instance v6, Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Toast$TN;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V

    iput-object v6, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/widget/Toast$TN;->mY:I

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v6, Landroid/widget/Toast$TN;->mGravity:I

    .line 183
    return-void
.end method

.method private blacklist getLooper(Landroid/os/Looper;)Landroid/os/Looper;
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 186
    if-eqz p1, :cond_3

    .line 187
    return-object p1

    .line 189
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method private static greylist-max-p getService()Landroid/app/INotificationManager;
    .registers 1

    .line 595
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_5

    .line 596
    return-object v0

    .line 598
    :cond_5
    nop

    .line 599
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 598
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 600
    return-object v0
.end method

.method private blacklist isSystemRenderedTextToast()Z
    .registers 3

    .line 454
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static whitelist makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 522
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 523
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 524
    .local v0, "result":Landroid/widget/Toast;
    iput-object p2, v0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    .line 525
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 526
    return-object v0

    .line 528
    .end local v0    # "result":Landroid/widget/Toast;
    :cond_13
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 529
    .restart local v0    # "result":Landroid/widget/Toast;
    invoke-static {p0, p2}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    .line 530
    .local v1, "v":Landroid/view/View;
    iput-object v1, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 531
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 533
    return-object v0
.end method

.method public static whitelist makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 511
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addCallback(Landroid/widget/Toast$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/widget/Toast$Callback;

    .line 465
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 467
    :try_start_6
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    monitor-exit v0

    .line 469
    return-void

    .line 468
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist cancel()V
    .registers 4

    .line 257
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_1f

    .line 260
    :try_start_d
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    goto :goto_1e

    .line 261
    :catch_1d
    move-exception v0

    .line 263
    :goto_1e
    goto :goto_24

    .line 265
    :cond_1f
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->cancel()V

    .line 267
    :goto_24
    return-void
.end method

.method public whitelist getDuration()I
    .registers 2

    .line 326
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 3

    .line 414
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 415
    const-string v0, "Toast"

    const-string v1, "getGravity() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public whitelist getHorizontalMargin()F
    .registers 3

    .line 360
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 361
    const-string v0, "Toast"

    const-string v1, "getHorizontalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public whitelist getVerticalMargin()F
    .registers 3

    .line 376
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 377
    const-string v0, "Toast"

    const-string v1, "getVerticalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public whitelist getView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public greylist getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .line 486
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 487
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 489
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    .line 492
    :cond_14
    const/4 v0, 0x0

    return-object v0

    .line 496
    :cond_16
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getXOffset()I
    .registers 3

    .line 430
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 431
    const-string v0, "Toast"

    const-string v1, "getXOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public whitelist getYOffset()I
    .registers 3

    .line 446
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 447
    const-string v0, "Toast"

    const-string v1, "getYOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public whitelist removeCallback(Landroid/widget/Toast$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/widget/Toast$Callback;

    .line 475
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 476
    :try_start_3
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 477
    monitor-exit v0

    .line 478
    return-void

    .line 477
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist setDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 316
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 317
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mDuration:I

    .line 318
    return-void
.end method

.method public whitelist setGravity(III)V
    .registers 6
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .line 394
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 395
    const-string v0, "Toast"

    const-string/jumbo v1, "setGravity() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_e
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 398
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    .line 399
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    .line 400
    return-void
.end method

.method public whitelist setMargin(FF)V
    .registers 5
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    .line 344
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 345
    const-string v0, "Toast"

    const-string/jumbo v1, "setMargin() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_e
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 348
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    .line 349
    return-void
.end method

.method public whitelist setText(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 558
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 559
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 566
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 567
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_10

    .line 572
    iput-object p1, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    goto :goto_2c

    .line 568
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text provided for custom toast, remove previous setView() calls if you want a text toast instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_18
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const-string v1, "This Toast was not created with Toast.makeText()"

    if-eqz v0, :cond_33

    .line 577
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 578
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_2d

    .line 581
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    .end local v0    # "tv":Landroid/widget/TextView;
    :goto_2c
    return-void

    .line 579
    .restart local v0    # "tv":Landroid/widget/TextView;
    :cond_2d
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setTopMostToast(Z)V
    .registers 2
    .param p1, "topMostToast"    # Z

    .line 616
    iput-boolean p1, p0, Landroid/widget/Toast;->isTopMostToast:Z

    .line 617
    return-void
.end method

.method public blacklist setType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 608
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 609
    return-void
.end method

.method public whitelist setView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    iput-object p1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 283
    return-void
.end method

.method public whitelist show()V
    .registers 22

    .line 197
    move-object/from16 v1, p0

    const-wide/32 v2, 0x8cf3b87

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 198
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_16

    iget-object v0, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    const-string v4, "You must either set a text or a view"

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_21

    .line 200
    :cond_1d
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_c6

    .line 205
    :goto_21
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v18

    .line 206
    .local v18, "service":Landroid/app/INotificationManager;
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v19

    .line 207
    .local v19, "pkg":Ljava/lang/String;
    iget-object v15, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 208
    .local v15, "tn":Landroid/widget/Toast$TN;
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v0, v15, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 209
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v20

    .line 212
    .local v20, "displayId":I
    :try_start_37
    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 213
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3f} :catch_c3

    if-eqz v0, :cond_6b

    .line 217
    :try_start_41
    iget-boolean v0, v1, Landroid/widget/Toast;->isTopMostToast:Z

    if-eqz v0, :cond_56

    .line 218
    iget-object v6, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v8, v1, Landroid/widget/Toast;->mDuration:I

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object v7, v15

    move/from16 v9, v20

    invoke-interface/range {v4 .. v9}, Landroid/app/INotificationManager;->enqueueTopMostToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;II)V

    move-object v2, v15

    goto/16 :goto_c0

    .line 220
    :cond_56
    iget-object v6, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v8, v1, Landroid/widget/Toast;->mDuration:I

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object v7, v15

    move/from16 v9, v20

    invoke-interface/range {v4 .. v9}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;II)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_64} :catch_67

    move-object v2, v15

    goto/16 :goto_c0

    .line 246
    :catch_67
    move-exception v0

    move-object v2, v15

    goto/16 :goto_c5

    .line 225
    :cond_6b
    :try_start_6b
    new-instance v10, Landroid/widget/Toast$CallbackBinder;

    iget-object v0, v1, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    iget-object v2, v1, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v10, v0, v2, v3}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast$CallbackBinder-IA;)V

    .line 229
    .local v10, "callback":Landroid/app/ITransientNotificationCallback;
    iget-boolean v0, v1, Landroid/widget/Toast;->isTopMostToast:Z
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_77} :catch_c3

    if-eqz v0, :cond_8a

    .line 230
    :try_start_79
    iget-object v6, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v7, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    iget v8, v1, Landroid/widget/Toast;->mDuration:I

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v9, v20

    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueTopMostTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IILandroid/app/ITransientNotificationCallback;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_88} :catch_67

    move-object v2, v15

    goto :goto_9d

    .line 232
    :cond_8a
    :try_start_8a
    iget-object v13, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v14, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    iget v0, v1, Landroid/widget/Toast;->mDuration:I
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_90} :catch_c3

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object v2, v15

    .end local v15    # "tn":Landroid/widget/Toast$TN;
    .local v2, "tn":Landroid/widget/Toast$TN;
    move v15, v0

    move/from16 v16, v20

    move-object/from16 v17, v10

    :try_start_9a
    invoke-interface/range {v11 .. v17}, Landroid/app/INotificationManager;->enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IILandroid/app/ITransientNotificationCallback;)V

    .line 235
    .end local v10    # "callback":Landroid/app/ITransientNotificationCallback;
    :goto_9d
    goto :goto_c0

    .line 239
    .end local v2    # "tn":Landroid/widget/Toast$TN;
    .restart local v15    # "tn":Landroid/widget/Toast$TN;
    :cond_9e
    move-object v2, v15

    .end local v15    # "tn":Landroid/widget/Toast$TN;
    .restart local v2    # "tn":Landroid/widget/Toast$TN;
    iget-boolean v0, v1, Landroid/widget/Toast;->isTopMostToast:Z

    if-eqz v0, :cond_b2

    .line 240
    iget-object v6, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v8, v1, Landroid/widget/Toast;->mDuration:I

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object v7, v2

    move/from16 v9, v20

    invoke-interface/range {v4 .. v9}, Landroid/app/INotificationManager;->enqueueTopMostToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;II)V

    goto :goto_c0

    .line 242
    :cond_b2
    iget-object v6, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v8, v1, Landroid/widget/Toast;->mDuration:I

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object v7, v2

    move/from16 v9, v20

    invoke-interface/range {v4 .. v9}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;II)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_c0} :catch_c1

    .line 248
    :goto_c0
    goto :goto_c5

    .line 246
    :catch_c1
    move-exception v0

    goto :goto_c5

    .end local v2    # "tn":Landroid/widget/Toast$TN;
    .restart local v15    # "tn":Landroid/widget/Toast$TN;
    :catch_c3
    move-exception v0

    move-object v2, v15

    .line 249
    .end local v15    # "tn":Landroid/widget/Toast$TN;
    .restart local v2    # "tn":Landroid/widget/Toast$TN;
    :goto_c5
    return-void

    .line 201
    .end local v2    # "tn":Landroid/widget/Toast$TN;
    .end local v18    # "service":Landroid/app/INotificationManager;
    .end local v19    # "pkg":Ljava/lang/String;
    .end local v20    # "displayId":I
    :cond_c6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "setView must have been called"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
