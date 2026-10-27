.class public Lcom/miui/mishare/app/view/ArrowPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ArrowPopupWindow.java"


# static fields
.field public static final blacklist ARROW_BOTTOM_MODE:I = 0x0

.field public static final blacklist ARROW_LEFT_MODE:I = 0x3

.field public static final blacklist ARROW_RIGHT_MODE:I = 0x2

.field public static final blacklist ARROW_TOP_MODE:I = 0x1


# instance fields
.field protected blacklist mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

.field private blacklist mAutoDismiss:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mListViewMaxHeight:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mContext:Landroid/content/Context;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mAutoDismiss:Z

    .line 112
    invoke-direct {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->setupPopupWindow()V

    .line 113
    return-void
.end method

.method private blacklist isTranslucentStatusEnabled()Z
    .registers 2

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist setupPopupWindow()V
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    const v1, 0x11070011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mListViewMaxHeight:I

    .line 134
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 135
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x110c0020

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/app/view/ArrowPopupView;

    iput-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    .line 137
    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 139
    const/4 v1, -0x1

    .line 140
    .local v1, "height":I
    invoke-direct {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->isTranslucentStatusEnabled()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 141
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    .local v2, "metric":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 143
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 144
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 146
    .end local v2    # "metric":Landroid/util/DisplayMetrics;
    :cond_42
    const/4 v2, -0x1

    invoke-super {p0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 147
    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 149
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->setSoftInputMode(I)V

    .line 150
    iget-object v2, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v2, p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->setArrowPopupWindow(Lcom/miui/mishare/app/view/ArrowPopupWindow;)V

    .line 151
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v2, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v2}, Lcom/miui/mishare/app/view/ArrowPopupView;->addShadow()V

    .line 155
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->onPrepareWindow()V

    .line 157
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->update()V

    .line 158
    return-void
.end method


# virtual methods
.method public blacklist dismiss(Z)V
    .registers 3
    .param p1, "withAnimation"    # Z

    .line 245
    if-eqz p1, :cond_8

    .line 246
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->animateToDismiss()V

    goto :goto_b

    .line 248
    :cond_8
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->dismiss()V

    .line 250
    :goto_b
    return-void
.end method

.method public blacklist getContentHeight()I
    .registers 3

    .line 332
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 334
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1

    .line 336
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getContentView()Landroid/view/View;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentWidth()I
    .registers 3

    .line 285
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    return v1

    .line 289
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 322
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->getContentHeight()I

    move-result v0

    return v0
.end method

.method protected blacklist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 275
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->getContentWidth()I

    move-result v0

    return v0
.end method

.method protected blacklist onPrepareWindow()V
    .registers 1

    .line 173
    return-void
.end method

.method public blacklist setArrowMode(I)V
    .registers 3
    .param p1, "arrowMode"    # I

    .line 206
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/mishare/app/view/ArrowPopupView;->setArrowMode(I)V

    .line 207
    return-void
.end method

.method public blacklist setAutoDismiss(Z)V
    .registers 2
    .param p1, "autoDismiss"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mAutoDismiss:Z

    .line 117
    return-void
.end method

.method public blacklist setContentHeight(I)V
    .registers 4
    .param p1, "height"    # I

    .line 357
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, "contentView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mListViewMaxHeight:I

    if-le p1, v1, :cond_e

    .line 360
    iget p1, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mListViewMaxHeight:I

    .line 362
    :cond_e
    if-eqz v0, :cond_19

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 364
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_19
    return-void
.end method

.method public final whitelist setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "contentView"    # Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/mishare/app/view/ArrowPopupView;->setContentView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public blacklist setContentWidth(I)V
    .registers 4
    .param p1, "width"    # I

    .line 310
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 313
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_f
    return-void
.end method

.method public whitelist setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 344
    invoke-virtual {p0, p1}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->setContentHeight(I)V

    .line 345
    return-void
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 268
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/mishare/app/view/ArrowPopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 269
    return-void
.end method

.method public whitelist setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 297
    invoke-virtual {p0, p1}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->setContentWidth(I)V

    .line 298
    return-void
.end method

.method public blacklist show(Landroid/view/View;II)V
    .registers 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .line 219
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/mishare/app/view/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0, p2, p3}, Lcom/miui/mishare/app/view/ArrowPopupView;->setOffset(II)V

    .line 222
    const v0, 0x800033

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 223
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    iget-boolean v1, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mAutoDismiss:Z

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/ArrowPopupView;->setAutoDismiss(Z)V

    .line 224
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->animateToShow()V

    .line 225
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;II)V
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 234
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 257
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 258
    return-void
.end method

.method public whitelist update(IIIIZ)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .line 262
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object v0, p0

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 263
    invoke-virtual {p0, p4}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->setContentHeight(I)V

    .line 264
    return-void
.end method
