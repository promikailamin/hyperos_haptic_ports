.class Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;
.super Ljava/lang/Object;
.source "EditTextStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditTextStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiHandwritingEditTextHelper"
.end annotation


# static fields
.field private static final blacklist ACCESSIBILITY_ACTION_CLICK_POINT:Ljava/lang/String; = "ACCESSIBILITY_ACTION_CLICK_POINT"

.field private static final blacklist ACTION_PRIVATE_COMMAND_APP:Ljava/lang/String; = "ACTION_PRIVATE_COMMAND_APP"

.field private static final blacklist ACTION_PRIVATE_COMMAND_IME:Ljava/lang/String; = "ACTION_PRIVATE_COMMAND_IME"

.field private static final blacklist BUNDLE_CUSTOM_TYPE:Ljava/lang/String; = "BUNDLE_CUSTOM_TYPE"

.field private static final blacklist BUNDLE_CUSTOM_TYPE_ERASER:I = 0x2

.field private static final blacklist BUNDLE_CUSTOM_TYPE_GESTURE:I = 0x1

.field private static final blacklist DELETE_BACKGROUND_COLOR:I

.field private static final blacklist GESTURE_KEY_EVENT_TYPE:Ljava/lang/String; = "GESTURE_KEY_EVENT_TYPE"

.field private static final blacklist GESTURE_KEY_GESTURE_TYPE:Ljava/lang/String; = "GESTURE_KEY_GESTURE_TYPE"

.field private static final blacklist GESTURE_KEY_ID:Ljava/lang/String; = "GESTURE_KEY_ID"

.field private static final blacklist GESTURE_KEY_POSITIVE_POINT:Ljava/lang/String; = "GESTURE_KEY_POSITIVE_POINT"

.field private static final blacklist GESTURE_KEY_RAW_POINT:Ljava/lang/String; = "GESTURE_KEY_RAW_POINT"

.field private static final blacklist GESTURE_KEY_RESULT_CURSOR:Ljava/lang/String; = "GESTURE_KEY_RESULT_CURSOR"

.field private static final blacklist GESTURE_KEY_RESULT_STATUS:Ljava/lang/String; = "GESTURE_KEY_RESULT_STATUS"

.field private static final blacklist GESTURE_KEY_SELECT_END:Ljava/lang/String; = "GESTURE_KEY_SELECT_END"

.field private static final blacklist GESTURE_KEY_SELECT_START:Ljava/lang/String; = "GESTURE_KEY_SELECT_START"

.field private static final blacklist GESTURE_KEY_WINDOW_RECT:Ljava/lang/String; = "GESTURE_KEY_WINDOW_RECT"

.field private static final blacklist GESTURE_KEY_WINDOW_SCALE:Ljava/lang/String; = "GESTURE_KEY_WINDOW_SCALE"

.field private static final blacklist GESTURE_TYPE_ACCESSIBILITY_TYPE:Ljava/lang/String; = "GESTURE_TYPE_ACCESSIBILITY_TYPE"

.field private static final blacklist SELECT_THRESHOLD:F = 0.67f

.field private static final blacklist TYPE_ERASER_RECT:I = 0x1

.field private static final blacklist TYPE_INSERT_SPACE_LINE_DOWN:I = 0x3

.field private static final blacklist TYPE_INSERT_SPACE_LINE_UP:I = 0x4

.field private static final blacklist TYPE_INSERT_TEXT_LINE_DOWN:I = 0x5

.field private static final blacklist TYPE_INSERT_TEXT_LINE_UP:I = 0x6

.field private static final blacklist TYPE_KEY_ENTER:I = 0x7

.field private static final blacklist TYPE_KEY_TAB:I = 0x8

.field private static final blacklist TYPE_SELECT_CIRCLE:I = 0x2

.field private static final blacklist TYPE_SELECT_CURVE:I = 0xa

.field private static final blacklist TYPE_SELECT_LINE:I = 0xb

.field private static final blacklist TYPE_SELECT_RECT:I = 0x9

.field private static final blacklist TYPE_UNKNOWN:I


# instance fields
.field private blacklist mBeforeGestureSelectionEnd:I

.field private blacklist mBeforeGestureSelectionStart:I

.field private blacklist mCanIntersectRectFs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCutRegion:Landroid/graphics/Region;

.field private blacklist mCutResultRect:Landroid/graphics/Rect;

.field private blacklist mCutResultRectF:Landroid/graphics/RectF;

.field private blacklist mCutTempRegion:Landroid/graphics/Region;

.field private final blacklist mEditText:Landroid/widget/EditText;

.field private blacklist mEditTextScale:[F

.field private blacklist mGesturePath:Landroid/graphics/Path;

.field private blacklist mGesturePathBounds:Landroid/graphics/RectF;

.field private blacklist mGestureSelectionEnd:I

.field private blacklist mGestureSelectionStart:I

.field private blacklist mGraySpan:Landroid/text/style/BackgroundColorSpan;

.field private final blacklist mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private blacklist mIsMultiLine:Z

.field private blacklist mLastGestureId:J

.field private blacklist mLastGestureType:I

.field private blacklist mLineRectFs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocationInScreen:[I

.field private blacklist mPrePointF:Landroid/graphics/PointF;

.field private blacklist mTextPaint:Landroid/text/TextPaint;

.field private final blacklist mTextRectFOnScreen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-string v0, "#E6E6E6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->DELETE_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editText"    # Landroid/widget/EditText;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mIsMultiLine:Z

    .line 249
    iput-object p2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    .line 250
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextRectFOnScreen:Ljava/util/ArrayList;

    .line 254
    return-void
.end method

.method private blacklist checkIntersect()V
    .registers 14

    .line 758
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isCanCheckIntersect()Z

    move-result v0

    if-nez v0, :cond_7

    .line 759
    return-void

    .line 761
    :cond_7
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->computeAllCanIntersectRectF()V

    .line 763
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCanIntersectRectFs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 764
    return-void

    .line 767
    :cond_13
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCanIntersectRectFs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2b

    .line 768
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCanIntersectRectFs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 770
    :cond_2b
    iget-boolean v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mIsMultiLine:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCanIntersectRectFs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3b

    .line 771
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->resetStatus()V

    .line 774
    :cond_3b
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCanIntersectRectFs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 775
    .local v0, "offset":F
    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    neg-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 776
    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePathBounds:Landroid/graphics/RectF;

    neg-float v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 777
    const/4 v1, -0x1

    .line 778
    .local v1, "start":I
    const/4 v2, -0x1

    .line 779
    .local v2, "end":I
    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCanIntersectRectFs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_125

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 780
    .local v5, "rectF":Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutTempRegion:Landroid/graphics/Region;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v0

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Region;->set(IIII)Z

    .line 782
    iget-object v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutRegion:Landroid/graphics/Region;

    iget-object v7, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    iget-object v8, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutTempRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 783
    goto :goto_5b

    .line 785
    :cond_87
    iget-object v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutRegion:Landroid/graphics/Region;

    iget-object v7, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 786
    iget-object v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 787
    iget-object v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 789
    iget-object v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget-object v7, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 790
    iget-boolean v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mIsMultiLine:Z

    if-eqz v6, :cond_b4

    iget-object v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v6, v5}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isCanSelect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_b4

    .line 791
    goto :goto_5b

    .line 793
    :cond_b4
    iget-object v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object v7, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result v6

    .line 795
    .local v6, "itemStart":I
    iget-object v7, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object v8, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v11

    div-float/2addr v10, v9

    invoke-virtual {v7, v8, v10}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result v7

    .line 798
    .local v7, "itemEnd":I
    iget-object v8, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v5, v8, v7}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->processLastChar(Landroid/graphics/RectF;Landroid/graphics/RectF;I)I

    move-result v7

    .line 799
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v12

    div-float/2addr v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v8, -0x1

    if-ne v1, v8, :cond_11b

    .line 802
    move v1, v6

    goto :goto_11f

    .line 804
    :cond_11b
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 806
    :goto_11f
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 807
    .end local v5    # "rectF":Landroid/graphics/RectF;
    .end local v6    # "itemStart":I
    .end local v7    # "itemEnd":I
    goto/16 :goto_5b

    .line 809
    :cond_125
    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 810
    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePathBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 811
    invoke-direct {p0, v1, v2}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->checkIntersectFinish(II)V

    .line 812
    return-void
.end method

.method private blacklist checkIntersectFinish(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 858
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check intersect finish, start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    if-gt p1, p2, :cond_86

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2a

    goto :goto_86

    .line 864
    :cond_2a
    iget v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    if-ne v1, v0, :cond_31

    .line 865
    iput p1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    goto :goto_37

    .line 867
    :cond_31
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    .line 869
    :goto_37
    iget v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    .line 870
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    .line 872
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGestureSelectionStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGestureSelectionEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEditText.length() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    .line 874
    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    return-void

    .line 862
    :cond_86
    :goto_86
    return-void
.end method

.method private blacklist clearGestureSpan()V
    .registers 6

    .line 882
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    .line 883
    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/BackgroundColorSpan;

    .line 882
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/BackgroundColorSpan;

    .line 884
    .local v0, "spans":[Landroid/text/style/BackgroundColorSpan;
    array-length v1, v0

    :goto_1a
    if-ge v3, v1, :cond_2a

    aget-object v2, v0, v3

    .line 885
    .local v2, "span":Landroid/text/style/BackgroundColorSpan;
    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 884
    .end local v2    # "span":Landroid/text/style/BackgroundColorSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 887
    :cond_2a
    return-void
.end method

.method private blacklist computeAllCanIntersectRectF()V
    .registers 4

    .line 723
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCanIntersectRectFs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 724
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLineRectFs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 725
    .local v1, "mLineRectF":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePathBounds:Landroid/graphics/RectF;

    invoke-static {v2, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 726
    goto :goto_b

    .line 728
    :cond_20
    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCanIntersectRectFs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    .end local v1    # "mLineRectF":Landroid/graphics/RectF;
    goto :goto_b

    .line 730
    :cond_26
    return-void
.end method

.method private static blacklist copyRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 3
    .param p0, "copyFrom"    # Landroid/graphics/RectF;

    .line 897
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 898
    .local v0, "rectF":Landroid/graphics/RectF;
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 899
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 900
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 901
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 902
    return-object v0
.end method

.method private blacklist createGraySpanIfNeeded()V
    .registers 3

    .line 890
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGraySpan:Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_5

    .line 891
    return-void

    .line 893
    :cond_5
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->DELETE_BACKGROUND_COLOR:I

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGraySpan:Landroid/text/style/BackgroundColorSpan;

    .line 894
    return-void
.end method

.method private static blacklist gestureTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "gestureType"    # I

    .line 906
    packed-switch p0, :pswitch_data_2c

    .line 932
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 930
    :pswitch_8
    const-string v0, "TYPE_SELECT_LINE"

    return-object v0

    .line 928
    :pswitch_b
    const-string v0, "TYPE_SELECT_CURVE"

    return-object v0

    .line 926
    :pswitch_e
    const-string v0, "TYPE_SELECT_RECT"

    return-object v0

    .line 924
    :pswitch_11
    const-string v0, "TYPE_KEY_TAB"

    return-object v0

    .line 922
    :pswitch_14
    const-string v0, "TYPE_KEY_ENTER"

    return-object v0

    .line 920
    :pswitch_17
    const-string v0, "TYPE_INSERT_TEXT_LINE_UP"

    return-object v0

    .line 918
    :pswitch_1a
    const-string v0, "TYPE_INSERT_TEXT_LINE_DOWN"

    return-object v0

    .line 916
    :pswitch_1d
    const-string v0, "TYPE_INSERT_SPACE_LINE_UP"

    return-object v0

    .line 914
    :pswitch_20
    const-string v0, "TYPE_INSERT_SPACE_LINE_DOWN"

    return-object v0

    .line 912
    :pswitch_23
    const-string v0, "TYPE_SELECT_CIRCLE"

    return-object v0

    .line 910
    :pswitch_26
    const-string v0, "TYPE_ERASER_RECT"

    return-object v0

    .line 908
    :pswitch_29
    const-string v0, "TYPE_UNKNOWN"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getSelection(Landroid/os/Bundle;FLandroid/graphics/RectF;I)I
    .registers 9
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "scale"    # F
    .param p3, "windowRectF"    # Landroid/graphics/RectF;
    .param p4, "gestureType"    # I

    .line 483
    const/4 v0, -0x1

    const/4 v1, 0x7

    if-ne p4, v1, :cond_2c

    .line 485
    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 486
    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 487
    return v0

    .line 489
    :cond_15
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result v0

    return v0

    .line 493
    :cond_2c
    const-string v1, "GESTURE_KEY_POSITIVE_POINT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 494
    .local v1, "positivePointF":Landroid/graphics/PointF;
    if-nez v1, :cond_37

    .line 496
    return v0

    .line 499
    :cond_37
    invoke-direct {p0, v1, p2, p3}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->offsetPointF(Landroid/graphics/PointF;FLandroid/graphics/RectF;)V

    .line 501
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result v0

    return v0
.end method

.method private blacklist getTextRectFOnScreen(FLandroid/graphics/RectF;)V
    .registers 5
    .param p1, "scale"    # F
    .param p2, "windowRectF"    # Landroid/graphics/RectF;

    .line 366
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLineRectFs:Ljava/util/List;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_33

    .line 369
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLineRectFs:Ljava/util/List;

    new-instance v1, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 371
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextRectFOnScreen:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 377
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_32

    if-nez p2, :cond_27

    goto :goto_32

    .line 381
    :cond_27
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextRectFOnScreen:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p1}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/RectF;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 387
    return-void

    .line 378
    :cond_32
    :goto_32
    return-void

    .line 367
    :cond_33
    return-void
.end method

.method private static blacklist getViewScale(Landroid/view/View;[F)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outScale"    # [F

    .line 943
    if-eqz p0, :cond_3a

    if-eqz p1, :cond_3a

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_3a

    .line 946
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 947
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    const/4 v2, 0x1

    aput v0, p1, v2

    .line 949
    :goto_17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    .local v3, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_39

    .line 950
    instance-of v0, v3, Landroid/view/View;

    if-nez v0, :cond_23

    .line 951
    goto :goto_39

    .line 953
    :cond_23
    move-object p0, v3

    check-cast p0, Landroid/view/View;

    .line 954
    aget v0, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v0, v4

    aput v0, p1, v1

    .line 955
    aget v0, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v0, v4

    aput v0, p1, v2

    goto :goto_17

    .line 957
    :cond_39
    :goto_39
    return-void

    .line 944
    .end local v3    # "viewParent":Landroid/view/ViewParent;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private blacklist initLineRectFs()V
    .registers 13

    .line 659
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLineRectFs:Ljava/util/List;

    if-nez v0, :cond_b

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLineRectFs:Ljava/util/List;

    .line 662
    :cond_b
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLineRectFs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 663
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 664
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_19

    .line 665
    return-void

    .line 667
    :cond_19
    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v1

    .line 668
    .local v1, "paddingTop":I
    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v2

    .line 669
    .local v2, "paddingLeft":I
    iget-object v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getScrollX()I

    move-result v3

    .line 670
    .local v3, "scrollX":I
    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getScrollY()I

    move-result v4

    .line 671
    .local v4, "scrollY":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_32
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_6b

    .line 672
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    int-to-float v7, v2

    add-float/2addr v6, v7

    int-to-float v7, v3

    sub-float/2addr v6, v7

    .line 673
    .local v6, "left":F
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v7

    add-float/2addr v7, v6

    .line 675
    .local v7, "right":F
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v8

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v1

    sub-int/2addr v8, v4

    int-to-float v8, v8

    .line 676
    .local v8, "top":F
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v9

    add-int/2addr v9, v1

    sub-int/2addr v9, v4

    int-to-float v9, v9

    .line 677
    .local v9, "bottom":F
    new-instance v10, Landroid/graphics/RectF;

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-direct {v10, v6, v8, v11, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 678
    .local v10, "lineF":Landroid/graphics/RectF;
    iget-object v11, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLineRectFs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    .end local v6    # "left":F
    .end local v7    # "right":F
    .end local v8    # "top":F
    .end local v9    # "bottom":F
    .end local v10    # "lineF":Landroid/graphics/RectF;
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 681
    .end local v5    # "i":I
    :cond_6b
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLineRectFs.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLineRectFs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void
.end method

.method private blacklist isCanCheckIntersect()Z
    .registers 3

    .line 704
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLineRectFs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_45

    .line 707
    :cond_c
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 708
    return v1

    .line 710
    :cond_15
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_43

    .line 712
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRectF:Landroid/graphics/RectF;

    .line 713
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutResultRect:Landroid/graphics/Rect;

    .line 714
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutTempRegion:Landroid/graphics/Region;

    .line 715
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCutRegion:Landroid/graphics/Region;

    .line 716
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mCanIntersectRectFs:Ljava/util/List;

    .line 719
    :cond_43
    const/4 v0, 0x1

    return v0

    .line 705
    :cond_45
    :goto_45
    return v1
.end method

.method private blacklist isCanSelect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 6
    .param p1, "cutResult"    # Landroid/graphics/RectF;
    .param p2, "target"    # Landroid/graphics/RectF;

    .line 696
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const v1, 0x3ea8f5c2    # 0.32999998f

    mul-float/2addr v0, v1

    .line 697
    .local v0, "threshold":F
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2e

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method

.method private blacklist isEraserType(I)Z
    .registers 3
    .param p1, "gestureType"    # I

    .line 559
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private blacklist isInsertType(I)Z
    .registers 3
    .param p1, "gestureType"    # I

    .line 547
    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    const/4 v0, 0x7

    if-eq p1, v0, :cond_12

    const/4 v0, 0x5

    if-eq p1, v0, :cond_12

    const/4 v0, 0x6

    if-ne p1, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method private blacklist isSelectType(I)Z
    .registers 3
    .param p1, "gestureType"    # I

    .line 534
    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/16 v0, 0x9

    if-eq p1, v0, :cond_12

    const/16 v0, 0xb

    if-eq p1, v0, :cond_12

    const/16 v0, 0xa

    if-ne p1, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method private blacklist isVInsertType(I)Z
    .registers 3
    .param p1, "gestureType"    # I

    .line 568
    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method static synthetic blacklist lambda$getTextRectFOnScreen$2(Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .registers 5
    .param p0, "windowRectF"    # Landroid/graphics/RectF;
    .param p1, "scale"    # F
    .param p2, "rectF"    # Landroid/graphics/RectF;

    .line 382
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 383
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 384
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 385
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 386
    return-void
.end method

.method private blacklist offsetPointF(Landroid/graphics/PointF;FLandroid/graphics/RectF;)V
    .registers 8
    .param p1, "pointF"    # Landroid/graphics/PointF;
    .param p2, "scale"    # F
    .param p3, "windowRectF"    # Landroid/graphics/RectF;

    .line 639
    if-eqz p3, :cond_1e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1e

    .line 641
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    div-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 642
    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    div-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 645
    :cond_1e
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 646
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 649
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditTextScale:[F

    aget v1, v0, v2

    .line 650
    .local v1, "scaleX":F
    aget v0, v0, v3

    .line 651
    .local v0, "scaleY":F
    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 652
    iget v2, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 653
    return-void
.end method

.method private blacklist processCustomTypeEraser(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "data"    # Landroid/os/Bundle;

    .line 304
    const-string v0, "GESTURE_KEY_EVENT_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    .local v0, "eventType":I
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->clearGestureSpan()V

    .line 306
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 307
    return-void

    .line 309
    :cond_d
    const-string v1, "GESTURE_KEY_SELECT_START"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 310
    .local v1, "selectStart":I
    const-string v2, "GESTURE_KEY_SELECT_END"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 311
    .local v2, "selectEnd":I
    iget-object v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    .line 312
    .local v3, "length":I
    if-ltz v1, :cond_37

    if-le v2, v1, :cond_37

    if-ge v1, v3, :cond_37

    if-gt v2, v3, :cond_37

    .line 314
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->createGraySpanIfNeeded()V

    .line 315
    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGraySpan:Landroid/text/style/BackgroundColorSpan;

    const/16 v6, 0x21

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 318
    :cond_37
    return-void
.end method

.method private blacklist processCustomTypeGesture(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "data"    # Landroid/os/Bundle;

    .line 325
    const-string v0, "GESTURE_KEY_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 327
    .local v8, "gestureId":J
    const-string v0, "GESTURE_KEY_RAW_POINT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 329
    .local v0, "rawPointF":Landroid/graphics/PointF;
    const-string v1, "GESTURE_KEY_EVENT_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 331
    .local v10, "eventType":I
    const-string v1, "GESTURE_KEY_WINDOW_SCALE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 333
    .local v11, "scale":F
    const-string v1, "GESTURE_KEY_WINDOW_RECT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/graphics/RectF;

    .line 335
    .local v12, "windowRectF":Landroid/graphics/RectF;
    const-string v1, "GESTURE_KEY_GESTURE_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 336
    .local v13, "gestureType":I
    move-object v1, p0

    move-wide v2, v8

    move-object v4, v0

    move v5, v10

    move v6, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->updateGesturePath(JLandroid/graphics/PointF;IFLandroid/graphics/RectF;)V

    .line 338
    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextRectFOnScreen:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 339
    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextRectFOnScreen:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextRectFOnScreen:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 342
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->checkIntersect()V

    .line 344
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gestureType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 345
    invoke-static {v13}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->gestureTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "result":Z
    const/4 v2, 0x2

    if-ne v10, v2, :cond_83

    .line 349
    invoke-direct {p0, v13}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->processCustomTypeGestureMove(I)Z

    move-result v1

    goto :goto_8a

    .line 350
    :cond_83
    const/4 v2, 0x1

    if-ne v10, v2, :cond_8a

    .line 351
    invoke-direct {p0, p1, v11, v12, v13}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->processCustomTypeGestureUp(Landroid/os/Bundle;FLandroid/graphics/RectF;I)Z

    move-result v1

    .line 354
    :cond_8a
    :goto_8a
    invoke-direct {p0, v11, v12}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->getTextRectFOnScreen(FLandroid/graphics/RectF;)V

    .line 355
    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextRectFOnScreen:Ljava/util/ArrayList;

    const-string v3, "GESTURE_KEY_RESULT_TEXT_RECT"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 356
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gesture process result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_a8

    const-string v4, "success"

    goto :goto_aa

    :cond_a8
    const-string v4, "fail"

    :goto_aa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v2, "GESTURE_KEY_RESULT_STATUS"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    invoke-direct {p0, p1}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->sendBundle(Landroid/os/Bundle;)V

    .line 360
    return-void
.end method

.method private blacklist processCustomTypeGestureMove(I)Z
    .registers 8
    .param p1, "gestureType"    # I

    .line 508
    iget v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    iget v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    if-gt v0, v1, :cond_58

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_58

    .line 511
    :cond_a
    invoke-direct {p0, p1}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isEraserType(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_35

    iget v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLastGestureType:I

    invoke-direct {p0, v0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isEraserType(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_35

    .line 518
    :cond_1a
    invoke-direct {p0, p1}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isSelectType(I)Z

    move-result v0

    if-nez v0, :cond_28

    iget v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLastGestureType:I

    invoke-direct {p0, v0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isSelectType(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 519
    :cond_28
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    iget v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 521
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLastGestureType:I

    goto :goto_57

    .line 512
    :cond_35
    :goto_35
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->clearGestureSpan()V

    .line 513
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->createGraySpanIfNeeded()V

    .line 514
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGraySpan:Landroid/text/style/BackgroundColorSpan;

    iget v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    iget v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    const/16 v5, 0x21

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 516
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    iget v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 517
    iput v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLastGestureType:I

    .line 523
    :cond_57
    :goto_57
    return v1

    .line 509
    :cond_58
    :goto_58
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist processCustomTypeGestureUp(Landroid/os/Bundle;FLandroid/graphics/RectF;I)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "scale"    # F
    .param p3, "windowRectF"    # Landroid/graphics/RectF;
    .param p4, "gestureType"    # I

    .line 394
    invoke-direct {p0, p4}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isInsertType(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 395
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->processCustomTypeGestureUpInsert(Landroid/os/Bundle;FLandroid/graphics/RectF;I)Z

    move-result v0

    return v0

    .line 398
    :cond_b
    iget v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    iget v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    if-ge v0, v1, :cond_6a

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    goto :goto_6a

    .line 404
    :cond_15
    invoke-direct {p0, p4}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isEraserType(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_42

    iget v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLastGestureType:I

    invoke-direct {p0, v0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isEraserType(I)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_42

    .line 416
    :cond_25
    invoke-direct {p0, p4}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isSelectType(I)Z

    move-result v0

    if-nez v0, :cond_33

    iget v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLastGestureType:I

    invoke-direct {p0, v0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isSelectType(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 417
    :cond_33
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    iget v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 418
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->startSelectionActionModeAsync()V

    .line 420
    :cond_41
    return v1

    .line 405
    :cond_42
    :goto_42
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->clearGestureSpan()V

    .line 407
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    iget v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 409
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 410
    .local v0, "length":I
    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    if-le v2, v0, :cond_62

    .line 411
    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    .line 413
    :cond_62
    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    invoke-virtual {v2, v3, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 414
    return v1

    .line 402
    .end local v0    # "length":I
    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist processCustomTypeGestureUpInsert(Landroid/os/Bundle;FLandroid/graphics/RectF;I)Z
    .registers 21
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "scale"    # F
    .param p3, "windowRectF"    # Landroid/graphics/RectF;
    .param p4, "gestureType"    # I

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsMultiLine = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mIsMultiLine:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mGestureSelectionStart = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mGestureSelectionEnd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-boolean v2, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mIsMultiLine:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4c

    iget v2, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4c

    .line 432
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Not process a invalid insert gesture."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v3

    .line 435
    :cond_4c
    invoke-direct/range {p0 .. p4}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->getSelection(Landroid/os/Bundle;FLandroid/graphics/RectF;I)I

    move-result v2

    .line 437
    .local v2, "selection":I
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-gez v2, :cond_6d

    .line 441
    return v3

    .line 443
    :cond_6d
    iget-object v4, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 444
    move/from16 v4, p4

    invoke-direct {v0, v4}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->isVInsertType(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_7c

    .line 446
    return v6

    .line 450
    :cond_7c
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 451
    .local v5, "path":Landroid/graphics/Path;
    iget-object v7, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v7

    iget-object v8, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v2, v5, v8}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 452
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 453
    .local v7, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v5, v7, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 455
    iget-object v8, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v8

    .line 456
    .local v8, "paddingLeft":I
    iget-object v9, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v9

    .line 457
    .local v9, "paddingTop":I
    iget-object v10, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getScrollX()I

    move-result v10

    .line 458
    .local v10, "scrollX":I
    iget-object v11, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getScrollY()I

    move-result v11

    .line 459
    .local v11, "scrollY":I
    iget-object v12, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditTextScale:[F

    aget v13, v12, v3

    .line 460
    .local v13, "scaleX":F
    aget v12, v12, v6

    .line 461
    .local v12, "scaleY":F
    iget v14, v7, Landroid/graphics/RectF;->top:F

    int-to-float v15, v9

    add-float/2addr v14, v15

    int-to-float v15, v11

    sub-float/2addr v14, v15

    mul-float/2addr v14, v12

    iput v14, v7, Landroid/graphics/RectF;->top:F

    .line 462
    iget v14, v7, Landroid/graphics/RectF;->bottom:F

    int-to-float v15, v9

    add-float/2addr v14, v15

    int-to-float v15, v11

    sub-float/2addr v14, v15

    mul-float/2addr v14, v12

    iput v14, v7, Landroid/graphics/RectF;->bottom:F

    .line 463
    iget v14, v7, Landroid/graphics/RectF;->left:F

    int-to-float v15, v8

    add-float/2addr v14, v15

    int-to-float v15, v10

    sub-float/2addr v14, v15

    mul-float/2addr v14, v13

    iput v14, v7, Landroid/graphics/RectF;->left:F

    .line 464
    iget v14, v7, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    aget v15, v15, v6

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v7, Landroid/graphics/RectF;->top:F

    .line 465
    iget v14, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v15, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    aget v15, v15, v6

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v7, Landroid/graphics/RectF;->bottom:F

    .line 466
    iget v14, v7, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    aget v3, v15, v3

    int-to-float v3, v3

    add-float/2addr v14, v3

    iput v14, v7, Landroid/graphics/RectF;->left:F

    .line 467
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_11b

    if-eqz v1, :cond_11b

    .line 469
    iget v3, v7, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v14

    mul-float v3, v3, p2

    iget v14, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v14

    iput v3, v7, Landroid/graphics/RectF;->top:F

    .line 470
    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    iget v14, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v14

    mul-float v3, v3, p2

    iget v14, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v14

    iput v3, v7, Landroid/graphics/RectF;->bottom:F

    .line 471
    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v14, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v14

    mul-float v3, v3, p2

    iget v14, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v14

    iput v3, v7, Landroid/graphics/RectF;->left:F

    .line 473
    :cond_11b
    iget v3, v7, Landroid/graphics/RectF;->left:F

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v3, v14

    iput v3, v7, Landroid/graphics/RectF;->right:F

    .line 475
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cursor position on screen is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v3, "GESTURE_KEY_RESULT_CURSOR"

    move-object/from16 v14, p1

    invoke-virtual {v14, v3, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 478
    return v6
.end method

.method private blacklist processLastChar(Landroid/graphics/RectF;Landroid/graphics/RectF;I)I
    .registers 13
    .param p1, "targetRectF"    # Landroid/graphics/RectF;
    .param p2, "cutResultRectF"    # Landroid/graphics/RectF;
    .param p3, "itemEnd"    # I

    .line 819
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 821
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 823
    .local v1, "lineEnd":I
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineEnd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,itemEnd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    if-lez v1, :cond_d7

    if-lt p3, v1, :cond_38

    goto/16 :goto_d7

    .line 830
    :cond_38
    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "lastChar":Ljava/lang/String;
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last char is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string v3, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 835
    return p3

    .line 838
    :cond_71
    iget-object v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 839
    iget-object v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 841
    .local v3, "width":F
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last char width is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,cutResultRectF = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,targetRectF = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,targetRectF.right - width / 2.0f = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/graphics/RectF;->right:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v3, v7

    sub-float/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    div-float v6, v3, v7

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d6

    .line 849
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Force select last char"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return v1

    .line 853
    :cond_d6
    return p3

    .line 827
    .end local v2    # "lastChar":Ljava/lang/String;
    .end local v3    # "width":F
    :cond_d7
    :goto_d7
    return p3
.end method

.method private blacklist resetStatus()V
    .registers 4

    .line 740
    invoke-static {}, Landroid/widget/EditTextStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBeforeGestureSelectionStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mBeforeGestureSelectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBeforeGestureSelectionEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mBeforeGestureSelectionEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 746
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mBeforeGestureSelectionStart:I

    iget v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mBeforeGestureSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 747
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGraySpan:Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_49

    .line 749
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGraySpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 752
    :cond_49
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    .line 753
    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mIsMultiLine:Z

    .line 755
    return-void
.end method

.method private blacklist sendBundle(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 575
    :try_start_0
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    const-string v2, "ACTION_PRIVATE_COMMAND_APP"

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 579
    goto :goto_e

    .line 577
    :catch_a
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method private blacklist updateGesturePath(JLandroid/graphics/PointF;IFLandroid/graphics/RectF;)V
    .registers 15
    .param p1, "gestureId"    # J
    .param p3, "rawPointF"    # Landroid/graphics/PointF;
    .param p4, "eventType"    # I
    .param p5, "scale"    # F
    .param p6, "windowRectF"    # Landroid/graphics/RectF;

    .line 584
    iget-wide v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLastGestureId:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    .line 585
    invoke-direct {p0, p3, p5, p6}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->offsetPointF(Landroid/graphics/PointF;FLandroid/graphics/RectF;)V

    .line 586
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mPrePointF:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mPrePointF:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mPrePointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mPrePointF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    div-float/2addr v6, v5

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 588
    const/4 v0, 0x1

    if-ne p4, v0, :cond_35

    .line 589
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 591
    :cond_35
    iput-object p3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mPrePointF:Landroid/graphics/PointF;

    .line 593
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePathBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 594
    return-void

    .line 597
    :cond_3f
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->updateLocationAndScale()V

    .line 598
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    if-nez v0, :cond_55

    .line 599
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    .line 600
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePathBounds:Landroid/graphics/RectF;

    goto :goto_5d

    .line 602
    :cond_55
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 603
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePathBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 605
    :goto_5d
    invoke-direct {p0, p3, p5, p6}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->offsetPointF(Landroid/graphics/PointF;FLandroid/graphics/RectF;)V

    .line 607
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGesturePath:Landroid/graphics/Path;

    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 609
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->initLineRectFs()V

    .line 611
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionStart:I

    .line 612
    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mGestureSelectionEnd:I

    .line 613
    iput v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLastGestureType:I

    .line 615
    iput-object p3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mPrePointF:Landroid/graphics/PointF;

    .line 617
    iput-wide p1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLastGestureId:J

    .line 618
    iput-boolean v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mIsMultiLine:Z

    .line 620
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mBeforeGestureSelectionStart:I

    .line 621
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mBeforeGestureSelectionEnd:I

    .line 622
    return-void
.end method

.method private blacklist updateLocationAndScale()V
    .registers 4

    .line 625
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    const/4 v1, 0x2

    if-nez v0, :cond_9

    .line 626
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    .line 628
    :cond_9
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 629
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditTextScale:[F

    if-nez v0, :cond_18

    .line 630
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditTextScale:[F

    .line 632
    :cond_18
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditTextScale:[F

    invoke-static {v0, v1}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->getViewScale(Landroid/view/View;[F)V

    .line 633
    return-void
.end method


# virtual methods
.method protected blacklist afterPerformAccessibilityActionClick(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "data"    # Landroid/os/Bundle;

    .line 279
    if-nez p1, :cond_3

    .line 280
    return-void

    .line 282
    :cond_3
    const-string v0, "ACCESSIBILITY_ACTION_CLICK_POINT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 283
    .local v0, "point":Landroid/graphics/PointF;
    const-string v1, "GESTURE_KEY_WINDOW_SCALE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 284
    .local v1, "scale":F
    const-string v2, "GESTURE_KEY_WINDOW_RECT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 285
    .local v2, "windowRectF":Landroid/graphics/RectF;
    if-nez v0, :cond_1c

    .line 286
    return-void

    .line 288
    :cond_1c
    invoke-direct {p0}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->updateLocationAndScale()V

    .line 289
    invoke-direct {p0, v0, v1, v2}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->offsetPointF(Landroid/graphics/PointF;FLandroid/graphics/RectF;)V

    .line 290
    iget-object v3, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result v3

    .line 292
    .local v3, "offsetForPosition":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_30

    .line 293
    return-void

    .line 295
    :cond_30
    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 296
    iget-object v4, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 297
    return-void
.end method

.method synthetic blacklist lambda$getTextRectFOnScreen$0$android-widget-EditTextStubImpl$MiuiHandwritingEditTextHelper(Landroid/graphics/RectF;)V
    .registers 4
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .line 369
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mTextRectFOnScreen:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->copyRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic blacklist lambda$getTextRectFOnScreen$1$android-widget-EditTextStubImpl$MiuiHandwritingEditTextHelper(Landroid/graphics/RectF;)V
    .registers 5
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .line 372
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 373
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 374
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 375
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mLocationInScreen:[I

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 376
    return-void
.end method

.method protected blacklist needInterceptPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 258
    if-eqz p2, :cond_35

    const-string v0, "ACTION_PRIVATE_COMMAND_IME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_35

    .line 262
    :cond_b
    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_34

    .line 265
    :cond_21
    const-string v0, "BUNDLE_CUSTOM_TYPE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "type":I
    if-ne v0, v1, :cond_2d

    .line 267
    invoke-direct {p0, p2}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->processCustomTypeGesture(Landroid/os/Bundle;)V

    goto :goto_33

    .line 268
    :cond_2d
    const/4 v2, 0x2

    if-ne v0, v2, :cond_33

    .line 269
    invoke-direct {p0, p2}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->processCustomTypeEraser(Landroid/os/Bundle;)V

    .line 272
    :cond_33
    :goto_33
    return v1

    .line 263
    .end local v0    # "type":I
    :cond_34
    :goto_34
    return v1

    .line 259
    :cond_35
    :goto_35
    const/4 v0, 0x0

    return v0
.end method
