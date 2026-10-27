.class public Lcom/android/internal/compat/AlertControllerImpl;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;
    }
.end annotation


# instance fields
.field private final blacklist mAlertDialogLayout:I

.field private blacklist mAlertDialogView:Landroid/view/ViewGroup;

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

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mListView:Landroid/widget/ListView;

.field private blacklist mMiuixPackageName:Ljava/lang/String;

.field private blacklist mScrollView:Landroid/widget/ScrollView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleView:Landroid/widget/TextView;

.field private blacklist mView:Landroid/view/View;

.field private final blacklist mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmButtonNegative(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutral(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonPositive(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogInterface(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/content/DialogInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerImpl$1;-><init>(Lcom/android/internal/compat/AlertControllerImpl;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 105
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/android/internal/compat/AlertControllerImpl;->mWindow:Landroid/view/Window;

    .line 107
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    .line 108
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 111
    const-string/jumbo v0, "miuix.stub"

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    goto :goto_2f

    .line 113
    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    .line 115
    :goto_2f
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string/jumbo v2, "miuix_appcompat_alert_dialog"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogLayout:I

    .line 117
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "resdir":Ljava/lang/String;
    return-void
.end method

.method private blacklist ensureSurDecor()V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v2, "dialog_dim_bg"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "dialogDimBg":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    return-void
.end method

.method private blacklist isEllipsized(Landroid/widget/TextView;I)Z
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "buttonWidth"    # I

    .line 387
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 388
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

    .line 389
    .local v1, "textWidth":I
    if-le v1, v0, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method private blacklist needRemoveCustomMargin()Z
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 285
    :goto_1b
    return v0
.end method

.method private blacklist relayoutButtons(Landroid/widget/LinearLayout;)V
    .registers 3
    .param p1, "buttonGroup"    # Landroid/widget/LinearLayout;

    .line 371
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 372
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 375
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_e

    .line 376
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    :cond_e
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_15

    .line 379
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    :cond_15
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_1c

    .line 382
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    :cond_1c
    return-void
.end method

.method private blacklist setupButtons(Landroid/view/ViewGroup;)V
    .registers 14
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "hasButton":Z
    const/4 v1, 0x0

    .line 294
    .local v1, "visibleCount":I
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    .line 295
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_34

    .line 296
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 298
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_34

    .line 300
    :cond_25
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    const/4 v0, 0x1

    .line 303
    add-int/lit8 v1, v1, 0x1

    .line 308
    :cond_34
    :goto_34
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    .line 309
    if-eqz v2, :cond_63

    .line 310
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 312
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_63

    .line 314
    :cond_54
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    const/4 v0, 0x1

    .line 317
    add-int/lit8 v1, v1, 0x1

    .line 322
    :cond_63
    :goto_63
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    .line 323
    if-eqz v2, :cond_92

    .line 324
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 326
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_92

    .line 328
    :cond_83
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 330
    const/4 v0, 0x1

    .line 331
    add-int/lit8 v1, v1, 0x1

    .line 336
    :cond_92
    :goto_92
    if-eqz v0, :cond_f7

    .line 337
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v4, "buttonGroup"

    const-string v5, "id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 339
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 340
    .local v3, "buttonGroup":Landroid/widget/LinearLayout;
    const/4 v4, 0x2

    if-le v1, v4, :cond_b1

    .line 341
    invoke-direct {p0, v3}, Lcom/android/internal/compat/AlertControllerImpl;->relayoutButtons(Landroid/widget/LinearLayout;)V

    goto :goto_f6

    .line 342
    :cond_b1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_b5

    goto :goto_f6

    .line 346
    :cond_b5
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 347
    .local v5, "windowWidth":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 348
    .local v6, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v8

    add-int/2addr v7, v8

    .line 349
    .local v7, "marginH":I
    sub-int v8, v5, v7

    div-int/2addr v8, v4

    .line 350
    .local v8, "buttonAvailableWidth":I
    const/4 v4, 0x0

    .line 351
    .local v4, "ellipsized":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d5
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_f1

    .line 352
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 353
    .local v10, "child":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_eb

    .line 354
    invoke-direct {p0, v10, v8}, Lcom/android/internal/compat/AlertControllerImpl;->isEllipsized(Landroid/widget/TextView;I)Z

    move-result v4

    .line 356
    :cond_eb
    if-eqz v4, :cond_ee

    .line 357
    goto :goto_f1

    .line 351
    .end local v10    # "child":Landroid/widget/TextView;
    :cond_ee
    add-int/lit8 v9, v9, 0x1

    goto :goto_d5

    .line 360
    .end local v9    # "i":I
    :cond_f1
    :goto_f1
    if-eqz v4, :cond_f6

    .line 361
    invoke-direct {p0, v3}, Lcom/android/internal/compat/AlertControllerImpl;->relayoutButtons(Landroid/widget/LinearLayout;)V

    .line 364
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

    .line 365
    :cond_f7
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 367
    :goto_fa
    return-void
.end method

.method private blacklist setupContent(Landroid/view/ViewGroup;)V
    .registers 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 246
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string/jumbo v2, "scrollView"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    .line 249
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 250
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 251
    return-void
.end method

.method private blacklist setupCustom(Landroid/widget/FrameLayout;)V
    .registers 8
    .param p1, "customPanel"    # Landroid/widget/FrameLayout;

    .line 254
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_63

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 256
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_11

    .line 257
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    :cond_11
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    const v2, 0x102002b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 260
    .local v1, "custom":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_34

    .line 262
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 264
    :cond_34
    invoke-direct {p0}, Lcom/android/internal/compat/AlertControllerImpl;->needRemoveCustomMargin()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    .line 265
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 268
    :cond_43
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_62

    .line 269
    check-cast v2, Landroid/view/ViewGroup;

    .line 270
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const v4, 0x102000d

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 271
    .local v4, "progressBar":Landroid/view/View;
    if-eqz v4, :cond_5c

    instance-of v5, v4, Landroid/widget/ProgressBar;

    if-nez v5, :cond_5c

    .line 272
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_62

    .line 274
    :cond_5c
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 276
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 279
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "custom":Landroid/widget/FrameLayout;
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "progressBar":Landroid/view/View;
    :cond_62
    :goto_62
    goto :goto_68

    .line 280
    :cond_63
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 282
    :goto_68
    return-void
.end method

.method private blacklist setupTitle(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 214
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 215
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_28

    .line 216
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v3, "alertTitle"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    .line 219
    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .end local v1    # "id":I
    goto :goto_2d

    .line 227
    :cond_28
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    :goto_2d
    return-void
.end method


# virtual methods
.method public blacklist getButton(I)Landroid/widget/Button;
    .registers 3
    .param p1, "whichButton"    # I

    .line 232
    packed-switch p1, :pswitch_data_e

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 234
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 236
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 238
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public blacklist installContent()V
    .registers 5

    .line 123
    invoke-direct {p0}, Lcom/android/internal/compat/AlertControllerImpl;->ensureSurDecor()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string/jumbo v2, "parentPanel"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertControllerImpl;->setupView()V

    .line 128
    return-void
.end method

.method public blacklist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 140
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

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

    .line 177
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 178
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 181
    :cond_a
    packed-switch p1, :pswitch_data_26

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_15
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 184
    iput-object p4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;

    .line 185
    goto :goto_24

    .line 188
    :pswitch_1a
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 189
    iput-object p4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;

    .line 190
    goto :goto_24

    .line 193
    :pswitch_1f
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 194
    iput-object p4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;

    .line 195
    nop

    .line 200
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

    .line 210
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    .line 211
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 203
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    .line 204
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 205
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_9
    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 173
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    .line 174
    return-void
.end method

.method public blacklist setupView()V
    .registers 9

    .line 144
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string/jumbo v2, "topPanel"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 147
    .local v1, "topPanle":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1e

    .line 148
    invoke-direct {p0, v1}, Lcom/android/internal/compat/AlertControllerImpl;->setupTitle(Landroid/view/ViewGroup;)V

    .line 150
    :cond_1e
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v5, "contentPanel"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 152
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 153
    .local v2, "contentPanel":Landroid/view/ViewGroup;
    if-eqz v2, :cond_3b

    .line 155
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 158
    :cond_3b
    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v6, "customPanel"

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 160
    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 161
    .local v4, "customPanel":Landroid/widget/FrameLayout;
    if-eqz v4, :cond_56

    .line 162
    invoke-direct {p0, v4}, Lcom/android/internal/compat/AlertControllerImpl;->setupCustom(Landroid/widget/FrameLayout;)V

    .line 164
    :cond_56
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v7, "buttonPanel"

    invoke-virtual {v5, v7, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 166
    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 167
    .local v3, "buttonPanel":Landroid/view/ViewGroup;
    if-eqz v3, :cond_71

    .line 168
    invoke-direct {p0, v3}, Lcom/android/internal/compat/AlertControllerImpl;->setupButtons(Landroid/view/ViewGroup;)V

    .line 170
    :cond_71
    return-void
.end method
