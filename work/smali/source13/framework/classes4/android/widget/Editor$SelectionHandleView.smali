.class public final Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final greylist-max-o mHandleType:I

.field private greylist-max-o mInWord:Z

.field private greylist-max-o mLanguageDirectionChanged:Z

.field private greylist-max-o mPrevX:F

.field private final greylist-max-o mTextViewEdgeSlop:F

.field private final greylist-max-o mTextViewLocation:[I

.field private greylist-max-o mTouchWordDelta:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$misStartHandle(Landroid/widget/Editor$SelectionHandleView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .registers 12
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .line 5984
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5985
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V

    .line 5970
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5976
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5981
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 5986
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 5987
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5988
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 5989
    return-void
.end method

.method private greylist-max-o getHorizontal(Landroid/text/Layout;IZ)F
    .registers 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .line 6299
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 6300
    .local v0, "line":I
    const/4 v1, 0x0

    if-eqz p3, :cond_9

    move v2, p2

    goto :goto_f

    :cond_9
    add-int/lit8 v2, p2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6301
    .local v2, "offsetToCheck":I
    :goto_f
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    .line 6302
    .local v3, "isRtlChar":Z
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    const/4 v1, 0x1

    .line 6303
    .local v1, "isRtlParagraph":Z
    :cond_1b
    if-ne v3, v1, :cond_22

    .line 6304
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    goto :goto_26

    :cond_22
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    .line 6303
    :goto_26
    return v4
.end method

.method private greylist-max-o isStartHandle()Z
    .registers 2

    .line 5992
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o positionAndAdjustForCrossingHandles(IZ)V
    .registers 14
    .param p1, "offset"    # I
    .param p2, "fromTouchScreen"    # Z

    .line 6240
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 6241
    .local v0, "anotherHandleOffset":I
    :goto_1b
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    if-ge p1, v0, :cond_2c

    .line 6242
    :cond_24
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-nez v1, :cond_97

    if-gt p1, v0, :cond_97

    .line 6243
    :cond_2c
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6244
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 6245
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_8b

    if-eq p1, v0, :cond_8b

    .line 6246
    invoke-virtual {p0, v1, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v3

    .line 6247
    .local v3, "horiz":F
    nop

    .line 6248
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    .line 6247
    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v1, v0, v4}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v4

    .line 6249
    .local v4, "anotherHandleHoriz":F
    iget v5, p0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {p0, v1, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v5

    .line 6250
    .local v5, "currentHoriz":F
    cmpg-float v6, v5, v4

    if-gez v6, :cond_5a

    cmpg-float v6, v3, v4

    if-ltz v6, :cond_62

    :cond_5a
    cmpl-float v6, v5, v4

    if-lez v6, :cond_8b

    cmpl-float v6, v3, v4

    if-lez v6, :cond_8b

    .line 6254
    :cond_62
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v6

    .line 6255
    .local v6, "currentOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 6256
    move v7, v6

    goto :goto_74

    :cond_6e
    add-int/lit8 v7, v6, -0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 6257
    .local v7, "offsetToGetRunRange":I
    :goto_74
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v8

    .line 6258
    .local v8, "range":J
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_83

    .line 6259
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    goto :goto_87

    .line 6261
    :cond_83
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    .line 6263
    :goto_87
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6264
    return-void

    .line 6268
    .end local v3    # "horiz":F
    .end local v4    # "anotherHandleHoriz":F
    .end local v5    # "currentHoriz":F
    .end local v6    # "currentOffset":I
    .end local v7    # "offsetToGetRunRange":I
    .end local v8    # "range":J
    :cond_8b
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v0, v4}, Landroid/widget/Editor;->-$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 6270
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_97
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6271
    return-void
.end method

.method private greylist-max-o positionNearEdgeOfScrollingView(FZ)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .line 6274
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6276
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_39

    .line 6277
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 6278
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 6279
    .local v0, "rightEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    move v0, v1

    .line 6280
    .local v0, "nearEdge":Z
    goto :goto_53

    .line 6281
    .end local v0    # "nearEdge":Z
    :cond_39
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 6282
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    move v0, v1

    .line 6284
    .local v0, "nearEdge":Z
    :goto_53
    return v0
.end method


# virtual methods
.method public greylist-max-o getCurrentCursorOffset()I
    .registers 2

    .line 6011
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_1b
    return v0
.end method

.method public greylist-max-o getHorizontal(Landroid/text/Layout;I)F
    .registers 4
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6295
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .line 6006
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x3

    goto :goto_9

    :cond_8
    const/4 v0, 0x5

    :goto_9
    return v0
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 5997
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_d

    .line 5998
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 6000
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .registers 2

    .line 6333
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6334
    const/4 v0, 0x1

    goto :goto_9

    .line 6335
    :cond_8
    const/4 v0, 0x2

    .line 6333
    :goto_9
    return v0
.end method

.method protected greylist-max-o getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .registers 16
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 6309
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v0

    .line 6310
    .local v0, "localX":F
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v2

    .line 6311
    .local v2, "primaryOffset":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 6312
    return v2

    .line 6314
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v4

    .line 6315
    .local v4, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v5

    .line 6316
    .local v5, "currentOffset":I
    sub-int v6, v2, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 6317
    .local v6, "primaryDiff":I
    sub-int v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 6318
    .local v7, "secondaryDiff":I
    if-ge v6, v7, :cond_2e

    .line 6319
    return v2

    .line 6320
    :cond_2e
    if-le v6, v7, :cond_31

    .line 6321
    return v4

    .line 6323
    :cond_31
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 6324
    move v8, v5

    goto :goto_3f

    :cond_39
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6325
    .local v8, "offsetToCheck":I
    :goto_3f
    invoke-virtual {p1, v8}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v9

    .line 6326
    .local v9, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v3

    .line 6327
    .local v1, "isRtlParagraph":Z
    :goto_4c
    if-ne v9, v1, :cond_50

    move v3, v2

    goto :goto_51

    :cond_50
    move v3, v4

    :goto_51
    return v3
.end method

.method protected greylist-max-o isAtRtlRun(Landroid/text/Layout;I)Z
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6289
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, p2

    goto :goto_f

    :cond_8
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6290
    .local v0, "offsetToCheck":I
    :goto_f
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1
.end method

.method protected blacklist notifyMiuiHandWritingHandlePositionListener(ILandroid/graphics/RectF;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "position"    # Landroid/graphics/RectF;

    .line 6341
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmEditorStub(Landroid/widget/Editor;)Landroid/widget/EditorStub;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/widget/EditorStub;->selectionHandlePositionChanged(ZILandroid/graphics/RectF;)V

    .line 6342
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6211
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 6212
    return v1

    .line 6214
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6216
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    goto :goto_2d

    .line 6226
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6227
    goto :goto_2d

    .line 6231
    :pswitch_1e
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->dismissMagnifier()V

    goto :goto_2d

    .line 6220
    :pswitch_22
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6221
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6222
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6223
    nop

    .line 6235
    :goto_2d
    return v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method protected greylist-max-o positionAtCursorOffset(IZZ)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 6205
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6206
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 6207
    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .registers 27
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    .line 6031
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 6032
    .local v4, "layout":Landroid/text/Layout;
    if-nez v4, :cond_22

    .line 6035
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    invoke-direct {v0, v5, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6037
    return-void

    .line 6040
    :cond_22
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_33

    .line 6041
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v5

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 6044
    :cond_33
    const/4 v5, 0x0

    .line 6046
    .local v5, "positionCursor":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_45

    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    goto :goto_4f

    :cond_45
    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 6047
    .local v7, "anotherHandleOffset":I
    :goto_4f
    iget-object v8, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v8, v4, v9, v2}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v8

    .line 6048
    .local v8, "currLine":I
    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 6050
    .local v9, "initialOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_63

    if-ge v9, v7, :cond_6b

    .line 6051
    :cond_63
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_73

    if-gt v9, v7, :cond_73

    .line 6054
    :cond_6b
    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 6055
    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 6058
    :cond_73
    move v10, v9

    .line 6059
    .local v10, "offset":I
    iget-object v11, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v10}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v11

    .line 6060
    .local v11, "wordEnd":I
    iget-object v12, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12, v10}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v12

    .line 6062
    .local v12, "wordStart":I
    iget v13, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_8a

    .line 6063
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6066
    :cond_8a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v13

    .line 6067
    .local v13, "currentOffset":I
    invoke-virtual {v0, v4, v13}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v14

    .line 6068
    .local v14, "rtlAtCurrentOffset":Z
    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v15

    .line 6069
    .local v15, "atRtl":Z
    invoke-virtual {v4, v10}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v16

    .line 6074
    .local v16, "isLvlBoundary":Z
    if-nez v16, :cond_2b9

    if-eqz v14, :cond_a5

    if-eqz v15, :cond_a1

    goto :goto_a5

    :cond_a1
    :goto_a1
    move/from16 v21, v5

    goto/16 :goto_2bb

    :cond_a5
    :goto_a5
    if-nez v14, :cond_aa

    if-eqz v15, :cond_aa

    goto :goto_a1

    .line 6081
    :cond_aa
    iget-boolean v6, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v2, 0x0

    if-eqz v6, :cond_ba

    if-nez v16, :cond_ba

    .line 6084
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6085
    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6086
    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6087
    return-void

    .line 6091
    :cond_ba
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    sub-float v6, v1, v6

    .line 6092
    .local v6, "xDiff":F
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v20

    if-eqz v20, :cond_cc

    .line 6093
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-ge v8, v2, :cond_ca

    const/4 v2, 0x1

    goto :goto_cb

    :cond_ca
    const/4 v2, 0x0

    .local v2, "isExpanding":Z
    :goto_cb
    goto :goto_d3

    .line 6095
    .end local v2    # "isExpanding":Z
    :cond_cc
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-le v8, v2, :cond_d2

    const/4 v2, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v2, 0x0

    .line 6097
    .restart local v2    # "isExpanding":Z
    :goto_d3
    move/from16 v21, v5

    .end local v5    # "positionCursor":Z
    .local v21, "positionCursor":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-ne v15, v5, :cond_e8

    .line 6098
    const/4 v5, 0x0

    cmpl-float v18, v6, v5

    if-lez v18, :cond_e3

    const/16 v18, 0x1

    goto :goto_e5

    :cond_e3
    const/16 v18, 0x0

    :goto_e5
    or-int v2, v2, v18

    goto :goto_f1

    .line 6100
    :cond_e8
    const/4 v5, 0x0

    cmpg-float v22, v6, v5

    if-gez v22, :cond_ef

    const/4 v5, 0x1

    goto :goto_f0

    :cond_ef
    const/4 v5, 0x0

    :goto_f0
    or-int/2addr v2, v5

    .line 6103
    :goto_f1
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_167

    .line 6104
    invoke-direct {v0, v1, v15}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v5

    if-eqz v5, :cond_164

    .line 6105
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_119

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    if-nez v5, :cond_116

    goto :goto_119

    :cond_116
    move/from16 v17, v6

    goto :goto_132

    .line 6106
    :cond_119
    :goto_119
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_161

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 6107
    move/from16 v17, v6

    if-eqz v15, :cond_12b

    const/4 v6, -0x1

    goto :goto_12c

    :cond_12b
    const/4 v6, 0x1

    .end local v6    # "xDiff":F
    .local v17, "xDiff":F
    :goto_12c
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v5

    if-eqz v5, :cond_169

    :goto_132
    if-eqz v2, :cond_144

    .line 6108
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_13c

    if-lt v10, v13, :cond_146

    .line 6109
    :cond_13c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_144

    if-gt v10, v13, :cond_146

    :cond_144
    if-nez v2, :cond_169

    .line 6114
    :cond_146
    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6115
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-ne v15, v5, :cond_156

    .line 6116
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v5

    goto :goto_15c

    .line 6117
    :cond_156
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v5

    :goto_15c
    nop

    .line 6118
    .local v5, "nextOffset":I
    invoke-direct {v0, v5, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6119
    return-void

    .line 6106
    .end local v5    # "nextOffset":I
    .end local v17    # "xDiff":F
    .restart local v6    # "xDiff":F
    :cond_161
    move/from16 v17, v6

    .end local v6    # "xDiff":F
    .restart local v17    # "xDiff":F
    goto :goto_169

    .line 6104
    .end local v17    # "xDiff":F
    .restart local v6    # "xDiff":F
    :cond_164
    move/from16 v17, v6

    .end local v6    # "xDiff":F
    .restart local v17    # "xDiff":F
    goto :goto_169

    .line 6103
    .end local v17    # "xDiff":F
    .restart local v6    # "xDiff":F
    :cond_167
    move/from16 v17, v6

    .line 6123
    .end local v6    # "xDiff":F
    .restart local v17    # "xDiff":F
    :cond_169
    :goto_169
    if-eqz v2, :cond_21a

    .line 6125
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_173

    move v5, v12

    goto :goto_174

    :cond_173
    move v5, v11

    .line 6126
    .local v5, "wordBoundary":I
    :goto_174
    iget-boolean v6, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    if-eqz v6, :cond_187

    .line 6127
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_183

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v6, :cond_18f

    goto :goto_187

    :cond_183
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v6, :cond_18f

    .line 6128
    :cond_187
    :goto_187
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v6

    if-ne v15, v6, :cond_18f

    const/4 v6, 0x1

    goto :goto_190

    :cond_18f
    const/4 v6, 0x0

    .line 6129
    .local v6, "snapToWord":Z
    :goto_190
    if-eqz v6, :cond_1ec

    .line 6133
    move/from16 v22, v2

    .end local v2    # "isExpanding":Z
    .local v22, "isExpanding":Z
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    if-eq v2, v8, :cond_1aa

    .line 6134
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 6135
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    goto :goto_1a9

    :cond_1a5
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    :goto_1a9
    move v5, v2

    .line 6137
    :cond_1aa
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 6138
    sub-int v2, v11, v5

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    goto :goto_1bc

    .line 6139
    :cond_1b7
    sub-int v2, v5, v12

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v12

    :goto_1bc
    nop

    .line 6140
    .local v2, "offsetThresholdToSnap":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v19

    if-eqz v19, :cond_1d3

    if-le v10, v2, :cond_1cc

    move/from16 v19, v5

    .end local v5    # "wordBoundary":I
    .local v19, "wordBoundary":I
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v5, :cond_1d5

    goto :goto_1ce

    .end local v19    # "wordBoundary":I
    .restart local v5    # "wordBoundary":I
    :cond_1cc
    move/from16 v19, v5

    .line 6144
    .end local v5    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    :goto_1ce
    move v5, v12

    move v10, v5

    move/from16 v5, v19

    .end local v10    # "offset":I
    .local v5, "offset":I
    goto :goto_1ee

    .line 6140
    .end local v19    # "wordBoundary":I
    .local v5, "wordBoundary":I
    .restart local v10    # "offset":I
    :cond_1d3
    move/from16 v19, v5

    .line 6145
    .end local v5    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    :cond_1d5
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_1e6

    if-ge v10, v2, :cond_1e1

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_1e6

    .line 6149
    :cond_1e1
    move v5, v11

    move v10, v5

    move/from16 v5, v19

    .end local v10    # "offset":I
    .local v5, "offset":I
    goto :goto_1ee

    .line 6151
    .end local v5    # "offset":I
    .restart local v10    # "offset":I
    :cond_1e6
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move v10, v5

    move/from16 v5, v19

    .end local v10    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_1ee

    .line 6129
    .end local v19    # "wordBoundary":I
    .end local v22    # "isExpanding":Z
    .local v2, "isExpanding":Z
    .local v5, "wordBoundary":I
    .restart local v10    # "offset":I
    :cond_1ec
    move/from16 v22, v2

    .line 6154
    .end local v2    # "isExpanding":Z
    .restart local v22    # "isExpanding":Z
    :goto_1ee
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_1f6

    if-lt v10, v9, :cond_1fe

    .line 6155
    :cond_1f6
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_212

    if-le v10, v9, :cond_212

    .line 6156
    :cond_1fe
    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v2

    .line 6157
    .local v2, "adjustedX":F
    move/from16 v19, v5

    .end local v5    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 6158
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    sub-float/2addr v5, v2

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6159
    .end local v2    # "adjustedX":F
    goto :goto_217

    .line 6155
    .end local v19    # "wordBoundary":I
    .restart local v5    # "wordBoundary":I
    :cond_212
    move/from16 v19, v5

    .line 6160
    .end local v5    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6162
    :goto_217
    const/4 v5, 0x1

    .line 6163
    .end local v6    # "snapToWord":Z
    .end local v19    # "wordBoundary":I
    .end local v21    # "positionCursor":Z
    .local v5, "positionCursor":Z
    goto/16 :goto_2af

    .line 6164
    .end local v5    # "positionCursor":Z
    .end local v22    # "isExpanding":Z
    .local v2, "isExpanding":Z
    .restart local v21    # "positionCursor":Z
    :cond_21a
    move/from16 v22, v2

    .end local v2    # "isExpanding":Z
    .restart local v22    # "isExpanding":Z
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    sub-float v2, v1, v2

    .line 6165
    invoke-virtual {v0, v4, v8, v2}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v2

    .line 6166
    .local v2, "adjustedOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_237

    .line 6167
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-gt v2, v5, :cond_235

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_233

    goto :goto_235

    :cond_233
    const/4 v6, 0x0

    goto :goto_243

    :cond_235
    :goto_235
    const/4 v6, 0x1

    goto :goto_243

    .line 6168
    :cond_237
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_242

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v5, :cond_240

    goto :goto_242

    :cond_240
    const/4 v6, 0x0

    goto :goto_243

    :cond_242
    :goto_242
    const/4 v6, 0x1

    :goto_243
    move v5, v6

    .line 6169
    .local v5, "shrinking":Z
    if-eqz v5, :cond_284

    .line 6171
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eq v8, v6, :cond_27e

    .line 6173
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_252

    move v6, v12

    goto :goto_253

    :cond_252
    move v6, v11

    .line 6174
    .end local v10    # "offset":I
    .local v6, "offset":I
    :goto_253
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_25b

    if-lt v6, v9, :cond_263

    .line 6175
    :cond_25b
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_277

    if-le v6, v9, :cond_277

    .line 6176
    :cond_263
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v10

    .line 6177
    .local v10, "adjustedX":F
    move/from16 v19, v5

    .end local v5    # "shrinking":Z
    .local v19, "shrinking":Z
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 6178
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    sub-float/2addr v5, v10

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6179
    .end local v10    # "adjustedX":F
    goto :goto_27c

    .line 6175
    .end local v19    # "shrinking":Z
    .restart local v5    # "shrinking":Z
    :cond_277
    move/from16 v19, v5

    .line 6180
    .end local v5    # "shrinking":Z
    .restart local v19    # "shrinking":Z
    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6185
    :goto_27c
    move v10, v6

    goto :goto_282

    .line 6183
    .end local v6    # "offset":I
    .end local v19    # "shrinking":Z
    .restart local v5    # "shrinking":Z
    .local v10, "offset":I
    :cond_27e
    move/from16 v19, v5

    .end local v5    # "shrinking":Z
    .restart local v19    # "shrinking":Z
    move v5, v2

    move v10, v5

    .line 6185
    :goto_282
    const/4 v5, 0x1

    .end local v21    # "positionCursor":Z
    .local v5, "positionCursor":Z
    goto :goto_2af

    .line 6186
    .end local v19    # "shrinking":Z
    .local v5, "shrinking":Z
    .restart local v21    # "positionCursor":Z
    :cond_284
    move/from16 v19, v5

    .end local v5    # "shrinking":Z
    .restart local v19    # "shrinking":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_290

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_29a

    .line 6187
    :cond_290
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_2ad

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-le v2, v5, :cond_2ad

    .line 6190
    :cond_29a
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    .line 6191
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6195
    .end local v2    # "adjustedOffset":I
    .end local v19    # "shrinking":Z
    :cond_2ad
    move/from16 v5, v21

    .end local v21    # "positionCursor":Z
    .local v5, "positionCursor":Z
    :goto_2af
    if-eqz v5, :cond_2b6

    .line 6196
    iput v8, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 6197
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6199
    :cond_2b6
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6200
    return-void

    .line 6074
    .end local v17    # "xDiff":F
    .end local v22    # "isExpanding":Z
    :cond_2b9
    move/from16 v21, v5

    .line 6077
    .end local v5    # "positionCursor":Z
    .restart local v21    # "positionCursor":Z
    :goto_2bb
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6078
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6079
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6080
    return-void
.end method

.method protected greylist-max-o updateSelection(I)V
    .registers 4
    .param p1, "offset"    # I

    .line 6016
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6017
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6018
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 6017
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_39

    .line 6020
    :cond_20
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6021
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6020
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6023
    :goto_39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable(Z)V

    .line 6024
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 6025
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 6027
    :cond_4a
    return-void
.end method
