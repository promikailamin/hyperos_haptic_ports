.class public Lcom/android/internal/compat/AlertControllerImpl2;
.super Ljava/lang/Object;
.source "AlertControllerImpl2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/AlertControllerImpl2$ButtonHandler;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AlertControllerImpl2"


# instance fields
.field private final blacklist mAlertDialogLayout:I

.field private blacklist mAlertDialogView:Landroid/view/ViewGroup;

.field private blacklist mBaseUI:Landroid/app/Dialog;

.field private blacklist mButtonHandler:Landroid/view/View$OnClickListener;

.field private blacklist mButtonNegative:Landroid/widget/Button;

.field private blacklist mButtonNegativeMessage:Landroid/os/Message;

.field private blacklist mButtonNegativeText:Ljava/lang/CharSequence;

.field private blacklist mButtonNeutral:Landroid/widget/Button;

.field private blacklist mButtonNeutralMessage:Landroid/os/Message;

.field private blacklist mButtonNeutralText:Ljava/lang/CharSequence;

.field private blacklist mButtonPositive:Landroid/widget/Button;

.field private blacklist mButtonPositiveMessage:Landroid/os/Message;

.field private blacklist mButtonPositiveText:Ljava/lang/CharSequence;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCustomTitleView:Landroid/view/View;

.field private blacklist mDialogInterface:Landroid/content/DialogInterface;

.field private blacklist mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsOpenStyle:Z

.field private blacklist mListView:Landroid/widget/ListView;

.field private blacklist mMiuixPackageName:Ljava/lang/String;

.field private blacklist mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private blacklist mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private blacklist mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private blacklist mScrollView:Landroid/widget/ScrollView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleView:Landroid/widget/TextView;

.field private blacklist mView:Landroid/view/View;

.field private final blacklist mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBaseUI(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mBaseUI:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNegative(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutral(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonPositive(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogInterface(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/content/DialogInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleClick(Lcom/android/internal/compat/AlertControllerImpl2;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/compat/AlertControllerImpl2;->handleClick(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecycle(Lcom/android/internal/compat/AlertControllerImpl2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/compat/AlertControllerImpl2;->recycle()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mIsOpenStyle:Z

    .line 62
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl2$1;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerImpl2$1;-><init>(Lcom/android/internal/compat/AlertControllerImpl2;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 111
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl2$2;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerImpl2$2;-><init>(Lcom/android/internal/compat/AlertControllerImpl2;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl2$3;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerImpl2$3;-><init>(Lcom/android/internal/compat/AlertControllerImpl2;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl2$4;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerImpl2$4;-><init>(Lcom/android/internal/compat/AlertControllerImpl2;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl2$5;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerImpl2$5;-><init>(Lcom/android/internal/compat/AlertControllerImpl2;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 149
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    .line 150
    iput-object p3, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mWindow:Landroid/view/Window;

    .line 151
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mDialogInterface:Landroid/content/DialogInterface;

    .line 152
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl2$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/android/internal/compat/AlertControllerImpl2$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 155
    const-string v0, "miuix.stub"

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    goto :goto_4d

    .line 157
    :cond_47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    .line 159
    :goto_4d
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v2, "miuix_appcompat_alert_dialog"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mAlertDialogLayout:I

    .line 161
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "resdir":Ljava/lang/String;
    return-void
.end method

.method private blacklist createMiuixShareAlertDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 26
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 453
    const/4 v2, 0x0

    :try_start_3
    const-string v0, "miuix.stub.MiuixStub"

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 453
    const/4 v4, 0x1

    invoke-static {v0, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 455
    .local v0, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "createMiuiShareAlertDialog"

    const/16 v5, 0x11

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/CharSequence;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x4

    aput-object v7, v6, v11

    const-class v7, Landroid/view/View;

    const/4 v12, 0x5

    aput-object v7, v6, v12

    const-class v7, Landroid/view/View;

    const/4 v13, 0x6

    aput-object v7, v6, v13

    const-class v7, Ljava/lang/CharSequence;

    const/4 v14, 0x7

    aput-object v7, v6, v14

    const-class v7, Landroid/content/DialogInterface$OnClickListener;

    const/16 v15, 0x8

    aput-object v7, v6, v15

    const-class v7, Ljava/lang/CharSequence;

    const/16 v16, 0x9

    aput-object v7, v6, v16

    const-class v7, Landroid/content/DialogInterface$OnClickListener;

    const/16 v17, 0xa

    aput-object v7, v6, v17

    const-class v7, Ljava/lang/CharSequence;

    const/16 v18, 0xb

    aput-object v7, v6, v18

    const-class v7, Landroid/content/DialogInterface$OnClickListener;

    const/16 v19, 0xc

    aput-object v7, v6, v19

    const-class v7, Landroid/content/DialogInterface$OnDismissListener;

    const/16 v20, 0xd

    aput-object v7, v6, v20

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v21, 0xe

    aput-object v7, v6, v21

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v22, 0xf

    aput-object v7, v6, v22

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x10

    aput-object v7, v6, v23

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 463
    .local v3, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "AlertDialog.Theme.DayNight"

    const-string v15, "style"

    const-string v14, "miuix.stub"

    .line 466
    invoke-virtual {v6, v7, v15, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 468
    .local v6, "miuiAlertDialogThemeId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/compat/AlertControllerImpl2;->prepareCustomView()V

    .line 469
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    .line 470
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    iget-object v7, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mTitle:Ljava/lang/CharSequence;

    aput-object v7, v5, v9

    aput-object v2, v5, v10

    .line 471
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v11

    iget-object v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mCustomTitleView:Landroid/view/View;

    aput-object v4, v5, v12

    iget-object v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    aput-object v4, v5, v13

    iget-object v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositiveText:Ljava/lang/CharSequence;

    const/4 v7, 0x7

    aput-object v4, v5, v7

    iget-object v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/16 v7, 0x8

    aput-object v4, v5, v7

    iget-object v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutralText:Ljava/lang/CharSequence;

    aput-object v4, v5, v16

    iget-object v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    aput-object v4, v5, v17

    iget-object v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegativeText:Ljava/lang/CharSequence;

    aput-object v4, v5, v18

    iget-object v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    aput-object v4, v5, v19

    iget-object v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    aput-object v4, v5, v20

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/compat/AlertControllerImpl2;->shouldAvoidScroll()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v21

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/compat/AlertControllerImpl2;->isPrivacyProctected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v22

    iget-boolean v4, v1, Lcom/android/internal/compat/AlertControllerImpl2;->mIsOpenStyle:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v23

    .line 469
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Dialog;
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e8} :catch_e9

    return-object v4

    .line 477
    .end local v0    # "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "declaredMethod":Ljava/lang/reflect/Method;
    .end local v6    # "miuiAlertDialogThemeId":I
    :catch_e9
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AlertControllerImpl2"

    const-string v4, "createMiuixAlertDialog failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v2
.end method

.method private blacklist ensureSurDecor()V
    .registers 5

    .line 185
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v2, "dialog_dim_bg"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "dialogDimBg":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    return-void
.end method

.method private blacklist getViewHeight(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 525
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 527
    .local v1, "w":I
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 529
    .local v0, "h":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 532
    .local v2, "height":I
    return v2
.end method

.method private blacklist handleClick(I)V
    .registers 6
    .param p1, "what"    # I

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "m":Landroid/os/Message;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_d

    .line 553
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_24

    .line 554
    :cond_d
    const/4 v1, -0x2

    if-ne p1, v1, :cond_19

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_19

    .line 555
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_24

    .line 556
    :cond_19
    const/4 v1, -0x3

    if-ne p1, v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_24

    .line 557
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 559
    :cond_24
    :goto_24
    if-eqz v0, :cond_29

    .line 560
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 562
    :cond_29
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 563
    return-void
.end method

.method private blacklist isEllipsized(Landroid/widget/TextView;I)Z
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "buttonWidth"    # I

    .line 445
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 446
    .local v0, "spaceWidth":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 447
    .local v1, "textWidth":I
    if-le v1, v0, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method private blacklist isPrivacyProctected()Z
    .registers 5

    .line 495
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 496
    return v1

    .line 498
    :cond_6
    const v2, 0x110a00bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 499
    .local v0, "privacy":Landroid/widget/TextView;
    if-nez v0, :cond_12

    .line 500
    return v1

    .line 502
    :cond_12
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method private blacklist needRemoveCustomMargin()Z
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 344
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 343
    :goto_1b
    return v0
.end method

.method private blacklist prepareCustomView()V
    .registers 3

    .line 486
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 487
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 488
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_11

    .line 489
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 492
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_11
    return-void
.end method

.method private blacklist prepareCutomTitle(Landroid/content/DialogInterface$OnClickListener;)Landroid/view/View;
    .registers 6
    .param p1, "closeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 507
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110c0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, "customTitle":Landroid/view/View;
    const v1, 0x110a003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 510
    .local v1, "titleView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    const v2, 0x110a003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 512
    .local v2, "closeButton":Landroid/widget/Button;
    new-instance v3, Lcom/android/internal/compat/AlertControllerImpl2$6;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/compat/AlertControllerImpl2$6;-><init>(Lcom/android/internal/compat/AlertControllerImpl2;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    return-object v0
.end method

.method private blacklist recycle()V
    .registers 1

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertControllerImpl2;->dismissWithAnim()V

    .line 146
    return-void
.end method

.method private blacklist relayoutButtons(Landroid/widget/LinearLayout;)V
    .registers 3
    .param p1, "buttonGroup"    # Landroid/widget/LinearLayout;

    .line 429
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 430
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 433
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_e

    .line 434
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    :cond_e
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_15

    .line 437
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    :cond_15
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_1c

    .line 440
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 442
    :cond_1c
    return-void
.end method

.method private blacklist setupButtons(Landroid/view/ViewGroup;)V
    .registers 14
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "hasButton":Z
    const/4 v1, 0x0

    .line 352
    .local v1, "visibleCount":I
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositive:Landroid/widget/Button;

    .line 353
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_34

    .line 354
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 356
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_34

    .line 358
    :cond_25
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 360
    const/4 v0, 0x1

    .line 361
    add-int/lit8 v1, v1, 0x1

    .line 366
    :cond_34
    :goto_34
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegative:Landroid/widget/Button;

    .line 367
    if-eqz v2, :cond_63

    .line 368
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 370
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_63

    .line 372
    :cond_54
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    const/4 v0, 0x1

    .line 375
    add-int/lit8 v1, v1, 0x1

    .line 380
    :cond_63
    :goto_63
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutral:Landroid/widget/Button;

    .line 381
    if-eqz v2, :cond_92

    .line 382
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 384
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_92

    .line 386
    :cond_83
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 388
    const/4 v0, 0x1

    .line 389
    add-int/lit8 v1, v1, 0x1

    .line 394
    :cond_92
    :goto_92
    if-eqz v0, :cond_f7

    .line 395
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v4, "buttonGroup"

    const-string v5, "id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 397
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 398
    .local v3, "buttonGroup":Landroid/widget/LinearLayout;
    const/4 v4, 0x2

    if-le v1, v4, :cond_b1

    .line 399
    invoke-direct {p0, v3}, Lcom/android/internal/compat/AlertControllerImpl2;->relayoutButtons(Landroid/widget/LinearLayout;)V

    goto :goto_f6

    .line 400
    :cond_b1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_b5

    goto :goto_f6

    .line 404
    :cond_b5
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 405
    .local v5, "windowWidth":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 406
    .local v6, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v8

    add-int/2addr v7, v8

    .line 407
    .local v7, "marginH":I
    sub-int v8, v5, v7

    div-int/2addr v8, v4

    .line 408
    .local v8, "buttonAvailableWidth":I
    const/4 v4, 0x0

    .line 409
    .local v4, "ellipsized":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d5
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_f1

    .line 410
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 411
    .local v10, "child":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_eb

    .line 412
    invoke-direct {p0, v10, v8}, Lcom/android/internal/compat/AlertControllerImpl2;->isEllipsized(Landroid/widget/TextView;I)Z

    move-result v4

    .line 414
    :cond_eb
    if-eqz v4, :cond_ee

    .line 415
    goto :goto_f1

    .line 409
    .end local v10    # "child":Landroid/widget/TextView;
    :cond_ee
    add-int/lit8 v9, v9, 0x1

    goto :goto_d5

    .line 418
    .end local v9    # "i":I
    :cond_f1
    :goto_f1
    if-eqz v4, :cond_f6

    .line 419
    invoke-direct {p0, v3}, Lcom/android/internal/compat/AlertControllerImpl2;->relayoutButtons(Landroid/widget/LinearLayout;)V

    .line 422
    .end local v2    # "id":I
    .end local v3    # "buttonGroup":Landroid/widget/LinearLayout;
    .end local v4    # "ellipsized":Z
    .end local v5    # "windowWidth":I
    .end local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "marginH":I
    .end local v8    # "buttonAvailableWidth":I
    :cond_f6
    :goto_f6
    goto :goto_fa

    .line 423
    :cond_f7
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 425
    :goto_fa
    return-void
.end method

.method private blacklist setupContent(Landroid/view/ViewGroup;)V
    .registers 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 304
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v2, "scrollView"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mScrollView:Landroid/widget/ScrollView;

    .line 307
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 308
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 309
    return-void
.end method

.method private blacklist setupCustom(Landroid/widget/FrameLayout;)V
    .registers 8
    .param p1, "customPanel"    # Landroid/widget/FrameLayout;

    .line 312
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    if-eqz v0, :cond_63

    .line 313
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 314
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_11

    .line 315
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 317
    :cond_11
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mAlertDialogView:Landroid/view/ViewGroup;

    const v2, 0x102002b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 318
    .local v1, "custom":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_34

    .line 320
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 322
    :cond_34
    invoke-direct {p0}, Lcom/android/internal/compat/AlertControllerImpl2;->needRemoveCustomMargin()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    .line 323
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 326
    :cond_43
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_62

    .line 327
    check-cast v2, Landroid/view/ViewGroup;

    .line 328
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const v4, 0x102000d

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 329
    .local v4, "progressBar":Landroid/view/View;
    if-eqz v4, :cond_5c

    instance-of v5, v4, Landroid/widget/ProgressBar;

    if-nez v5, :cond_5c

    .line 330
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_62

    .line 332
    :cond_5c
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 334
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 337
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "custom":Landroid/widget/FrameLayout;
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "progressBar":Landroid/view/View;
    :cond_62
    :goto_62
    goto :goto_68

    .line 338
    :cond_63
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 340
    :goto_68
    return-void
.end method

.method private blacklist setupTitle(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 272
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 273
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_28

    .line 274
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v3, "alertTitle"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 276
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mTitleView:Landroid/widget/TextView;

    .line 277
    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .end local v1    # "id":I
    goto :goto_2d

    .line 285
    :cond_28
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 287
    :goto_2d
    return-void
.end method

.method private blacklist shouldAvoidScroll()Z
    .registers 6

    .line 536
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 537
    return v1

    .line 539
    :cond_6
    const v2, 0x110a00ba

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/ScreenView;

    .line 540
    .local v0, "screenView":Lmiui/view/ScreenView;
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    const v3, 0x110a007f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 541
    .local v2, "miShare":Landroid/view/View;
    if-eqz v0, :cond_36

    if-nez v2, :cond_1d

    goto :goto_36

    .line 544
    :cond_1d
    invoke-virtual {v0}, Lmiui/view/ScreenView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_35

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_2c

    goto :goto_35

    .line 547
    :cond_2c
    invoke-virtual {v0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_34

    move v1, v4

    :cond_34
    return v1

    .line 545
    :cond_35
    :goto_35
    return v1

    .line 542
    :cond_36
    :goto_36
    return v1
.end method


# virtual methods
.method public blacklist dismissWithAnim()V
    .registers 7

    .line 582
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mBaseUI:Landroid/app/Dialog;

    if-nez v0, :cond_5

    .line 583
    return-void

    .line 586
    :cond_5
    :try_start_5
    const-string v0, "miuix.stub.MiuixStub"

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    .line 587
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 586
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 588
    .local v0, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "dismissWithAnim"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Dialog;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 590
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 591
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mBaseUI:Landroid/app/Dialog;

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2e

    .line 594
    nop

    .end local v0    # "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    goto :goto_36

    .line 592
    :catch_2e
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlertControllerImpl2"

    const-string v2, "call miuix dismissWithAnim failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_36
    return-void
.end method

.method public blacklist getButton(I)Landroid/widget/Button;
    .registers 3
    .param p1, "whichButton"    # I

    .line 290
    packed-switch p1, :pswitch_data_e

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 292
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 294
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 296
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public blacklist getOpenStyle()Z
    .registers 2

    .line 602
    iget-boolean v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mIsOpenStyle:Z

    return v0
.end method

.method public blacklist installContent()V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0}, Lcom/android/internal/compat/AlertControllerImpl2;->prepareCutomTitle(Landroid/content/DialogInterface$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mCustomTitleView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/compat/AlertControllerImpl2;->createMiuixShareAlertDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mBaseUI:Landroid/app/Dialog;

    .line 170
    if-eqz v0, :cond_13

    .line 171
    return-void

    .line 173
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/compat/AlertControllerImpl2;->ensureSurDecor()V

    .line 174
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v2, "parentPanel"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mAlertDialogView:Landroid/view/ViewGroup;

    .line 177
    if-eqz v1, :cond_35

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertControllerImpl2;->setupView()V

    .line 181
    .end local v0    # "id":I
    :cond_35
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 566
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mBaseUI:Landroid/app/Dialog;

    if-nez v0, :cond_5

    .line 567
    return-void

    .line 570
    :cond_5
    :try_start_5
    const-string v0, "miuix.stub.MiuixStub"

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 570
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 572
    .local v0, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "onConfigurationChanged"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/Dialog;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 574
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 575
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mBaseUI:Landroid/app/Dialog;

    aput-object v5, v3, v6

    aput-object p1, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_35

    .line 578
    nop

    .end local v0    # "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    goto :goto_3d

    .line 576
    :catch_35
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlertControllerImpl2"

    const-string v2, "call miuix onConfigurationChanged failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method

.method public blacklist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 195
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .line 234
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 235
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 238
    :cond_a
    packed-switch p1, :pswitch_data_26

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_15
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 241
    iput-object p4, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonPositiveMessage:Landroid/os/Message;

    .line 242
    goto :goto_24

    .line 245
    :pswitch_1a
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 246
    iput-object p4, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNegativeMessage:Landroid/os/Message;

    .line 247
    goto :goto_24

    .line 250
    :pswitch_1f
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 251
    iput-object p4, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mButtonNeutralMessage:Landroid/os/Message;

    .line 252
    nop

    .line 257
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public blacklist setCustomTitle(Landroid/view/View;)V
    .registers 2
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 268
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mCustomTitleView:Landroid/view/View;

    .line 269
    return-void
.end method

.method public blacklist setOpenStyle(Z)V
    .registers 2
    .param p1, "openStyle"    # Z

    .line 598
    iput-boolean p1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mIsOpenStyle:Z

    .line 599
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 261
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mTitle:Ljava/lang/CharSequence;

    .line 262
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 263
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_9
    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 229
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mView:Landroid/view/View;

    .line 230
    return-void
.end method

.method public blacklist setupView()V
    .registers 9

    .line 199
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v2, "topPanel"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 201
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 202
    .local v1, "topPanle":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1d

    .line 203
    invoke-direct {p0, v1}, Lcom/android/internal/compat/AlertControllerImpl2;->setupTitle(Landroid/view/ViewGroup;)V

    .line 205
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v5, "contentPanel"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 207
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 208
    .local v2, "contentPanel":Landroid/view/ViewGroup;
    if-eqz v2, :cond_3a

    .line 210
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 213
    :cond_3a
    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v6, "customPanel"

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 215
    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 216
    .local v4, "customPanel":Landroid/widget/FrameLayout;
    if-eqz v4, :cond_55

    .line 217
    invoke-direct {p0, v4}, Lcom/android/internal/compat/AlertControllerImpl2;->setupCustom(Landroid/widget/FrameLayout;)V

    .line 219
    :cond_55
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mMiuixPackageName:Ljava/lang/String;

    const-string v7, "buttonPanel"

    invoke-virtual {v5, v7, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 221
    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl2;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 222
    .local v3, "buttonPanel":Landroid/view/ViewGroup;
    if-eqz v3, :cond_70

    .line 223
    invoke-direct {p0, v3}, Lcom/android/internal/compat/AlertControllerImpl2;->setupButtons(Landroid/view/ViewGroup;)V

    .line 225
    :cond_70
    return-void
.end method
