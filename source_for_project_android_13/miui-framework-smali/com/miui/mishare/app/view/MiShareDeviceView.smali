.class public Lcom/miui/mishare/app/view/MiShareDeviceView;
.super Landroid/widget/LinearLayout;
.source "MiShareDeviceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;
    }
.end annotation


# static fields
.field private static final blacklist ANIM_SHOW_HIDE:I = 0x1f4

.field public static final blacklist DEVICE_STATUS_FAILED:I = 0x3

.field public static final blacklist DEVICE_STATUS_IDLE:I = 0x1

.field public static final blacklist DEVICE_STATUS_SENDING:I = 0x2

.field public static final blacklist DEVICE_STATUS_SUCCESS:I = 0x4

.field public static final blacklist DEVICE_STATUS_WAITING:I = 0x5

.field public static final blacklist DEVICE_TYPE_GLOBAL_PAD:I = 0x5

.field public static final blacklist DEVICE_TYPE_GLOBAL_PC:I = 0x4

.field public static final blacklist DEVICE_TYPE_GLOBAL_PHONE:I = 0x6

.field public static final blacklist DEVICE_TYPE_PAD:I = 0x3

.field public static final blacklist DEVICE_TYPE_PC:I = 0x2

.field public static final blacklist DEVICE_TYPE_PHONE:I = 0x1

.field public static final blacklist MINI_PC:I = 0x24

.field public static final blacklist REDMI_LAPTOP:I = 0x23

.field public static final blacklist TYPE_ASUS:I = 0xb

.field public static final blacklist TYPE_BLACKSHARK:I = 0x5

.field public static final blacklist TYPE_GLOBAL:I = 0x0

.field public static final blacklist TYPE_HISENSE:I = 0xa

.field public static final blacklist TYPE_LENOVO:I = 0xf

.field public static final blacklist TYPE_MEIZU:I = 0x6

.field public static final blacklist TYPE_NUBIA:I = 0x9

.field public static final blacklist TYPE_ONEPLUS:I = 0x7

.field public static final blacklist TYPE_OPPO:I = 0x3

.field public static final blacklist TYPE_REALME:I = 0x4

.field public static final blacklist TYPE_ROG:I = 0xc

.field public static final blacklist TYPE_SAMSUNG:I = 0xe

.field public static final blacklist TYPE_SMARTISAN:I = 0xd

.field public static final blacklist TYPE_VIVO:I = 0x2

.field public static final blacklist TYPE_XIAOMI:I = 0x1

.field public static final blacklist TYPE_ZTE:I = 0x8

.field public static final blacklist XIAOMI_LAPTOP:I = 0x22


# instance fields
.field private blacklist isGlobal:Z

.field private blacklist mCurrentStatus:I

.field private blacklist mDevice:Landroid/view/View;

.field private blacklist mDeviceCover:Landroid/view/View;

.field private blacklist mDeviceGlobal:Landroid/widget/ImageView;

.field private blacklist mDeviceIcon:Landroid/view/View;

.field private blacklist mDeviceIconInner:Landroid/view/View;

.field private blacklist mDeviceModelNameTv:Landroid/widget/TextView;

.field private blacklist mDeviceNameTv:Landroid/widget/TextView;

.field private blacklist mDeviceType:Landroid/widget/ImageView;

.field private blacklist mLogoIv:Landroid/widget/ImageView;

.field private blacklist mLogoView:Landroid/view/View;

.field private blacklist mNoticeView:Lcom/miui/mishare/app/view/NoticeView;

.field private blacklist mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

.field private blacklist mStatusIv:Landroid/widget/ImageView;

.field private blacklist showProgress:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->initView()V

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->initView()V

    .line 100
    return-void
.end method

.method private blacklist animHide(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 355
    return-void

    .line 357
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 358
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 359
    .local v1, "alpha":F
    if-eqz v0, :cond_1c

    .line 360
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 362
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x43fa0000    # 500.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 364
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 365
    return-void
.end method

.method private blacklist animShow(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    .line 336
    return-void

    .line 338
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 339
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 340
    .local v2, "alpha":F
    if-eqz v0, :cond_24

    .line 341
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 343
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_34

    .line 344
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 348
    :cond_34
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sub-float/2addr v1, v2

    const/high16 v4, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 350
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 351
    return-void
.end method

.method private blacklist initView()V
    .registers 3

    .line 103
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110c0047

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    const v0, 0x110a00af

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDevice:Landroid/view/View;

    .line 105
    const v0, 0x110a00b1

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    .line 106
    const v0, 0x110a0078

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIconInner:Landroid/view/View;

    .line 107
    const v0, 0x110a00d3

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    .line 108
    const v0, 0x110a00d2

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    .line 109
    const v0, 0x110a006c

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    .line 110
    const v0, 0x110a006d

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    .line 111
    const v0, 0x110a006e

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    .line 112
    const v0, 0x110a006f

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    .line 113
    const v0, 0x110a00b2

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    .line 114
    const v0, 0x110a00a2

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/app/view/CircleProgress;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    .line 115
    const v0, 0x110a00b0

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceCover:Landroid/view/View;

    .line 116
    const v0, 0x110a0042

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/app/view/NoticeView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mNoticeView:Lcom/miui/mishare/app/view/NoticeView;

    .line 118
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDevice:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/mishare/app/util/ViewUtils;->handleTouchOf(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method private blacklist setDeviceSending()V
    .registers 4

    .line 368
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->stopAnimator()V

    .line 369
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1108002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 370
    .local v0, "sendingDrawable":Landroid/graphics/drawable/AnimatedVectorDrawable;
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView$1;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 378
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 379
    return-void
.end method

.method private blacklist setDeviceStatusName(ILjava/lang/String;Ljava/lang/String;ZI)V
    .registers 11
    .param p1, "status"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceModelName"    # Ljava/lang/String;
    .param p4, "isPhone"    # Z
    .param p5, "vendorId"    # I

    .line 226
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_13a

    .line 254
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    .line 256
    if-eqz p4, :cond_be

    .line 257
    move-object v1, p3

    .local v1, "mDeviceModelName":Ljava/lang/String;
    goto/16 :goto_f9

    .line 246
    .end local v1    # "mDeviceModelName":Ljava/lang/String;
    :pswitch_e
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    .line 247
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f01c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110600a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    goto/16 :goto_139

    .line 240
    :pswitch_3a
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f01bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110600a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    goto/16 :goto_139

    .line 234
    :pswitch_66
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    .line 235
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f01bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110600a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    goto/16 :goto_139

    .line 228
    :pswitch_92
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    .line 229
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f01be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110600a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    goto/16 :goto_139

    .line 258
    :cond_be
    const/16 v1, 0x22

    if-ne p5, v1, :cond_ce

    .line 259
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f02cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "mDeviceModelName":Ljava/lang/String;
    goto :goto_f9

    .line 260
    .end local v1    # "mDeviceModelName":Ljava/lang/String;
    :cond_ce
    const/16 v1, 0x23

    if-ne p5, v1, :cond_de

    .line 261
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f02ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "mDeviceModelName":Ljava/lang/String;
    goto :goto_f9

    .line 262
    .end local v1    # "mDeviceModelName":Ljava/lang/String;
    :cond_de
    const/16 v1, 0x24

    if-ne p5, v1, :cond_ee

    .line 263
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f0290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "mDeviceModelName":Ljava/lang/String;
    goto :goto_f9

    .line 265
    .end local v1    # "mDeviceModelName":Ljava/lang/String;
    :cond_ee
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f02cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    .restart local v1    # "mDeviceModelName":Ljava/lang/String;
    :goto_f9
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1106009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12e

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 271
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_139

    .line 274
    :cond_12e
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 279
    .end local v1    # "mDeviceModelName":Ljava/lang/String;
    :goto_139
    return-void

    :pswitch_data_13a
    .packed-switch 0x2
        :pswitch_92
        :pswitch_66
        :pswitch_3a
        :pswitch_e
    .end packed-switch
.end method

.method private blacklist setDeviceWaiting()V
    .registers 4

    .line 382
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->stopAnimator()V

    .line 383
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1108002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 384
    .local v0, "waitingDrawable":Landroid/graphics/drawable/AnimatedVectorDrawable;
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView$2;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 392
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 393
    return-void
.end method

.method private blacklist showFailureStatus()V
    .registers 4

    .line 440
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->showProgress:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_b

    .line 441
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setVisibility(I)V

    .line 443
    :cond_b
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    new-instance v0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition-IA;)V

    .line 449
    .local v0, "transition":Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 450
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 451
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const v2, 0x11080154

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    return-void
.end method

.method private blacklist showIDLEStatus()V
    .registers 3

    .line 470
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->stopAnimStatus()V

    .line 471
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->isGlobal:Z

    if-eqz v0, :cond_23

    .line 473
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    .line 476
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    .line 478
    :cond_23
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    .line 480
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    .line 481
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceCover:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    .line 483
    :goto_37
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setVisibility(I)V

    .line 484
    return-void
.end method

.method private blacklist showSendingStatus()V
    .registers 4

    .line 417
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->showProgress:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_39

    .line 418
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->stopAnimator()V

    .line 419
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->isGlobal:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 421
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d

    .line 424
    :cond_1e
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :goto_2d
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressPercent(F)V

    .line 429
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    invoke-virtual {v0, v2}, Lcom/miui/mishare/app/view/CircleProgress;->setVisibility(I)V

    goto :goto_50

    .line 431
    :cond_39
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animHide(Landroid/view/View;)V

    .line 434
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceCover:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animHide(Landroid/view/View;)V

    .line 435
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceSending()V

    .line 437
    :goto_50
    return-void
.end method

.method private blacklist showSuccessStatus()V
    .registers 4

    .line 455
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->showProgress:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_b

    .line 456
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setVisibility(I)V

    .line 458
    :cond_b
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    new-instance v0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition-IA;)V

    .line 464
    .local v0, "transition":Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 465
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 466
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const v2, 0x11080155

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 467
    return-void
.end method

.method private blacklist showWaitingStatus()V
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceWaiting()V

    .line 414
    return-void
.end method

.method private blacklist stopAnimStatus()V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->stopAnimator()V

    .line 398
    return-void
.end method

.method private blacklist stopAnimator()V
    .registers 3

    .line 401
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 402
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1f

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 403
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 404
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 406
    :cond_1f
    return-void
.end method


# virtual methods
.method public blacklist getIconView()Landroid/view/View;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDevice:Landroid/view/View;

    return-object v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 543
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 544
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->stopAnimStatus()V

    .line 545
    return-void
.end method

.method public blacklist setDeviceName(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hasMore"    # Z

    .line 312
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    if-nez p2, :cond_6

    move-object v1, p1

    goto :goto_17

    :cond_6
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f01b7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method public blacklist setDeviceStatus(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 10
    .param p1, "miShareDevice"    # Lcom/miui/mishare/app/model/MiShareDevice;

    .line 492
    iget v6, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    .line 493
    .local v6, "status":I
    iget-boolean v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->showProgress:Z

    iput-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->showProgress:Z

    .line 494
    iget-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceModelName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/mishare/app/model/MiShareDevice;->isPC()Z

    move-result v0

    const/4 v7, 0x1

    xor-int/lit8 v4, v0, 0x1

    iget v5, p1, Lcom/miui/mishare/app/model/MiShareDevice;->vendorId:I

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStatusName(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 496
    iget v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mCurrentStatus:I

    if-ne v0, v6, :cond_1e

    if-ne v6, v7, :cond_38

    .line 497
    :cond_1e
    iput v6, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mCurrentStatus:I

    .line 498
    packed-switch v6, :pswitch_data_3a

    goto :goto_38

    .line 515
    :pswitch_24
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showWaitingStatus()V

    .line 516
    goto :goto_38

    .line 512
    :pswitch_28
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showSuccessStatus()V

    .line 513
    goto :goto_38

    .line 508
    :pswitch_2c
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showFailureStatus()V

    .line 509
    goto :goto_38

    .line 504
    :pswitch_30
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showSendingStatus()V

    .line 505
    goto :goto_38

    .line 501
    :pswitch_34
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showIDLEStatus()V

    .line 502
    nop

    .line 521
    :cond_38
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
    .end packed-switch
.end method

.method public blacklist setDeviceStyle(I)V
    .registers 4
    .param p1, "style"    # I

    .line 285
    packed-switch p1, :pswitch_data_3a

    .line 302
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    const v1, 0x110800f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_39

    .line 299
    :pswitch_c
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    const v1, 0x110800fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    goto :goto_39

    .line 296
    :pswitch_15
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    const v1, 0x110800fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    goto :goto_39

    .line 293
    :pswitch_1e
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceGlobal:Landroid/widget/ImageView;

    const v1, 0x110800fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    goto :goto_39

    .line 290
    :pswitch_27
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    const v1, 0x110800f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    goto :goto_39

    .line 287
    :pswitch_30
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceType:Landroid/widget/ImageView;

    const v1, 0x110800f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    nop

    .line 305
    :goto_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_30
        :pswitch_27
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method public blacklist setDeviceType(I)V
    .registers 6
    .param p1, "deviceType"    # I

    .line 137
    const v0, 0x11060019

    const v1, 0x1108011f

    const v2, 0x1108003e

    packed-switch p1, :pswitch_data_1a8

    .line 218
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 219
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    invoke-virtual {v1, v0}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    goto/16 :goto_1a6

    .line 213
    :pswitch_1d
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080034

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 214
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x1108011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x1106000d

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 216
    goto/16 :goto_1a6

    .line 208
    :pswitch_37
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1108003b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 209
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x11080125

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x11060016

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 211
    goto/16 :goto_1a6

    .line 203
    :pswitch_51
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1108003c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x11080126

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x11060017

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 206
    goto/16 :goto_1a6

    .line 198
    :pswitch_6b
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1108003a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 199
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x11080124

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x11060015

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 201
    goto/16 :goto_1a6

    .line 193
    :pswitch_85
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1108002f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x1108011a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x1106000a

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 196
    goto/16 :goto_1a6

    .line 188
    :pswitch_9f
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080033

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x1108011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x1106000c

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 191
    goto/16 :goto_1a6

    .line 183
    :pswitch_b9
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080036

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 184
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x11080120

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x11060010

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 186
    goto/16 :goto_1a6

    .line 178
    :pswitch_d3
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080040

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x11080128

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x1106001a

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 181
    goto/16 :goto_1a6

    .line 173
    :pswitch_ed
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080037

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 174
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x11080121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x11060011

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 176
    goto/16 :goto_1a6

    .line 168
    :pswitch_107
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080035

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x1108011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x1106000f

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 171
    goto/16 :goto_1a6

    .line 163
    :pswitch_121
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080030

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x1108011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x1106000b

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 166
    goto :goto_1a6

    .line 158
    :pswitch_13a
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080039

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x11080123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x11060014

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 161
    goto :goto_1a6

    .line 148
    :pswitch_153
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080038

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x11080122

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x11060012

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 151
    goto :goto_1a6

    .line 153
    :pswitch_16c
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1108003d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 154
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x11080127

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x11060018

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 156
    goto :goto_1a6

    .line 143
    :pswitch_185
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    invoke-virtual {v1, v0}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 146
    goto :goto_1a6

    .line 139
    :pswitch_195
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11080032

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    const v1, 0x1106001d

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressColor(I)V

    .line 141
    nop

    .line 223
    :goto_1a6
    return-void

    nop

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_195
        :pswitch_185
        :pswitch_16c
        :pswitch_153
        :pswitch_13a
        :pswitch_121
        :pswitch_107
        :pswitch_ed
        :pswitch_d3
        :pswitch_b9
        :pswitch_9f
        :pswitch_85
        :pswitch_6b
        :pswitch_51
        :pswitch_37
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist setGlobalDeviceName(I)V
    .registers 5
    .param p1, "globalDeviceType"    # I

    .line 316
    packed-switch p1, :pswitch_data_38

    .line 325
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f0217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 321
    :pswitch_14
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    goto :goto_36

    .line 318
    :pswitch_25
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f0216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    nop

    .line 328
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x4
        :pswitch_25
        :pswitch_14
    .end packed-switch
.end method

.method public blacklist setIsGloabal(Z)V
    .registers 2
    .param p1, "isGloabal"    # Z

    .line 331
    iput-boolean p1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->isGlobal:Z

    .line 332
    return-void
.end method

.method public blacklist setIsUwbDevice(Z)V
    .registers 7
    .param p1, "support"    # Z

    .line 528
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_31

    .line 529
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1108010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 530
    .local v2, "uwbDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 531
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 532
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 533
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 535
    .end local v2    # "uwbDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3b

    .line 536
    :cond_31
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 539
    :goto_3b
    return-void
.end method

.method public blacklist setProgressPercent(F)V
    .registers 3
    .param p1, "percent"    # F

    .line 524
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mProgressBar:Lcom/miui/mishare/app/view/CircleProgress;

    invoke-virtual {v0, p1}, Lcom/miui/mishare/app/view/CircleProgress;->setProgressPercent(F)V

    .line 525
    return-void
.end method

.method public blacklist toggleNotice(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 122
    if-eqz p1, :cond_8

    .line 123
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mNoticeView:Lcom/miui/mishare/app/view/NoticeView;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/NoticeView;->start()V

    goto :goto_d

    .line 125
    :cond_8
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mNoticeView:Lcom/miui/mishare/app/view/NoticeView;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/NoticeView;->stop()V

    .line 127
    :goto_d
    return-void
.end method
