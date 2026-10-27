.class public Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/Dialog;
.source "UserSwitchingDialog.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisableAnimations:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mNewUser:Landroid/content/pm/UserInfo;

.field public final mOldUser:Landroid/content/pm/UserInfo;

.field public final mSwitchingFromUserMessage:Ljava/lang/String;

.field public final mSwitchingToUserMessage:Ljava/lang/String;

.field public final mTraceCookie:I


# direct methods
.method public static synthetic $r8$lambda$5NqD0_Luw6ZsTDBo6jEY0-IO8uM(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " animation not completed in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserSwitchingDialog"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$GwAb5XTAMKnNSVU65IcCzTsB9Gk(Ljava/lang/Runnable;)V
    .registers 1

    .line 201
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$Urx1na3xSUj5v9yusgmvPu5vAGE(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$startDismissAnimation$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n6zjrmfI_HhnfLq6s4lpiNHuDDU(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$startShowAnimation$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uyKSDbOYwNPshkGOB_1BSiTEufY(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserSwitchingDialog;->lambda$animationWithTimeout$5(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xsDK0cmiZottOh-oAYlXeDXggdw(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$dismiss$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yPbG8DIBNhoIbmE7hkNB-ds1z3Y(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$startShowAnimation$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const v0, 0x103022f

    .line 91
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 93
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    .line 95
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    .line 96
    iput-object p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p5, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromUserMessage:Ljava/lang/String;

    .line 98
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    .line 99
    const-string p1, "debug.usercontroller.disable_user_switching_dialog_animations"

    const/4 p4, 0x0

    invoke-static {p1, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    .line 101
    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    mul-int/lit16 p1, p1, 0x53e1

    iget p2, p3, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    .line 103
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->inflateContent()V

    .line 104
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->configureWindow()V

    return-void
.end method


# virtual methods
.method public final animationWithTimeout(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 7

    .line 305
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 306
    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 312
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1, v1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/16 p1, 0xaa

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, p2, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-object v1
.end method

.method public final asyncTraceBegin(Ljava/lang/String;I)V
    .registers 5

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncTraceBegin-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserSwitchingDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    add-int/2addr p0, p2

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public final asyncTraceEnd(Ljava/lang/String;I)V
    .registers 7

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSwitchingDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    add-int/2addr p0, p2

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "asyncTraceEnd-"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final configureWindow()V
    .registers 3

    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x110

    .line 110
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x3

    .line 112
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x106000d

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x7da

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method public final defaultUserIcon(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    .line 162
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 163
    invoke-static {p0, p1}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public dismiss()V
    .registers 3

    .line 193
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 194
    const-string v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void
.end method

.method public dismiss(Ljava/lang/Runnable;)V
    .registers 4

    .line 206
    const-string v0, "UserSwitchingDialog"

    const-string v1, "dismiss called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_d

    .line 209
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    return-void

    .line 211
    :cond_d
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->startDismissAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getSpinnerAVD()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .registers 2

    const v0, 0x102049f

    .line 267
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_16

    .line 269
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 270
    instance-of v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_16

    .line 271
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextMessage()Ljava/lang/String;
    .registers 4

    .line 167
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 170
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-eqz p0, :cond_1c

    const p0, 0x1040382

    goto :goto_1f

    :cond_1c
    const p0, 0x1040383

    :goto_1f
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 175
    :cond_24
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromUserMessage:Ljava/lang/String;

    if-nez v1, :cond_3d

    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    if-eqz v2, :cond_2d

    goto :goto_3d

    .line 182
    :cond_2d
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x1040ae2

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    :goto_3d
    if-eqz v1, :cond_5c

    .line 176
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromUserMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_5c
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getUserIconRounded()Landroid/graphics/Bitmap;
    .registers 7

    .line 149
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserSwitchingDialog;->defaultUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 149
    invoke-static {v0, p0}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 154
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 155
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    div-float/2addr v1, v5

    invoke-virtual {p0, v4, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public inflateContent()V
    .registers 5

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x109017b

    .line 122
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x102000b

    .line 124
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 126
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getTextMessage()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    const v0, 0x1020006

    .line 131
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    .line 133
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getUserIconRounded()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_31
    const v0, 0x102049f

    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5f

    .line 138
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz v1, :cond_46

    const/16 p0, 0x8

    .line 139
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 141
    :cond_46
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 142
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v2, 0x1120025

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 143
    iget p0, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_5f
    return-void
.end method

.method public final synthetic lambda$animationWithTimeout$5(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 308
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xaa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method

.method public final synthetic lambda$dismiss$1(Ljava/lang/Runnable;)V
    .registers 2

    .line 212
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    .line 213
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final synthetic lambda$startDismissAnimation$4(Ljava/lang/Runnable;)V
    .registers 4

    .line 244
    const-string v0, "dismissAnimation"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 246
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final synthetic lambda$startShowAnimation$2(Ljava/lang/Runnable;)V
    .registers 4

    .line 229
    const-string/jumbo v0, "spinnerAnimation"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 231
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final synthetic lambda$startShowAnimation$3(Ljava/lang/Runnable;)V
    .registers 4

    .line 225
    const-string/jumbo v0, "showAnimation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 227
    const-string/jumbo v0, "spinnerAnimation"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 228
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->startProgressAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .registers 3

    .line 187
    const-string v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 188
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public show(Ljava/lang/Runnable;)V
    .registers 4

    .line 198
    const-string v0, "UserSwitchingDialog"

    const-string/jumbo v1, "show called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->show()V

    .line 200
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->startShowAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V
    .registers 7

    const v0, 0x1020002

    .line 278
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 279
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez v1, :cond_23

    if-nez v0, :cond_e

    goto :goto_23

    .line 283
    :cond_e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/UserSwitchingDialog;->animationWithTimeout(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x12c

    .line 284
    invoke-virtual {p2, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 285
    new-instance p3, Lcom/android/server/am/UserSwitchingDialog$2;

    invoke-direct {p3, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$2;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 301
    invoke-virtual {v0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 280
    :cond_23
    :goto_23
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final startDismissAnimation(Ljava/lang/Runnable;)V
    .registers 5

    .line 237
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz v0, :cond_8

    .line 239
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 242
    :cond_8
    const-string v0, "dismissAnimation"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 243
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    const-string p1, "dismiss"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startProgressAnimation(Ljava/lang/Runnable;)V
    .registers 4

    .line 251
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getSpinnerAVD()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    .line 252
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez v1, :cond_1e

    if-nez v0, :cond_b

    goto :goto_1e

    .line 256
    :cond_b
    const-string/jumbo v1, "spinner"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->animationWithTimeout(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 257
    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 263
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 253
    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final startShowAnimation(Ljava/lang/Runnable;)V
    .registers 5

    .line 219
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz v0, :cond_8

    .line 220
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 223
    :cond_8
    const-string/jumbo v0, "showAnimation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 224
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    const-string/jumbo p1, "show"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    return-void
.end method
