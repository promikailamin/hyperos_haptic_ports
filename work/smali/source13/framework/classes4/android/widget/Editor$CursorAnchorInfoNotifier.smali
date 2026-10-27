.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final greylist-max-o mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final greylist-max-o mTmpIntOffset:[I

.field final greylist-max-o mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 2

    .line 4591
    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4592
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4593
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    .line 4594
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o updatePosition(IIZZ)V
    .registers 33
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .line 4599
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 4600
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_1e6

    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_10

    move-object/from16 v19, v1

    goto/16 :goto_1e8

    .line 4603
    :cond_10
    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$mgetInputMethodManager(Landroid/widget/Editor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 4604
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v2, :cond_19

    .line 4605
    return-void

    .line 4607
    :cond_19
    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 4608
    return-void

    .line 4611
    :cond_26
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 4612
    return-void

    .line 4614
    :cond_2d
    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 4615
    .local v3, "layout":Landroid/text/Layout;
    if-nez v3, :cond_3a

    .line 4616
    return-void

    .line 4618
    :cond_3a
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getUpdateCursorAnchorInfoMode()I

    move-result v4

    .line 4619
    .local v4, "mode":I
    and-int/lit8 v5, v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_46

    move v5, v7

    goto :goto_47

    :cond_46
    move v5, v6

    .line 4621
    .local v5, "includeEditorBounds":Z
    :goto_47
    and-int/lit8 v8, v4, 0x8

    if-eqz v8, :cond_4d

    move v8, v7

    goto :goto_4e

    :cond_4d
    move v8, v6

    .line 4623
    .local v8, "includeCharacterBounds":Z
    :goto_4e
    and-int/lit8 v9, v4, 0x10

    if-eqz v9, :cond_54

    move v9, v7

    goto :goto_55

    :cond_54
    move v9, v6

    .line 4625
    .local v9, "includeInsertionMarker":Z
    :goto_55
    if-nez v5, :cond_5d

    if-nez v8, :cond_5d

    if-nez v9, :cond_5d

    move v10, v7

    goto :goto_5e

    :cond_5d
    move v10, v6

    .line 4628
    .local v10, "includeAll":Z
    :goto_5e
    or-int/2addr v5, v10

    .line 4629
    or-int/2addr v8, v10

    .line 4630
    or-int/2addr v9, v10

    .line 4632
    iget-object v15, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4633
    .local v15, "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    invoke-virtual {v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 4635
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    .line 4636
    .local v14, "selectionStart":I
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    invoke-virtual {v15, v14, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4639
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4640
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4641
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    aget v13, v12, v6

    int-to-float v13, v13

    aget v12, v12, v7

    int-to-float v12, v12

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4642
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4644
    if-eqz v5, :cond_db

    .line 4645
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 4646
    .local v11, "bounds":Landroid/graphics/RectF;
    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v6, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4647
    new-instance v6, Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    invoke-direct {v6}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;-><init>()V

    .line 4649
    .local v6, "boundsBuilder":Landroid/view/inputmethod/EditorBoundsInfo$Builder;
    nop

    .line 4650
    invoke-virtual {v6, v11}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setEditorBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->build()Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v12

    .line 4649
    invoke-virtual {v15, v12}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4653
    .end local v6    # "boundsBuilder":Landroid/view/inputmethod/EditorBoundsInfo$Builder;
    .end local v11    # "bounds":Landroid/graphics/RectF;
    :cond_db
    if-nez v8, :cond_e8

    if-eqz v9, :cond_e0

    goto :goto_e8

    :cond_e0
    move-object/from16 v19, v1

    move/from16 v23, v14

    move-object/from16 v24, v15

    goto/16 :goto_1d8

    .line 4654
    :cond_e8
    :goto_e8
    iget-object v6, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 4655
    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    .line 4656
    .local v6, "viewportToContentHorizontalOffset":F
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    .line 4657
    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v11

    int-to-float v13, v11

    .line 4659
    .local v13, "viewportToContentVerticalOffset":F
    if-eqz v8, :cond_16a

    .line 4660
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    .line 4661
    .local v12, "text":Ljava/lang/CharSequence;
    instance-of v11, v12, Landroid/text/Spannable;

    if-eqz v11, :cond_160

    .line 4662
    move-object/from16 v17, v12

    check-cast v17, Landroid/text/Spannable;

    .line 4663
    .local v17, "sp":Landroid/text/Spannable;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v11

    .line 4664
    .local v11, "composingTextStart":I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    .line 4665
    .local v7, "composingTextEnd":I
    if-ge v7, v11, :cond_121

    .line 4666
    move/from16 v19, v7

    .line 4667
    .local v19, "temp":I
    move v7, v11

    .line 4668
    move/from16 v11, v19

    .line 4670
    .end local v19    # "temp":I
    :cond_121
    if-ltz v11, :cond_128

    if-ge v11, v7, :cond_128

    const/16 v16, 0x1

    goto :goto_12a

    :cond_128
    const/16 v16, 0x0

    :goto_12a
    move/from16 v18, v16

    .line 4673
    .local v18, "hasComposingText":Z
    if-eqz v18, :cond_154

    .line 4674
    move-object/from16 v19, v1

    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .local v19, "ims":Landroid/widget/Editor$InputMethodState;
    invoke-interface {v12, v11, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4676
    .local v1, "composingText":Ljava/lang/CharSequence;
    invoke-virtual {v15, v11, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4677
    move-object/from16 v20, v1

    .end local v1    # "composingText":Ljava/lang/CharSequence;
    .local v20, "composingText":Ljava/lang/CharSequence;
    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    move/from16 v21, v11

    .end local v11    # "composingTextStart":I
    .local v21, "composingTextStart":I
    move-object v11, v1

    move-object v1, v12

    .end local v12    # "text":Ljava/lang/CharSequence;
    .local v1, "text":Ljava/lang/CharSequence;
    move-object v12, v15

    move/from16 v22, v13

    .end local v13    # "viewportToContentVerticalOffset":F
    .local v22, "viewportToContentVerticalOffset":F
    move/from16 v13, v21

    move/from16 v23, v14

    .end local v14    # "selectionStart":I
    .local v23, "selectionStart":I
    move v14, v7

    move-object/from16 v24, v15

    .end local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v24, "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    move v15, v6

    move/from16 v16, v22

    invoke-virtual/range {v11 .. v16}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    goto :goto_172

    .line 4673
    .end local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v20    # "composingText":Ljava/lang/CharSequence;
    .end local v21    # "composingTextStart":I
    .end local v22    # "viewportToContentVerticalOffset":F
    .end local v23    # "selectionStart":I
    .end local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v11    # "composingTextStart":I
    .restart local v12    # "text":Ljava/lang/CharSequence;
    .restart local v13    # "viewportToContentVerticalOffset":F
    .restart local v14    # "selectionStart":I
    .restart local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    :cond_154
    move-object/from16 v19, v1

    move/from16 v21, v11

    move-object v1, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v24, v15

    .end local v11    # "composingTextStart":I
    .end local v12    # "text":Ljava/lang/CharSequence;
    .end local v13    # "viewportToContentVerticalOffset":F
    .end local v14    # "selectionStart":I
    .end local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "text":Ljava/lang/CharSequence;
    .restart local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v21    # "composingTextStart":I
    .restart local v22    # "viewportToContentVerticalOffset":F
    .restart local v23    # "selectionStart":I
    .restart local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    goto :goto_172

    .line 4661
    .end local v7    # "composingTextEnd":I
    .end local v17    # "sp":Landroid/text/Spannable;
    .end local v18    # "hasComposingText":Z
    .end local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v21    # "composingTextStart":I
    .end local v22    # "viewportToContentVerticalOffset":F
    .end local v23    # "selectionStart":I
    .end local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v12    # "text":Ljava/lang/CharSequence;
    .restart local v13    # "viewportToContentVerticalOffset":F
    .restart local v14    # "selectionStart":I
    .restart local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    :cond_160
    move-object/from16 v19, v1

    move-object v1, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v24, v15

    .end local v12    # "text":Ljava/lang/CharSequence;
    .end local v13    # "viewportToContentVerticalOffset":F
    .end local v14    # "selectionStart":I
    .end local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "text":Ljava/lang/CharSequence;
    .restart local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v22    # "viewportToContentVerticalOffset":F
    .restart local v23    # "selectionStart":I
    .restart local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    goto :goto_172

    .line 4659
    .end local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v22    # "viewportToContentVerticalOffset":F
    .end local v23    # "selectionStart":I
    .end local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v13    # "viewportToContentVerticalOffset":F
    .restart local v14    # "selectionStart":I
    .restart local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    :cond_16a
    move-object/from16 v19, v1

    move/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v24, v15

    .line 4684
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v13    # "viewportToContentVerticalOffset":F
    .end local v14    # "selectionStart":I
    .end local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .restart local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v22    # "viewportToContentVerticalOffset":F
    .restart local v23    # "selectionStart":I
    .restart local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    :goto_172
    if-eqz v9, :cond_1d8

    .line 4686
    if-ltz v23, :cond_1d8

    .line 4687
    move/from16 v1, v23

    .line 4688
    .local v1, "offset":I
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 4689
    .local v7, "line":I
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    add-float v15, v11, v6

    .line 4691
    .local v15, "insertionMarkerX":F
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    add-float v14, v11, v22

    .line 4693
    .local v14, "insertionMarkerTop":F
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v11

    int-to-float v11, v11

    add-float v17, v11, v22

    .line 4695
    .local v17, "insertionMarkerBaseline":F
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v11

    int-to-float v11, v11

    add-float v13, v11, v22

    .line 4697
    .local v13, "insertionMarkerBottom":F
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    .line 4698
    invoke-virtual {v11, v15, v14}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v18

    .line 4699
    .local v18, "isTopVisible":Z
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    .line 4700
    invoke-virtual {v11, v15, v13}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v20

    .line 4701
    .local v20, "isBottomVisible":Z
    const/4 v11, 0x0

    .line 4702
    .local v11, "insertionMarkerFlags":I
    if-nez v18, :cond_1b0

    if-eqz v20, :cond_1b2

    .line 4703
    :cond_1b0
    or-int/lit8 v11, v11, 0x1

    .line 4705
    :cond_1b2
    if-eqz v18, :cond_1b6

    if-nez v20, :cond_1b8

    .line 4706
    :cond_1b6
    or-int/lit8 v11, v11, 0x2

    .line 4708
    :cond_1b8
    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v12

    if-eqz v12, :cond_1c3

    .line 4709
    or-int/lit8 v11, v11, 0x4

    move/from16 v21, v11

    goto :goto_1c5

    .line 4708
    :cond_1c3
    move/from16 v21, v11

    .line 4711
    .end local v11    # "insertionMarkerFlags":I
    .local v21, "insertionMarkerFlags":I
    :goto_1c5
    move-object/from16 v11, v24

    move v12, v15

    move/from16 v25, v13

    .end local v13    # "insertionMarkerBottom":F
    .local v25, "insertionMarkerBottom":F
    move v13, v14

    move/from16 v26, v14

    .end local v14    # "insertionMarkerTop":F
    .local v26, "insertionMarkerTop":F
    move/from16 v14, v17

    move/from16 v27, v15

    .end local v15    # "insertionMarkerX":F
    .local v27, "insertionMarkerX":F
    move/from16 v15, v25

    move/from16 v16, v21

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4718
    .end local v1    # "offset":I
    .end local v6    # "viewportToContentHorizontalOffset":F
    .end local v7    # "line":I
    .end local v17    # "insertionMarkerBaseline":F
    .end local v18    # "isTopVisible":Z
    .end local v20    # "isBottomVisible":Z
    .end local v21    # "insertionMarkerFlags":I
    .end local v22    # "viewportToContentVerticalOffset":F
    .end local v25    # "insertionMarkerBottom":F
    .end local v26    # "insertionMarkerTop":F
    .end local v27    # "insertionMarkerX":F
    :cond_1d8
    :goto_1d8
    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4719
    return-void

    .line 4600
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v4    # "mode":I
    .end local v5    # "includeEditorBounds":Z
    .end local v8    # "includeCharacterBounds":Z
    .end local v9    # "includeInsertionMarker":Z
    .end local v10    # "includeAll":Z
    .end local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v23    # "selectionStart":I
    .end local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    :cond_1e6
    move-object/from16 v19, v1

    .line 4601
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    :goto_1e8
    return-void
.end method
