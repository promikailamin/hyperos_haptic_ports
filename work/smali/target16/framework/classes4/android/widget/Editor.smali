.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$AccessibilitySmartActions;,
        Landroid/widget/Editor$MagnifierMotionAnimator;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$InsertModeController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$TextActionMode;,
        Landroid/widget/Editor$AssistantCallbackHelper;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$HandleType;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$MagnifierHandleTrigger;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_ASSIST:I = 0x0

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_AUTOFILL:I = 0xa

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_COPY:I = 0x5

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_CUT:I = 0x4

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_PASTE:I = 0x6

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0xb

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SECONDARY_ASSIST_ACTIONS_START:I = 0x32

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SHARE:I = 0x7

.field private static final blacklist CONTEXT_MENU_GROUP_CLIPBOARD:I = 0x2

.field private static final blacklist CONTEXT_MENU_GROUP_MISC:I = 0x3

.field private static final blacklist CONTEXT_MENU_GROUP_UNDO_REDO:I = 0x1

.field private static final blacklist CONTEXT_MENU_ITEM_ORDER_REPLACE:I = 0xb

.field private static final blacklist CURSOR_START_FLOAT_DISTANCE_PX:I = 0x14

.field private static final greylist-max-o DEBUG_UNDO:Z = false

.field private static final blacklist DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final greylist-max-o DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x14

.field static final greylist-max-o EXTRACT_NOTHING:I = -0x2

.field static final greylist-max-o EXTRACT_UNKNOWN:I = -0x1

.field private static final blacklist FLAG_MISSPELLED_OR_GRAMMAR_ERROR:I = 0xa

.field private static final greylist-max-o FLAG_USE_MAGNIFIER:Z = true

.field public static final greylist-max-o HANDLE_TYPE_SELECTION_END:I = 0x1

.field public static final greylist-max-o HANDLE_TYPE_SELECTION_START:I = 0x0

.field private static final blacklist LINE_CHANGE_SLOP_MAX_DP:I = 0x2d

.field private static final blacklist LINE_CHANGE_SLOP_MIN_DP:I = 0x8

.field private static final blacklist MAX_LINE_HEIGHT_FOR_MAGNIFIER:I = 0x20

.field private static final blacklist MIN_LINE_HEIGHT_FOR_MAGNIFIER:I = 0x14

.field private static final blacklist RECENT_CUT_COPY_DURATION_MS:I = 0x3a98

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Editor"

.field private static final greylist-max-o UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final greylist-max-o UNSET_LINE:I = -0x1

.field private static final greylist-max-o UNSET_X_VALUE:I = -0x1


# instance fields
.field private final blacklist mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

.field greylist-max-o mAllowUndo:Z

.field private final blacklist mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private blacklist mBackCallbackRegistered:Z

.field private greylist-max-o mBlink:Landroid/widget/Editor$Blink;

.field private blacklist mBlinkInterval:I

.field private greylist-max-o mContextMenuAnchorX:F

.field private greylist-max-o mContextMenuAnchorY:F

.field private greylist-max-o mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field greylist-max-r mCreatedWithASelection:Z

.field private final greylist-max-o mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field private blacklist mCursorDragDirectionMinXYRatio:F

.field greylist-max-o mCursorVisible:Z

.field greylist-max-o mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field greylist-max-o mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private final blacklist mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

.field greylist-max-o mDiscardNextActionUp:Z

.field private final blacklist mDoubleTapTimeoutMillis:I

.field private blacklist mDrawCursorOnMagnifier:Z

.field greylist-max-o mDrawableForCursor:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mError:Ljava/lang/CharSequence;

.field private greylist-max-o mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field greylist-max-o mErrorWasChanged:Z

.field private blacklist mFlagCursorDragFromAnywhereEnabled:Z

.field private blacklist mFlagInsertionHandleGesturesEnabled:Z

.field greylist-max-o mFrozenWithFocus:Z

.field private final greylist-max-o mHapticTextHandleEnabled:Z

.field private blacklist mHasPendingRestartInputForSetText:Z

.field greylist-max-o mIgnoreActionUpEvent:Z

.field greylist-max-o mInBatchEditControllers:Z

.field private blacklist mInitialZoom:F

.field greylist-max-o mInputContentType:Landroid/widget/Editor$InputContentType;

.field greylist-max-o mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field greylist-max-o mInputType:I

.field private blacklist mInsertModeController:Landroid/widget/Editor$InsertModeController;

.field private greylist-max-o mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field private greylist mInsertionControllerEnabled:Z

.field greylist-max-o mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field greylist-max-o mIsBeingLongClicked:Z

.field blacklist mIsBeingLongClickedByAccessibility:Z

.field greylist-max-o mIsInsertionActionModeStartPending:Z

.field greylist-max-o mKeyListener:Landroid/text/method/KeyListener;

.field private greylist-max-o mLastButtonState:I

.field private blacklist mLineChangeSlopMax:I

.field private blacklist mLineChangeSlopMin:I

.field private final blacklist mLineSlopRatio:F

.field private greylist-max-o mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

.field private final greylist-max-o mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private blacklist mMaxLineHeightForMagnifier:I

.field private blacklist mMinLineHeightForMagnifier:I

.field private final blacklist mNewMagnifierEnabled:Z

.field private final greylist-max-o mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private greylist-max-o mPositionListener:Landroid/widget/Editor$PositionListener;

.field private greylist-max-o mPreserveSelection:Z

.field final greylist-max-o mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private greylist-max-o mRenderCursorRegardlessTiming:Z

.field private greylist-max-o mRequestingLinkActionMode:Z

.field private greylist-max-o mRestartActionModeOnNextRefresh:Z

.field greylist-max-o mSelectAllOnFocus:Z

.field greylist-max-p mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

.field private greylist mSelectionControllerEnabled:Z

.field greylist-max-o mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field greylist-max-o mSelectionMoved:Z

.field private greylist-max-p mShowCursor:J

.field private greylist-max-o mShowErrorAfterAttach:Z

.field private final greylist-max-o mShowFloatingToolbar:Ljava/lang/Runnable;

.field greylist-max-r mShowSoftInputOnFocus:Z

.field private greylist-max-o mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mSpanController:Landroid/widget/Editor$SpanController;

.field greylist-max-o mSpellChecker:Landroid/widget/SpellChecker;

.field private final greylist-max-o mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

.field greylist-max-o mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private greylist-max-o mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTextActionMode:Landroid/view/ActionMode;

.field greylist-max-o mTextIsSelectable:Z

.field private greylist-max-o mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private final greylist-max-o mTextView:Landroid/widget/TextView;

.field greylist-max-o mTouchFocusSelected:Z

.field private final blacklist mTouchState:Landroid/widget/EditorTouchState;

.field final greylist-max-o mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final greylist-max-o mUndoManager:Landroid/content/UndoManager;

.field private greylist-max-o mUndoOwner:Landroid/content/UndoOwner;

.field private final greylist-max-o mUpdateMagnifierRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mUpdateWordIteratorText:Z

.field private greylist-max-o mWordIterator:Landroid/text/method/WordIterator;

.field private greylist-max-o mWordIteratorWithText:Landroid/text/method/WordIterator;


# direct methods
.method public static synthetic blacklist $r8$lambda$GRBrITjWGGT8h7sSZa63vDb9MPs(Landroid/widget/Editor;Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->lambda$setAssistContextMenuItems$1(Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wQ33dZlDHVA0D7aARwa214iyOhk(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->lambda$startActionModeInternal$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlinkInterval(Landroid/widget/Editor;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mBlinkInterval:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorDragDirectionMinXYRatio(Landroid/widget/Editor;)F
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDoubleTapTimeoutMillis(Landroid/widget/Editor;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mDoubleTapTimeoutMillis:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialZoom(Landroid/widget/Editor;)F
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mInitialZoom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLineHeightForMagnifier(Landroid/widget/Editor;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mMaxLineHeightForMagnifier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreserveSelection(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestionHelper(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateMagnifierRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCorrectionHighlighter(Landroid/widget/Editor;Landroid/widget/Editor$CorrectionHighlighter;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInsertionActionModeRunnable(Landroid/widget/Editor;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreserveSelection(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestingLinkActionMode(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTempRect(Landroid/widget/Editor;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTextActionMode(Landroid/widget/Editor;Landroid/view/ActionMode;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextractedTextModeWillBeStarted(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindEquivalentSuggestionSpan(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInputMethodManager(Landroid/widget/Editor;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetParagraphsRange(Landroid/widget/Editor;II)J
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWordStart(Landroid/widget/Editor;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misCursorInsideEasyCorrectionSpan(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misOffsetVisible(Landroid/widget/Editor;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPositionOnText(Landroid/widget/Editor;FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreplaceWithSuggestion(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresumeBlink(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mselectCurrentParagraph(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentParagraph()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mselectCurrentWordAndStartDrag(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendUpdateSelection(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldBlink(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDragAndDrop(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msuspendBlink(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoggleInsertionActionMode(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->toggleInsertionActionMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSpellCheckSpans(Landroid/widget/Editor;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .registers 6

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Landroid/widget/TextViewOnReceiveContentListener;

    invoke-direct {v0}, Landroid/widget/TextViewOnReceiveContentListener;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    .line 236
    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 237
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 238
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 253
    new-instance v1, Landroid/widget/Editor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 259
    new-instance v1, Landroid/widget/Editor$1;

    invoke-direct {v1, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    .line 269
    new-instance v1, Landroid/widget/Editor$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 296
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 329
    iput v1, p0, Landroid/widget/Editor;->mInputType:I

    .line 342
    const/16 v2, 0x1f4

    iput v2, p0, Landroid/widget/Editor;->mBlinkInterval:I

    .line 347
    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 364
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 379
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 402
    new-instance v3, Landroid/widget/EditorTouchState;

    invoke-direct {v3}, Landroid/widget/EditorTouchState;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 427
    new-instance v3, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 430
    new-instance v3, Landroid/widget/Editor$3;

    invoke-direct {v3, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 439
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 441
    new-instance v3, Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    .line 461
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/Editor;->mInitialZoom:F

    .line 3540
    new-instance v3, Landroid/widget/Editor$5;

    invoke-direct {v3, p0}, Landroid/widget/Editor$5;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 482
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 484
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 485
    nop

    .line 486
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result p1

    if-eqz p1, :cond_96

    .line 487
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getDoubleTapTimeoutMillis()I

    move-result p1

    goto :goto_9a

    .line 488
    :cond_96
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    :goto_9a
    iput p1, p0, Landroid/widget/Editor;->mDoubleTapTimeoutMillis:I

    .line 489
    new-instance p1, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {p1, p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object p1, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 490
    new-instance p1, Landroid/widget/Editor$AccessibilitySmartActions;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p1, v3, v2}, Landroid/widget/Editor$AccessibilitySmartActions;-><init>(Landroid/widget/TextView;Landroid/widget/Editor-IA;)V

    iput-object p1, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    .line 491
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1110191

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    .line 494
    const-string p1, "widget__enable_cursor_drag_from_anywhere"

    invoke-static {p1, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_c9

    move p1, v0

    goto :goto_ca

    :cond_c9
    move p1, v1

    :goto_ca
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    .line 497
    const-string p1, "widget__min_angle_from_vertical_to_start_cursor_drag"

    const/16 v2, 0x2d

    invoke-static {p1, v2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    .line 500
    invoke-static {p1}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result p1

    iput p1, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    .line 502
    const-string p1, "widget__enable_insertion_handle_gestures"

    invoke-static {p1, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_e4

    move p1, v0

    goto :goto_e5

    :cond_e4
    move p1, v1

    :goto_e5
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    .line 505
    const-string p1, "widget__enable_new_magnifier"

    invoke-static {p1, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_f0

    move v1, v0

    :cond_f0
    iput-boolean v1, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    .line 508
    const-string p1, "widget__line_slop_ratio"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, v1}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    .line 522
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 524
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 522
    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    .line 525
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 527
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 525
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    .line 529
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->textCursorBlinkInterval()Z

    move-result p1

    if-eqz p1, :cond_140

    .line 530
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 531
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getTextCursorBlinkIntervalMillis()I

    move-result p1

    iput p1, p0, Landroid/widget/Editor;->mBlinkInterval:I

    .line 533
    :cond_140
    return-void
.end method

.method private greylist-max-o chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .registers 10

    .line 1161
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1162
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1164
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10503aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1166
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p2, v5, v3, v4, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    .line 1168
    invoke-virtual {p3}, Landroid/widget/TextView;->isFallbackLineSpacingForStaticLayout()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    .line 1169
    invoke-virtual {p2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p2

    .line 1171
    nop

    .line 1172
    const/4 p3, 0x0

    :goto_3a
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v5, v2, :cond_4b

    .line 1173
    invoke-virtual {p2, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 1172
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 1180
    :cond_4b
    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1181
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1182
    return-void
.end method

.method private greylist-max-o clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .registers 9

    .line 2914
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p2, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 2915
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 2917
    :cond_12
    nop

    .line 2918
    if-eqz p1, :cond_1f

    .line 2919
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2920
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    goto :goto_25

    .line 2922
    :cond_1f
    iget-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 p1, 0x0

    .line 2925
    :goto_25
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 2926
    int-to-float v1, v0

    sub-float v1, p2, v1

    .line 2927
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2928
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2931
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v3, v4

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_53

    .line 2933
    add-int/2addr v2, v0

    iget-object p2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    sub-int/2addr v2, p1

    goto :goto_83

    .line 2934
    :cond_53
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v4

    if-lez p1, :cond_7d

    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2935
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_75

    const/high16 p1, 0x100000

    sub-int/2addr p1, v0

    int-to-float p1, p1

    add-float/2addr v3, v4

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_75

    cmpg-float p1, p2, v4

    if-gtz p1, :cond_75

    goto :goto_7d

    .line 2941
    :cond_75
    float-to-int p1, p2

    iget-object p2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int v2, p1, p2

    goto :goto_83

    .line 2939
    :cond_7d
    :goto_7d
    iget-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, p1

    .line 2943
    :goto_83
    return v2
.end method

.method private blacklist createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;
    .registers 9

    .line 584
    new-instance v0, Landroid/widget/Magnifier$Builder;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    .line 586
    const-string v1, "widget__magnifier_zoom_factor"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v1, v2}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    .line 589
    const-string v3, "widget__magnifier_aspect_ratio"

    const/high16 v4, 0x40b00000    # 5.5f

    invoke-static {v3, v4}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v3

    .line 593
    const v5, 0x3f99999a    # 1.2f

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_28

    const v5, 0x3fe66666    # 1.8f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_26

    goto :goto_28

    :cond_26
    move v2, v1

    goto :goto_29

    .line 594
    :cond_28
    :goto_28
    nop

    .line 596
    :goto_29
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_38

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v1, v3, v1

    if-lez v1, :cond_36

    goto :goto_38

    :cond_36
    move v4, v3

    goto :goto_39

    .line 597
    :cond_38
    :goto_38
    nop

    .line 600
    :goto_39
    iput v2, p0, Landroid/widget/Editor;->mInitialZoom:F

    .line 601
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 603
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 601
    const/4 v3, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v3, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    .line 604
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 606
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 604
    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v3, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor;->mMaxLineHeightForMagnifier:I

    .line 608
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 609
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStartTransformed()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 610
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v7

    .line 611
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v7, v1

    .line 612
    int-to-float v1, v7

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 613
    iget v5, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 615
    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->setFishEyeStyle()Landroid/widget/Magnifier$Builder;

    move-result-object v5

    .line 616
    invoke-virtual {v5, v4, v1}, Landroid/widget/Magnifier$Builder;->setSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v1

    .line 617
    invoke-virtual {v1, v4, v7}, Landroid/widget/Magnifier$Builder;->setSourceSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v1

    .line 618
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Magnifier$Builder;->setElevation(F)Landroid/widget/Magnifier$Builder;

    move-result-object v1

    .line 619
    invoke-virtual {v1, v2}, Landroid/widget/Magnifier$Builder;->setInitialZoom(F)Landroid/widget/Magnifier$Builder;

    move-result-object v1

    .line 620
    invoke-virtual {v1, v6}, Landroid/widget/Magnifier$Builder;->setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;

    .line 622
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 623
    sget-object v2, Lcom/android/internal/R$styleable;->Magnifier:[I

    const v4, 0x112008c

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 626
    nop

    .line 627
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 629
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 626
    invoke-virtual {v0, v2, v4}, Landroid/widget/Magnifier$Builder;->setDefaultSourceToMagnifierOffset(II)Landroid/widget/Magnifier$Builder;

    .line 631
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 633
    invoke-virtual {v0, v3, v6, v3, v6}, Landroid/widget/Magnifier$Builder;->setSourceBounds(IIII)Landroid/widget/Magnifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method private blacklist deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    .registers 7

    .line 3128
    iget v0, p1, Landroid/widget/Editor$DragLocalState;->start:I

    .line 3129
    iget p1, p1, Landroid/widget/Editor$DragLocalState;->end:I

    .line 3130
    if-gt p2, v0, :cond_13

    .line 3132
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr p2, p3

    .line 3133
    add-int/2addr v0, p2

    .line 3134
    add-int/2addr p1, p2

    .line 3138
    :cond_13
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3141
    add-int/lit8 p1, v0, -0x1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3142
    iget-object p3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 3143
    add-int/lit8 v0, p1, 0x1

    if-le p3, v0, :cond_52

    .line 3144
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p3}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object p3

    .line 3145
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p2

    if-eqz p2, :cond_52

    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 3146
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3149
    :cond_52
    return-void
.end method

.method private greylist-max-o discardTextDisplayLists()V
    .registers 4

    .line 831
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_26

    .line 832
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 833
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    .line 834
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 835
    :goto_18
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 836
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->discardDisplayList()V

    .line 832
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 840
    :cond_26
    return-void
.end method

.method private greylist-max-o downgradeEasyCorrectionSpans()V
    .registers 5

    .line 1707
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1708
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_36

    .line 1709
    check-cast v0, Landroid/text/Spannable;

    .line 1710
    nop

    .line 1711
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/SuggestionSpan;

    .line 1710
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 1712
    nop

    :goto_1b
    array-length v1, v0

    if-ge v3, v1, :cond_36

    .line 1713
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v1

    .line 1714
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_33

    and-int/lit8 v2, v1, 0xa

    if-nez v2, :cond_33

    .line 1716
    and-int/lit8 v1, v1, -0x2

    .line 1717
    aget-object v2, v0, v3

    invoke-virtual {v2, v1}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1712
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1721
    :cond_36
    return-void
.end method

.method private greylist-max-o drawCursor(Landroid/graphics/Canvas;I)V
    .registers 6

    .line 2383
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 2384
    :goto_5
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    int-to-float v2, p2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2385
    :cond_c
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_15

    .line 2386
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2388
    :cond_15
    if-eqz v0, :cond_1c

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2389
    :cond_1c
    return-void
.end method

.method private blacklist drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "IZ)V"
        }
    .end annotation

    .line 2200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v3

    .line 2201
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 2202
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    .line 2203
    if-gez v8, :cond_15

    return-void

    .line 2206
    :cond_15
    if-nez p8, :cond_2f

    .line 2207
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v9, v8

    move v8, v7

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v9}, Landroid/text/Layout;->drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    move v11, v8

    move v12, v9

    goto :goto_34

    .line 2210
    :cond_2f
    move v11, v7

    move v12, v8

    invoke-virtual {v2, v1, v11, v12}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 2213
    :goto_34
    instance-of v3, v2, Landroid/text/DynamicLayout;

    if-eqz v3, :cond_141

    .line 2214
    iget-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v3, :cond_46

    .line 2215
    const-class v3, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/widget/Editor$TextRenderNode;

    iput-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2218
    :cond_46
    move-object v13, v2

    check-cast v13, Landroid/text/DynamicLayout;

    .line 2219
    invoke-virtual {v13}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v6

    .line 2220
    invoke-virtual {v13}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v7

    .line 2221
    invoke-virtual {v13}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v9

    .line 2222
    invoke-virtual {v13}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v14

    .line 2224
    invoke-virtual {v13}, Landroid/text/DynamicLayout;->getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;

    move-result-object v15

    .line 2225
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v15, :cond_89

    .line 2226
    move v8, v4

    :goto_63
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v8, v10, :cond_89

    .line 2227
    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v13, v10}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v10

    .line 2228
    if-eq v10, v3, :cond_85

    iget-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v10

    if-eqz v3, :cond_85

    .line 2230
    iget-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v10

    iput-boolean v5, v3, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2226
    :cond_85
    add-int/lit8 v8, v8, 0x1

    const/4 v3, -0x1

    goto :goto_63

    .line 2235
    :cond_89
    invoke-static {v6, v4, v9, v11}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    .line 2236
    if-gez v3, :cond_92

    .line 2237
    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    .line 2239
    :cond_92
    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2241
    nop

    .line 2242
    nop

    .line 2244
    move v8, v3

    move v10, v4

    :goto_9a
    if-ge v8, v9, :cond_e5

    .line 2245
    aget v3, v7, v8

    .line 2246
    if-lt v8, v14, :cond_af

    const/4 v4, -0x1

    if-eq v3, v4, :cond_af

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v3

    if-eqz v4, :cond_af

    .line 2249
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v4, v3

    iput-boolean v5, v3, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2251
    :cond_af
    aget v3, v6, v8

    if-ge v3, v11, :cond_bb

    .line 2254
    move/from16 v18, v5

    move/from16 v16, v11

    const/4 v11, -0x1

    const/16 v17, 0x0

    goto :goto_d8

    .line 2256
    :cond_bb
    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v18, v5

    move/from16 v16, v11

    const/4 v11, -0x1

    const/16 v17, 0x0

    move/from16 v5, p7

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v10

    .line 2260
    aget v1, v6, v8

    if-lt v1, v12, :cond_d8

    .line 2261
    add-int/lit8 v8, v8, 0x1

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2262
    move v14, v1

    goto :goto_eb

    .line 2244
    :cond_d8
    :goto_d8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v11, v16

    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_9a

    :cond_e5
    move/from16 v17, v4

    move/from16 v16, v11

    const/4 v11, -0x1

    move v14, v9

    .line 2265
    :goto_eb
    if-eqz v15, :cond_137

    .line 2266
    move/from16 v1, v17

    :goto_ef
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_132

    .line 2267
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2268
    invoke-virtual {v13, v8}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v2

    .line 2269
    if-eq v2, v11, :cond_11b

    iget-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v2

    if-eqz v3, :cond_11b

    iget-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v2, v3, v2

    iget-boolean v2, v2, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-eqz v2, :cond_114

    goto :goto_11b

    :cond_114
    move-object/from16 v2, p2

    move/from16 v17, v1

    move-object/from16 v1, p1

    goto :goto_12c

    .line 2272
    :cond_11b
    :goto_11b
    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v17, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v8

    move v10, v8

    .line 2266
    :goto_12c
    add-int/lit8 v0, v17, 0x1

    move v1, v0

    move-object/from16 v0, p0

    goto :goto_ef

    :cond_132
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_13b

    .line 2265
    :cond_137
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2280
    :goto_13b
    invoke-virtual {v13, v14}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    .line 2281
    move/from16 v7, v16

    goto :goto_148

    .line 2283
    :cond_141
    move/from16 v16, v11

    move/from16 v7, v16

    invoke-virtual {v2, v1, v7, v12}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 2286
    :goto_148
    if-eqz p8, :cond_159

    .line 2287
    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object v0, v2

    move v8, v12

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 2290
    :cond_159
    return-void
.end method

.method private greylist-max-o drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I
    .registers 27

    .line 2296
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    aget v3, p6, p8

    .line 2297
    aget v4, v2, p8

    .line 2299
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_11

    move v5, v6

    goto :goto_12

    :cond_11
    move v5, v7

    .line 2300
    :goto_12
    if-eqz v5, :cond_2e

    .line 2301
    move/from16 v4, p9

    move/from16 v5, p10

    invoke-direct {v0, v2, v4, v5}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v4

    .line 2304
    aput v4, v2, p8

    .line 2305
    iget-object v2, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v2, v2, v4

    if-eqz v2, :cond_2a

    .line 2306
    iget-object v2, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v2, v2, v4

    iput-boolean v6, v2, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2308
    :cond_2a
    add-int/lit8 v2, v4, 0x1

    move v5, v2

    goto :goto_30

    .line 2300
    :cond_2e
    move/from16 v5, p10

    .line 2311
    :goto_30
    iget-object v2, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v2, v2, v4

    if-nez v2, :cond_52

    .line 2312
    iget-object v2, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    new-instance v8, Landroid/widget/Editor$TextRenderNode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Text "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    aput-object v8, v2, v4

    .line 2315
    :cond_52
    iget-object v2, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v2

    .line 2316
    iget-object v8, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v8, v8, v4

    iget-object v8, v8, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    .line 2317
    iget-object v9, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v9, v9, v4

    iget-boolean v9, v9, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-nez v9, :cond_6a

    if-eqz v2, :cond_e2

    .line 2318
    :cond_6a
    if-nez p8, :cond_6e

    .line 2319
    move v9, v7

    goto :goto_73

    :cond_6e
    add-int/lit8 v9, p8, -0x1

    aget v9, p6, v9

    add-int/2addr v9, v6

    .line 2320
    :goto_73
    invoke-virtual {v1, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 2321
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    .line 2322
    nop

    .line 2323
    iget-object v11, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getWidth()I

    move-result v11

    .line 2324
    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v12

    if-eqz v12, :cond_af

    .line 2325
    nop

    .line 2326
    nop

    .line 2327
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v12, 0x1

    move v13, v9

    :goto_91
    if-gt v13, v3, :cond_a6

    .line 2328
    invoke-virtual {v1, v13}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 2329
    invoke-virtual {v1, v13}, Landroid/text/Layout;->getLineRight(I)F

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 2327
    add-int/lit8 v13, v13, 0x1

    goto :goto_91

    .line 2331
    :cond_a6
    float-to-int v11, v11

    .line 2332
    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move v15, v12

    move v12, v11

    move v11, v15

    goto :goto_b0

    .line 2324
    :cond_af
    move v12, v7

    .line 2336
    :goto_b0
    if-eqz v2, :cond_d9

    .line 2337
    sub-int v2, v11, v12

    sub-int v13, v10, v6

    invoke-virtual {v8, v2, v13}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    .line 2342
    neg-int v13, v12

    int-to-float v13, v13

    neg-int v14, v6

    int-to-float v14, v14

    :try_start_be
    invoke-virtual {v2, v13, v14}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 2343
    invoke-virtual {v1, v2, v9, v3}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 2344
    iget-object v1, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v4

    iput-boolean v7, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_ca
    .catchall {:try_start_be .. :try_end_ca} :catchall_d1

    .line 2348
    invoke-virtual {v8}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2350
    invoke-virtual {v8, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 2351
    goto :goto_d9

    .line 2348
    :catchall_d1
    move-exception v0

    invoke-virtual {v8}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2350
    invoke-virtual {v8, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 2351
    throw v0

    .line 2355
    :cond_d9
    :goto_d9
    invoke-virtual {v8, v12, v6, v11, v10}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 2356
    iget-object v0, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v4

    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2358
    :cond_e2
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-virtual {v0, v8}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 2359
    return v5
.end method

.method private blacklist drawLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "IZ)V"
        }
    .end annotation

    .line 2186
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2187
    invoke-direct/range {p0 .. p8}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V

    goto :goto_1b

    .line 2191
    :cond_12
    move-object p0, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move p6, p7

    invoke-virtual/range {p0 .. p6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 2194
    :goto_1b
    return-void
.end method

.method private greylist-max-o ensureNoSelectionIfNonSelectable()V
    .registers 4

    .line 1696
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1697
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1698
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 1697
    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1700
    :cond_27
    return-void
.end method

.method private greylist-max-o extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .registers 14

    .line 1979
    const/4 v0, 0x0

    if-eqz p1, :cond_b0

    if-nez p5, :cond_7

    goto/16 :goto_b0

    .line 1983
    :cond_7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1984
    if-nez v1, :cond_10

    .line 1985
    return v0

    .line 1988
    :cond_10
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_70

    .line 1989
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1990
    if-gez p2, :cond_22

    .line 1991
    const/4 p2, -0x1

    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1992
    nop

    .line 1993
    move p2, v0

    goto :goto_5d

    .line 1997
    :cond_22
    add-int/2addr p3, p4

    .line 1999
    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_48

    .line 2000
    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    .line 2001
    const-class v5, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 2003
    array-length v6, v5

    .line 2004
    :goto_31
    if-lez v6, :cond_48

    .line 2005
    add-int/lit8 v6, v6, -0x1

    .line 2006
    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 2007
    if-ge v7, p2, :cond_3e

    move p2, v7

    .line 2008
    :cond_3e
    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 2009
    if-le v7, p3, :cond_47

    move p3, v7

    .line 2010
    :cond_47
    goto :goto_31

    .line 2012
    :cond_48
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2013
    sub-int p4, p3, p4

    iput p4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2015
    if-le p2, v2, :cond_52

    .line 2016
    move p2, v2

    goto :goto_55

    .line 2017
    :cond_52
    if-gez p2, :cond_55

    .line 2018
    move p2, v0

    .line 2020
    :cond_55
    :goto_55
    if-le p3, v2, :cond_58

    .line 2021
    goto :goto_5d

    .line 2022
    :cond_58
    if-gez p3, :cond_5c

    .line 2023
    move v2, v0

    goto :goto_5d

    .line 2022
    :cond_5c
    move v2, p3

    .line 2026
    :goto_5d
    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_69

    .line 2027
    invoke-interface {v1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_6f

    .line 2030
    :cond_69
    invoke-static {v1, p2, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2033
    :goto_6f
    goto :goto_78

    .line 2034
    :cond_70
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2035
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2036
    const-string p1, ""

    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2038
    :goto_78
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2039
    const/16 p1, 0x800

    invoke-static {v1, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p1

    if-eqz p1, :cond_88

    .line 2040
    iget p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2042
    :cond_88
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSingleLine()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 2043
    iget p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/2addr p1, v3

    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2045
    :cond_95
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 2046
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 2047
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 2048
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    .line 2049
    return v3

    .line 1980
    :cond_b0
    :goto_b0
    return v0
.end method

.method private greylist-max-o extractedTextModeWillBeStarted()Z
    .registers 3

    .line 2675
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 2676
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2677
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 2679
    :cond_17
    return v1
.end method

.method private greylist-max-o findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .registers 9

    .line 3450
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 3451
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_13

    .line 3453
    iget-object p1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    return-object p1

    .line 3457
    :cond_13
    iget v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    iget v2, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 3459
    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_43

    aget-object v4, v1, v3

    .line 3460
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3461
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-eq v5, v6, :cond_2e

    .line 3462
    goto :goto_40

    .line 3464
    :cond_2e
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 3465
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    if-eq v5, v6, :cond_37

    .line 3466
    goto :goto_40

    .line 3468
    :cond_37
    iget-object v5, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v4, v5}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 3469
    return-object v4

    .line 3459
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3472
    :cond_43
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o getAvailableDisplayListIndex([III)I
    .registers 8

    .line 2364
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v0, v0

    .line 2365
    nop

    :goto_4
    if-ge p3, v0, :cond_1b

    .line 2366
    nop

    .line 2367
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, p2, :cond_15

    .line 2368
    aget v3, p1, v2

    if-ne v3, p3, :cond_12

    .line 2369
    nop

    .line 2370
    const/4 v1, 0x1

    goto :goto_15

    .line 2367
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2373
    :cond_15
    :goto_15
    if-eqz v1, :cond_1a

    .line 2365
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 2374
    :cond_1a
    return p3

    .line 2378
    :cond_1b
    iget-object p1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/widget/Editor$TextRenderNode;

    iput-object p1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2379
    return v0
.end method

.method private greylist-max-o getCharClusterRange(I)J
    .registers 5

    .line 1414
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1415
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1c

    .line 1416
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result p1

    .line 1417
    nop

    .line 1418
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v0

    .line 1417
    invoke-static {v0, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    .line 1420
    :cond_1c
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_2e

    .line 1421
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result p1

    .line 1422
    nop

    .line 1423
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v0

    .line 1422
    invoke-static {p1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    .line 1425
    :cond_2e
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getErrorX()I
    .registers 7

    .line 924
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 926
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 928
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 931
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_54

    .line 934
    if-eqz v1, :cond_35

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_35

    .line 939
    :pswitch_23
    if-eqz v1, :cond_27

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_27
    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    sub-int/2addr v5, v0

    .line 940
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_52

    .line 934
    :cond_35
    :goto_35
    neg-int v1, v5

    div-int/lit8 v1, v1, 0x2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v1, v0

    .line 935
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v2}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 936
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 937
    nop

    .line 943
    :goto_52
    return v0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method

.method private greylist-max-o getErrorY()I
    .registers 6

    .line 955
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 956
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 957
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 959
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 961
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v3

    .line 963
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_56

    .line 966
    if-eqz v2, :cond_33

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_33

    .line 969
    :pswitch_2e
    if-eqz v2, :cond_34

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_34

    .line 967
    :cond_33
    :goto_33
    nop

    .line 973
    :cond_34
    :goto_34
    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 979
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 980
    add-int/2addr v0, v4

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method

.method private blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .line 1872
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private greylist-max-o getLastTapPosition()I
    .registers 3

    .line 1743
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_23

    .line 1744
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1745
    if-ltz v0, :cond_23

    .line 1747
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_22

    .line 1748
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1750
    :cond_22
    return v0

    .line 1754
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getLastTouchOffsets()J
    .registers 3

    .line 1585
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1586
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1587
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1588
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;
    .registers 4

    .line 572
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-nez v0, :cond_1f

    .line 575
    iget-boolean v0, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    if-eqz v0, :cond_d

    .line 576
    invoke-direct {p0}, Landroid/widget/Editor;->createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;

    move-result-object v0

    goto :goto_13

    .line 577
    :cond_d
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/Magnifier;->createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;

    move-result-object v0

    .line 578
    :goto_13
    new-instance v1, Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/widget/Editor$MagnifierMotionAnimator;-><init>(Landroid/widget/Magnifier;Landroid/widget/Editor-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    .line 580
    :cond_1f
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object v0
.end method

.method private greylist-max-o getNextCursorOffset(IZ)I
    .registers 6

    .line 1399
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1400
    if-nez v0, :cond_9

    return p1

    .line 1401
    :cond_9
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1402
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p1

    .line 1404
    invoke-virtual {v0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    if-ne p2, v1, :cond_1b

    .line 1405
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result p1

    goto :goto_1f

    .line 1407
    :cond_1b
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result p1

    .line 1410
    :goto_1f
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1, v2}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result p1

    return p1
.end method

.method private greylist-max-o getParagraphsRange(II)J
    .registers 8

    .line 1333
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p1

    .line 1335
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p2

    .line 1337
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1338
    if-nez v0, :cond_1b

    .line 1339
    const/4 p1, -0x1

    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p1

    return-wide p1

    .line 1341
    :cond_1b
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1342
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    .line 1344
    :goto_23
    const/16 v3, 0xa

    if-lez p1, :cond_38

    .line 1345
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1346
    sub-int/2addr v4, v1

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_35

    .line 1347
    goto :goto_38

    .line 1349
    :cond_35
    add-int/lit8 p1, p1, -0x1

    .line 1350
    goto :goto_23

    .line 1351
    :cond_38
    :goto_38
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p2

    .line 1353
    :goto_3c
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p2, v4, :cond_52

    .line 1354
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1355
    sub-int/2addr v4, v1

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_4f

    .line 1356
    goto :goto_52

    .line 1358
    :cond_4f
    add-int/lit8 p2, p2, 0x1

    .line 1359
    goto :goto_3c

    .line 1360
    :cond_52
    :goto_52
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result p1

    .line 1362
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result p2

    .line 1364
    invoke-static {p1, p2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p1

    return-wide p1
.end method

.method private greylist-max-o getPositionListener()Landroid/widget/Editor$PositionListener;
    .registers 3

    .line 1451
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_c

    .line 1452
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 1454
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private greylist-max-o getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;
    .registers 2

    .line 2583
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-nez v0, :cond_b

    .line 2584
    new-instance v0, Landroid/widget/SelectionActionModeHelper;

    invoke-direct {v0, p0}, Landroid/widget/SelectionActionModeHelper;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    .line 2586
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    return-object v0
.end method

.method private greylist-max-o getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .registers 6

    .line 3047
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090161

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3050
    if-eqz v0, :cond_63

    .line 3054
    sub-int v1, p2, p1

    const/16 v2, 0x14

    if-le v1, v2, :cond_22

    .line 3055
    add-int/lit8 p2, p1, 0x14

    invoke-direct {p0, p2}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v1

    .line 3056
    invoke-static {v1, v2}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p2

    .line 3058
    :cond_22
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3059
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3060
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3062
    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 3063
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3065
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3068
    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3069
    invoke-virtual {v0, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 3071
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, p1, p1, p2, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 3072
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 3073
    new-instance p1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p1, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 3051
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to inflate text drag thumbnail"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o getWordEnd(I)I
    .registers 4

    .line 1211
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 1212
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1214
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    goto :goto_23

    .line 1217
    :cond_1b
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    .line 1219
    :goto_23
    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 1220
    return p1

    .line 1222
    :cond_27
    return v0
.end method

.method private greylist-max-o getWordIteratorWithText()Landroid/text/method/WordIterator;
    .registers 5

    .line 1382
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v0, :cond_14

    .line 1383
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1386
    :cond_14
    iget-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    if-eqz v0, :cond_2a

    .line 1391
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1392
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1393
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1395
    :cond_2a
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method private greylist-max-o getWordStart(I)I
    .registers 4

    .line 1196
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 1197
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1199
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    goto :goto_23

    .line 1202
    :cond_1b
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    .line 1204
    :goto_23
    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 1205
    return p1

    .line 1207
    :cond_27
    return v0
.end method

.method private greylist-max-o hideCursorControllers()V
    .registers 2

    .line 1072
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 1073
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1075
    :cond_14
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 1077
    :cond_19
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 1078
    return-void
.end method

.method private greylist-max-o hideError()V
    .registers 2

    .line 906
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_11

    .line 907
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 908
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 912
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 913
    return-void
.end method

.method private greylist-max-o hideSpanControllers()V
    .registers 2

    .line 1062
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_9

    .line 1063
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 1065
    :cond_9
    return-void
.end method

.method private greylist-max-o invalidateActionMode()V
    .registers 2

    .line 2577
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2578
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2580
    :cond_9
    return-void
.end method

.method private greylist-max-o isCursorInsideEasyCorrectionSpan()Z
    .registers 6

    .line 2750
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 2751
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2752
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 2751
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 2753
    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    array-length v3, v0

    if-ge v2, v3, :cond_2f

    .line 2754
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2c

    .line 2755
    return v4

    .line 2753
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2758
    :cond_2f
    return v1
.end method

.method private greylist-max-o isCursorVisible()Z
    .registers 2

    .line 997
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o isOffsetVisible(I)Z
    .registers 5

    .line 1463
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1464
    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 1466
    :cond_a
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1467
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p1

    .line 1468
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1469
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 1470
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    float-to-int p1, p1

    .line 1471
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1472
    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v2

    add-int/2addr p1, v2

    int-to-float p1, p1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1473
    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1471
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o isPositionOnText(FF)Z
    .registers 6

    .line 1480
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1481
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1483
    :cond_a
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result p2

    .line 1484
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1486
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1f

    return v1

    .line 1487
    :cond_1f
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineRight(I)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_28

    return v1

    .line 1488
    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method private static greylist-max-o isValidRange(Ljava/lang/CharSequence;II)Z
    .registers 3

    .line 7528
    if-ltz p1, :cond_c

    if-gt p1, p2, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-gt p2, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic blacklist lambda$setAssistContextMenuItems$1(Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z
    .registers 6

    .line 3179
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 3180
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SelectionActionModeHelper;->onSelectionAction(ILjava/lang/String;)V

    .line 3182
    iget-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 3183
    return v1

    .line 3185
    :cond_1d
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v2, 0x1020041

    if-ne v0, v2, :cond_2d

    invoke-virtual {p1, p2}, Landroid/widget/Editor$AssistantCallbackHelper;->onAssistMenuItemClicked(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 3186
    return v1

    .line 3188
    :cond_2d
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method private synthetic blacklist lambda$startActionModeInternal$0()V
    .registers 1

    .line 2658
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method static varargs blacklist logCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 8435
    const-string v0, "Editor"

    if-nez p1, :cond_8

    .line 8436
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 8438
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8440
    :goto_26
    return-void
.end method

.method private greylist-max-o needsToSelectAllToSelectWordOrParagraph()Z
    .registers 5

    .line 1226
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1230
    return v1

    .line 1233
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 1234
    and-int/lit8 v2, v0, 0xf

    .line 1235
    and-int/lit16 v0, v0, 0xff0

    .line 1238
    const/4 v3, 0x2

    if-eq v2, v3, :cond_30

    const/4 v3, 0x3

    if-eq v2, v3, :cond_30

    const/4 v3, 0x4

    if-eq v2, v3, :cond_30

    const/16 v2, 0x10

    if-eq v0, v2, :cond_30

    const/16 v2, 0x20

    if-eq v0, v2, :cond_30

    const/16 v2, 0xd0

    if-eq v0, v2, :cond_30

    const/16 v2, 0xb0

    if-ne v0, v2, :cond_2e

    goto :goto_30

    .line 1247
    :cond_2e
    const/4 v0, 0x0

    return v0

    .line 1245
    :cond_30
    :goto_30
    return v1
.end method

.method private blacklist registerOnBackInvokedCallback()V
    .registers 4

    .line 818
    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-eqz v0, :cond_5

    .line 819
    return-void

    .line 821
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_24

    .line 823
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 824
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    .line 828
    :cond_24
    return-void
.end method

.method private greylist-max-o replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .registers 19

    .line 3476
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-direct {v0, v2}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    .line 3478
    if-nez v2, :cond_d

    .line 3480
    return-void

    .line 3482
    :cond_d
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    .line 3483
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 3484
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 3485
    if-ltz v4, :cond_a7

    if-gt v5, v4, :cond_23

    goto/16 :goto_a7

    .line 3490
    :cond_23
    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    .line 3492
    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v3, v4, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    .line 3494
    array-length v8, v7

    .line 3495
    new-array v9, v8, [I

    .line 3496
    new-array v10, v8, [I

    .line 3497
    new-array v11, v8, [I

    .line 3498
    const/4 v12, 0x0

    move v13, v12

    :goto_38
    if-ge v13, v8, :cond_62

    .line 3499
    aget-object v14, v7, v13

    .line 3500
    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    aput v15, v9, v13

    .line 3501
    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    aput v15, v10, v13

    .line 3502
    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v15

    aput v15, v11, v13

    .line 3505
    invoke-virtual {v14}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v15

    .line 3506
    and-int/lit8 v16, v15, 0xa

    if-eqz v16, :cond_5f

    .line 3507
    and-int/lit8 v15, v15, -0x3

    .line 3508
    and-int/lit8 v15, v15, -0x9

    .line 3509
    and-int/lit8 v15, v15, -0x2

    .line 3510
    invoke-virtual {v14, v15}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 3498
    :cond_5f
    add-int/lit8 v13, v13, 0x1

    goto :goto_38

    .line 3515
    :cond_62
    iget v3, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 3516
    iget v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 3517
    iget-object v14, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14, v3, v13}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3518
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3519
    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v4, v5, v3}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 3521
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v2

    .line 3522
    iget v1, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    aput-object v6, v2, v1

    .line 3525
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v2, v5, v4

    sub-int/2addr v1, v2

    .line 3526
    nop

    :goto_85
    if-ge v12, v8, :cond_a0

    .line 3530
    aget v2, v9, v12

    if-gt v2, v4, :cond_9d

    aget v2, v10, v12

    if-lt v2, v5, :cond_9d

    .line 3531
    iget-object v2, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    aget-object v3, v7, v12

    aget v6, v9, v12

    aget v13, v10, v12

    add-int/2addr v13, v1

    aget v14, v11, v12

    invoke-virtual {v2, v3, v6, v13, v14}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    .line 3526
    :cond_9d
    add-int/lit8 v12, v12, 0x1

    goto :goto_85

    .line 3536
    :cond_a0
    add-int/2addr v5, v1

    .line 3537
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    .line 3538
    return-void

    .line 3487
    :cond_a7
    :goto_a7
    return-void
.end method

.method private greylist-max-o resumeBlink()V
    .registers 2

    .line 1123
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_9

    .line 1124
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1127
    :cond_9
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->textCursorBlinkInterval()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1128
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getTextCursorBlinkIntervalMillis()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mBlinkInterval:I

    .line 1134
    :cond_1f
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1135
    return-void
.end method

.method private greylist-max-o selectCurrentParagraph()Z
    .registers 5

    .line 1307
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1308
    return v1

    .line 1311
    :cond_a
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1312
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 1315
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 1316
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1317
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v2

    .line 1319
    invoke-direct {p0, v0, v2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v2

    .line 1320
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1321
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v2

    .line 1322
    if-ge v0, v2, :cond_3e

    .line 1323
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1324
    const/4 v0, 0x1

    return v0

    .line 1326
    :cond_3e
    return v1
.end method

.method private greylist-max-o selectCurrentWordAndStartDrag()Z
    .registers 3

    .line 2596
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 2597
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2599
    :cond_b
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2600
    return v1

    .line 2602
    :cond_13
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2603
    return v1

    .line 2605
    :cond_1a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2607
    return v1

    .line 2609
    :cond_29
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2610
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 2612
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o sendUpdateSelection()V
    .registers 8

    .line 2101
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v0, :cond_47

    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-nez v0, :cond_47

    .line 2103
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2104
    if-eqz v1, :cond_47

    .line 2105
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 2106
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 2107
    nop

    .line 2108
    nop

    .line 2109
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_3f

    .line 2110
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 2111
    invoke-static {v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 2112
    invoke-static {v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    move v6, v0

    move v5, v2

    goto :goto_42

    .line 2109
    :cond_3f
    const/4 v2, -0x1

    move v5, v2

    move v6, v5

    .line 2116
    :goto_42
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2120
    :cond_47
    return-void
.end method

.method private blacklist setAssistContextMenuItems(Landroid/view/Menu;)V
    .registers 4

    .line 3170
    nop

    .line 3171
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 3172
    if-nez v0, :cond_c

    .line 3173
    return-void

    .line 3176
    :cond_c
    new-instance v0, Landroid/widget/Editor$AssistantCallbackHelper;

    .line 3177
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$AssistantCallbackHelper;-><init>(Landroid/widget/Editor;Landroid/widget/SelectionActionModeHelper;)V

    .line 3178
    new-instance v1, Landroid/widget/Editor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/widget/Editor$$ExternalSyntheticLambda3;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$AssistantCallbackHelper;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/Editor$AssistantCallbackHelper;->updateAssistMenuItems(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 3190
    return-void
.end method

.method private greylist-max-o setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 894
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 895
    if-nez v0, :cond_16

    .line 896
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView$Drawables;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object v0, v1

    .line 898
    :cond_16
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 900
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 901
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 902
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 903
    return-void
.end method

.method private greylist-max-o shouldBlink()Z
    .registers 4

    .line 2978
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2979
    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2e

    .line 2981
    :cond_18
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 2982
    if-gez v0, :cond_21

    return v1

    .line 2984
    :cond_21
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2985
    if-gez v2, :cond_2a

    return v1

    .line 2987
    :cond_2a
    if-ne v0, v2, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1

    .line 2979
    :cond_2e
    :goto_2e
    return v1
.end method

.method private greylist-max-o shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1783
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1784
    return v1

    .line 1786
    :cond_a
    iget v0, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    .line 1788
    :goto_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1789
    if-eqz v3, :cond_20

    if-ne v3, v2, :cond_23

    :cond_20
    if-nez v0, :cond_23

    .line 1791
    return v2

    .line 1793
    :cond_23
    const/4 v0, 0x2

    if-ne v3, v0, :cond_2d

    .line 1794
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 1795
    return v2

    .line 1797
    :cond_2d
    return v1
.end method

.method private greylist-max-o showError()V
    .registers 8

    .line 843
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 844
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 845
    return-void

    .line 848
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v0, :cond_4e

    .line 849
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 850
    const v2, 0x109016c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 853
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 854
    new-instance v3, Landroid/widget/Editor$ErrorPopup;

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {v3, v0, v4, v2}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 856
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 859
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 862
    :cond_4e
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 863
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 864
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    const/16 v4, 0x33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 868
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 869
    return-void
.end method

.method private greylist-max-o showFloatingToolbar()V
    .registers 5

    .line 1859
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1862
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/Editor;->mDoubleTapTimeoutMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1867
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    .line 1869
    :cond_19
    return-void
.end method

.method private greylist-max-o startDragAndDrop()V
    .registers 6

    .line 1492
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onSelectionDrag()V

    .line 1495
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1496
    return-void

    .line 1498
    :cond_10
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1499
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1500
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1501
    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 1502
    new-instance v3, Landroid/widget/Editor$DragLocalState;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4, v0, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1503
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1505
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1506
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1507
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1509
    :cond_49
    return-void
.end method

.method private greylist-max-o suspendBlink()V
    .registers 2

    .line 1117
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_9

    .line 1118
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1120
    :cond_9
    return-void
.end method

.method private blacklist toggleInsertionActionMode()V
    .registers 2

    .line 1569
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8

    .line 1570
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_b

    .line 1572
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 1574
    :goto_b
    return-void
.end method

.method private greylist-max-o touchPositionIsInSelection()Z
    .registers 7

    .line 1429
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1430
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1432
    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    .line 1433
    return v2

    .line 1436
    :cond_10
    if-le v0, v1, :cond_23

    .line 1437
    nop

    .line 1438
    nop

    .line 1439
    nop

    .line 1440
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v5, v1

    move v1, v0

    move v0, v5

    .line 1443
    :cond_23
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    .line 1444
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v4

    .line 1445
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v3

    .line 1447
    if-lt v4, v0, :cond_34

    if-ge v3, v1, :cond_34

    const/4 v2, 0x1

    :cond_34
    return v2
.end method

.method private blacklist unregisterOnBackInvokedCallback()V
    .registers 3

    .line 805
    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-nez v0, :cond_5

    .line 806
    return-void

    .line 808
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 809
    if-eqz v0, :cond_25

    .line 810
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 811
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 812
    invoke-virtual {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    .line 815
    :cond_25
    return-void
.end method

.method private greylist-max-o updateCursorPosition(IIF)V
    .registers 7

    .line 2892
    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    .line 2893
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p3}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result p3

    .line 2894
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 2898
    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    add-int/2addr v0, p3

    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    invoke-virtual {v1, p3, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2900
    return-void
.end method

.method private greylist-max-o updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1839
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_14

    .line 1840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    packed-switch p1, :pswitch_data_16

    goto :goto_14

    .line 1842
    :pswitch_c
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    .line 1843
    goto :goto_14

    .line 1846
    :pswitch_11
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    .line 1849
    :cond_14
    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method

.method private greylist-max-o updateSpellCheckSpans(IIZ)V
    .registers 5

    .line 1085
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 1086
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 1088
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1089
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_47

    .line 1090
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodSuppressingSpellChecker()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1094
    return-void

    .line 1096
    :cond_2f
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_3e

    if-eqz p3, :cond_3e

    .line 1097
    new-instance p3, Landroid/widget/SpellChecker;

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p3, v0}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object p3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 1099
    :cond_3e
    iget-object p3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz p3, :cond_47

    .line 1100
    iget-object p3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {p3, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 1103
    :cond_47
    return-void
.end method


# virtual methods
.method public greylist-max-o addSpanWatchers(Landroid/text/Spannable;)V
    .registers 7

    .line 3152
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 3154
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    .line 3155
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3158
    :cond_10
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1c

    .line 3159
    new-instance v1, Landroid/widget/Editor$SpanController;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 3161
    :cond_1c
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3162
    return-void
.end method

.method public blacklist adjustIconSpacing(Landroid/view/ContextMenu;)V
    .registers 8

    .line 3418
    nop

    .line 3419
    nop

    .line 3420
    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_6
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 3421
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 3422
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3423
    if-nez v4, :cond_17

    .line 3424
    goto :goto_27

    .line 3427
    :cond_17
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3428
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3420
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3431
    :cond_2a
    if-ltz v0, :cond_4f

    if-gez v2, :cond_2f

    goto :goto_4f

    .line 3435
    :cond_2f
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 3436
    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 3438
    nop

    :goto_38
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v0

    if-ge v1, v0, :cond_4e

    .line 3439
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3440
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3441
    if-nez v2, :cond_4b

    .line 3442
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3438
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 3445
    :cond_4e
    return-void

    .line 3432
    :cond_4f
    :goto_4f
    return-void
.end method

.method greylist-max-o adjustInputType(ZZZZ)V
    .registers 7

    .line 1142
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 1143
    if-nez p1, :cond_b

    if-eqz p2, :cond_13

    .line 1144
    :cond_b
    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 p1, p1, -0xff1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    .line 1147
    :cond_13
    if-eqz p3, :cond_2f

    .line 1148
    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 p1, p1, -0xff1

    or-int/lit16 p1, p1, 0xe0

    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_2f

    .line 1151
    :cond_1e
    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 p1, p1, 0xf

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2f

    .line 1152
    if-eqz p4, :cond_2f

    .line 1153
    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 p1, p1, -0xff1

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    .line 1157
    :cond_2f
    :goto_2f
    return-void
.end method

.method blacklist beforeSetText()V
    .registers 2

    .line 8415
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_5

    return-void

    .line 8416
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->beforeSetText()V

    .line 8417
    return-void
.end method

.method public greylist-max-o beginBatchEdit()V
    .registers 4

    .line 1876
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1877
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1878
    if-eqz v1, :cond_37

    .line 1879
    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1880
    if-ne v2, v0, :cond_37

    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1882
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1883
    iget-boolean v2, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_26

    .line 1886
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1887
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_2d

    .line 1889
    :cond_26
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1890
    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1891
    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1893
    :goto_2d
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    .line 1894
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1897
    :cond_37
    return-void
.end method

.method greylist-max-o canRedo()Z
    .registers 5

    .line 686
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 687
    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v1

    if-lez v1, :cond_15

    goto :goto_16

    :cond_15
    move v0, v3

    :goto_16
    return v0
.end method

.method greylist-max-o canUndo()Z
    .registers 5

    .line 681
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 682
    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v1

    if-lez v1, :cond_15

    goto :goto_16

    :cond_15
    move v0, v3

    :goto_16
    return v0
.end method

.method greylist-max-o checkField()Z
    .registers 3

    .line 2621
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    .line 2626
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 2622
    :cond_13
    :goto_13
    const-string v0, "TextView"

    const-string v1, "TextView does not support text selection. Selection cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o createInputContentTypeIfNeeded()V
    .registers 2

    .line 984
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_b

    .line 985
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 987
    :cond_b
    return-void
.end method

.method greylist-max-o createInputMethodStateIfNeeded()V
    .registers 2

    .line 990
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_b

    .line 991
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 993
    :cond_b
    return-void
.end method

.method public greylist-max-o endBatchEdit()V
    .registers 3

    .line 1900
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1901
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1902
    if-eqz v0, :cond_12

    .line 1903
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1904
    if-nez v1, :cond_12

    .line 1905
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1908
    :cond_12
    return-void
.end method

.method greylist-max-o ensureEndedBatchEdit()V
    .registers 3

    .line 1911
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1912
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_e

    .line 1913
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1914
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1916
    :cond_e
    return-void
.end method

.method blacklist enterInsertMode(I)Z
    .registers 4

    .line 8383
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_13

    .line 8384
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 8385
    :cond_a
    new-instance v0, Landroid/widget/Editor$InsertModeController;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Editor$InsertModeController;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    .line 8387
    :cond_13
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertModeController;->enterInsertMode(I)Z

    move-result p1

    return p1
.end method

.method blacklist exitInsertMode()V
    .registers 2

    .line 8394
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_5

    return-void

    .line 8395
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode()V

    .line 8396
    return-void
.end method

.method greylist-max-o extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 9

    .line 1972
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result p1

    return p1
.end method

.method greylist-max-o finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .registers 3

    .line 1919
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1920
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    .line 1922
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_13

    goto :goto_1d

    .line 1925
    :cond_13
    iget-boolean p1, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz p1, :cond_25

    .line 1927
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_25

    .line 1923
    :cond_1d
    :goto_1d
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1924
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1931
    :cond_25
    :goto_25
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 1934
    iget-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_56

    .line 1935
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->hasSelection()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1936
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object p1

    goto :goto_3d

    :cond_39
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object p1

    .line 1937
    :goto_3d
    if-eqz p1, :cond_56

    invoke-interface {p1}, Landroid/widget/Editor$CursorController;->isActive()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1938
    invoke-interface {p1}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1939
    invoke-virtual {v0}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1940
    invoke-interface {p1}, Landroid/widget/Editor$CursorController;->show()V

    .line 1943
    :cond_56
    return-void
.end method

.method greylist-max-o forgetUndoRedo()V
    .registers 4

    .line 675
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/UndoOwner;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v2, v0, v1

    .line 676
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 677
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 678
    return-void
.end method

.method public greylist-max-o getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .registers 9

    .line 6591
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 6592
    if-eqz p1, :cond_63

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge p2, v1, :cond_63

    .line 6593
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_63

    if-gez p2, :cond_17

    goto :goto_63

    .line 6598
    :cond_17
    sub-int v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_21

    .line 6600
    return v0

    .line 6603
    :cond_21
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 6604
    iget v2, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 6605
    iget v3, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    iget v4, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    add-int/2addr v2, v1

    .line 6606
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6605
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v1

    .line 6607
    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6609
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v2

    int-to-float v2, v2

    .line 6610
    if-le v0, p2, :cond_54

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    add-float/2addr v3, v2

    cmpl-float v3, p3, v3

    if-ltz v3, :cond_54

    .line 6611
    return v0

    .line 6613
    :cond_54
    if-ge v0, p2, :cond_62

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr p1, v2

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_62

    .line 6614
    return v0

    .line 6616
    :cond_62
    return p2

    .line 6595
    :cond_63
    :goto_63
    return v0
.end method

.method public greylist-max-o getCursorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2888
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getDefaultOnReceiveContentListener()Landroid/widget/TextViewOnReceiveContentListener;
    .registers 2

    .line 668
    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    return-object v0
.end method

.method public blacklist getFlagCursorDragFromAnywhereEnabled()Z
    .registers 2

    .line 537
    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return v0
.end method

.method public blacklist getFlagInsertionHandleGesturesEnabled()Z
    .registers 2

    .line 552
    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return v0
.end method

.method public greylist-max-o getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .registers 3

    .line 2854
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v0, :cond_6

    .line 2855
    const/4 v0, 0x0

    return-object v0

    .line 2858
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v0, :cond_1c

    .line 2859
    new-instance v0, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 2861
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2862
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2865
    :cond_1c
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v0
.end method

.method greylist-max-o getLastUpPositionX()F
    .registers 2

    .line 1577
    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpX()F

    move-result v0

    return v0
.end method

.method greylist-max-o getLastUpPositionY()F
    .registers 2

    .line 1581
    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpY()F

    move-result v0

    return v0
.end method

.method public greylist-max-o getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .registers 3

    .line 2871
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_6

    .line 2872
    const/4 v0, 0x0

    return-object v0

    .line 2875
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v0, :cond_1c

    .line 2876
    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2878
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2879
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2882
    :cond_1c
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v0
.end method

.method greylist-max-o getTextActionMode()Landroid/view/ActionMode;
    .registers 2

    .line 2543
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method greylist-max-o getTextView()Landroid/widget/TextView;
    .registers 2

    .line 2538
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public greylist-max-o getWordIterator()Landroid/text/method/WordIterator;
    .registers 3

    .line 1375
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_11

    .line 1376
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1378
    :cond_11
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method greylist-max-o hasInsertionController()Z
    .registers 2

    .line 2841
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method greylist-max-o hasSelectionController()Z
    .registers 2

    .line 2848
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method greylist-max-o hideCursorAndSpanControllers()V
    .registers 1

    .line 1057
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1058
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 1059
    return-void
.end method

.method greylist-max-o hideFloatingToolbar(I)V
    .registers 5

    .line 1852
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_11

    .line 1853
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1854
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 1856
    :cond_11
    return-void
.end method

.method greylist-max-o hideInsertionPointCursorController()V
    .registers 2

    .line 1048
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_9

    .line 1049
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 1051
    :cond_9
    return-void
.end method

.method greylist-max-o invalidateActionModeAsync()V
    .registers 2

    .line 2570
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    .line 2571
    return-void
.end method

.method greylist-max-o invalidateHandlesAndActionMode()V
    .registers 2

    .line 2392
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_9

    .line 2393
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    .line 2395
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_12

    .line 2396
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    .line 2398
    :cond_12
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_19

    .line 2399
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2401
    :cond_19
    return-void
.end method

.method greylist invalidateTextDisplayList()V
    .registers 4

    .line 2448
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_1a

    .line 2449
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 2450
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2449
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2453
    :cond_1a
    return-void
.end method

.method greylist-max-o invalidateTextDisplayList(Landroid/text/Layout;II)V
    .registers 8

    .line 2407
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_5e

    instance-of v0, p1, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_5e

    .line 2408
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->insertModeCrashWhenDelete()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2409
    invoke-virtual {v0}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2412
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 2413
    return-void

    .line 2415
    :cond_1a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2416
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p2

    .line 2417
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2418
    invoke-virtual {v0, p3, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p3

    .line 2419
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p2

    .line 2420
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p3

    .line 2422
    check-cast p1, Landroid/text/DynamicLayout;

    .line 2423
    invoke-virtual {p1}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 2424
    invoke-virtual {p1}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .line 2425
    invoke-virtual {p1}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result p1

    .line 2427
    nop

    .line 2429
    :goto_3e
    if-ge v1, p1, :cond_48

    .line 2430
    aget v3, v0, v1

    if-lt v3, p2, :cond_45

    goto :goto_48

    .line 2431
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 2435
    :cond_48
    :goto_48
    if-ge v1, p1, :cond_5e

    .line 2436
    aget p2, v2, v1

    .line 2437
    const/4 v3, -0x1

    if-eq p2, v3, :cond_56

    .line 2438
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object p2, v3, p2

    const/4 v3, 0x1

    iput-boolean v3, p2, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2440
    :cond_56
    aget p2, v0, v1

    if-lt p2, p3, :cond_5b

    goto :goto_5e

    .line 2441
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    .line 2442
    goto :goto_48

    .line 2444
    :cond_5e
    :goto_5e
    return-void
.end method

.method public blacklist isBlinking()Z
    .registers 2

    .line 3011
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 3012
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-static {v0}, Landroid/widget/Editor$Blink;->-$$Nest$fgetmCancelled(Landroid/widget/Editor$Blink;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist loadCursorDrawable()V
    .registers 2

    .line 6648
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    .line 6649
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 6651
    :cond_c
    return-void
.end method

.method blacklist loadHandleDrawables(Z)V
    .registers 3

    .line 7333
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_1b

    .line 7334
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 7335
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7336
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-$$Nest$mreloadHandleDrawable(Landroid/widget/Editor$InsertionPointCursorController;)V

    .line 7340
    :cond_1b
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    if-eqz p1, :cond_42

    .line 7341
    :cond_25
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 7342
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 7343
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 7344
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object p1

    invoke-static {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$mreloadHandleDrawables(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 7347
    :cond_42
    return-void
.end method

.method greylist-max-o makeBlink()V
    .registers 5

    .line 2991
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2992
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 2993
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_18

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2996
    :cond_18
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 2997
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2998
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget v2, p0, Landroid/widget/Editor;->mBlinkInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3a

    .line 3000
    :cond_2f
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3002
    :cond_3a
    :goto_3a
    return-void
.end method

.method blacklist maybeFireScheduledRestartInputForSetText()V
    .registers 3

    .line 1959
    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-eqz v0, :cond_12

    .line 1960
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1961
    if-eqz v0, :cond_f

    .line 1962
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 1964
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 1966
    :cond_12
    return-void
.end method

.method greylist-max-o onAttachedToWindow()V
    .registers 4

    .line 718
    iget-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 719
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 720
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 723
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 727
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v2, :cond_1f

    .line 728
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 730
    :cond_1f
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_2d

    .line 731
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 732
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 735
    :cond_2d
    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 739
    :cond_32
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 742
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 743
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 746
    :cond_4b
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 750
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 751
    return-void
.end method

.method public greylist-max-o onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4

    .line 2955
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_c

    .line 2956
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    goto :goto_12

    .line 2958
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-$$Nest$minvalidate(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    .line 2961
    :goto_12
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2962
    iget-object p1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {p1}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 2963
    return-void
.end method

.method public greylist-max-o onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 11

    .line 3196
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    if-nez v0, :cond_bd

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_bd

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 3197
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_bd

    .line 3200
    :cond_16
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iget v2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 3201
    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 3202
    return-void

    .line 3205
    :cond_24
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 3206
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5c

    .line 3207
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3208
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-lt v0, v1, :cond_4b

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3209
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gt v0, v1, :cond_4b

    move v1, v2

    goto :goto_4c

    :cond_4b
    move v1, v3

    .line 3210
    :goto_4c
    if-nez v1, :cond_5c

    .line 3213
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3214
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 3218
    :cond_5c
    invoke-virtual {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 3219
    const/4 v0, 0x5

    new-array v1, v0, [Landroid/widget/Editor$SuggestionInfo;

    .line 3221
    move v4, v3

    :goto_66
    const/4 v5, 0x0

    if-ge v4, v0, :cond_73

    .line 3222
    new-instance v6, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v6, v5}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor-IA;)V

    aput-object v6, v1, v4

    .line 3221
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 3224
    :cond_73
    const/16 v0, 0xb

    const v4, 0x1040968

    invoke-interface {p1, v3, v3, v0, v4}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 3226
    iget-object v4, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    invoke-virtual {v4, v1, v5}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v4

    .line 3227
    move v5, v3

    :goto_83
    if-ge v5, v4, :cond_98

    .line 3228
    aget-object v6, v1, v5

    .line 3229
    iget-object v7, v6, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v3, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v8, Landroid/widget/Editor$4;

    invoke-direct {v8, p0, v6}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 3230
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3227
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 3240
    :cond_98
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setOptionalIconsVisible(Z)V

    .line 3241
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setGroupDividerEnabled(Z)V

    .line 3243
    invoke-direct {p0, p1}, Landroid/widget/Editor;->setAssistContextMenuItems(Landroid/view/Menu;)V

    .line 3245
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 3246
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b1

    move v3, v2

    :cond_b1
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setQwertyMode(Z)V

    .line 3248
    invoke-virtual {p0, p1}, Landroid/widget/Editor;->setTextContextMenuItems(Landroid/view/ContextMenu;)V

    .line 3250
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 3253
    invoke-virtual {p0, p1}, Landroid/widget/Editor;->adjustIconSpacing(Landroid/view/ContextMenu;)V

    .line 3254
    return-void

    .line 3198
    :cond_bd
    :goto_bd
    return-void
.end method

.method greylist-max-o onDetachedFromWindow()V
    .registers 3

    .line 754
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 756
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    .line 757
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 760
    :cond_10
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 762
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1c

    .line 763
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 766
    :cond_1c
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_25

    .line 767
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 770
    :cond_25
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_30

    .line 771
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 775
    :cond_30
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3b

    .line 776
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 779
    :cond_3b
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 781
    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    .line 783
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_51

    .line 784
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 791
    :cond_51
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 793
    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 797
    :cond_62
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 798
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 800
    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    invoke-virtual {v0}, Landroid/widget/TextViewOnReceiveContentListener;->clearInputConnectionInfo()V

    .line 801
    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    .line 802
    return-void
.end method

.method blacklist onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    .line 2127
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 2128
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    .line 2130
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2131
    if-eqz v0, :cond_2d

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_2d

    iget-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v1, :cond_1c

    iget-boolean v0, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2d

    .line 2133
    :cond_1c
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2134
    if-eqz v0, :cond_2d

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2138
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 2142
    :cond_2d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHighContrastTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    move v8, v0

    .line 2148
    if-eqz v8, :cond_4e

    .line 2149
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/widget/Editor;->drawLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V

    goto :goto_50

    .line 2148
    :cond_4e
    move/from16 v7, p7

    .line 2153
    :goto_50
    iget-object v2, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v2, :cond_59

    .line 2154
    iget-object v2, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v2, p1, v7}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 2157
    :cond_59
    const/4 v2, 0x0

    if-eqz p5, :cond_6f

    if-ne v9, v10, :cond_6f

    iget-object v3, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6f

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2159
    invoke-virtual {v3}, Landroid/widget/TextView;->hasGesturePreviewHighlight()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 2160
    invoke-direct {p0, p1, v7}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 2163
    move-object v3, v2

    goto :goto_71

    .line 2166
    :cond_6f
    move-object/from16 v3, p5

    :goto_71
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-eqz v4, :cond_84

    .line 2167
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v4, p1}, Landroid/widget/SelectionActionModeHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 2168
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v4}, Landroid/widget/SelectionActionModeHelper;->isDrawingHighlight()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 2169
    move-object v5, v2

    goto :goto_85

    .line 2173
    :cond_84
    move-object v5, v3

    :goto_85
    iget-object v2, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-eqz v2, :cond_8e

    .line 2174
    iget-object v2, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v2, p1}, Landroid/widget/Editor$InsertModeController;->onDraw(Landroid/graphics/Canvas;)V

    .line 2177
    :cond_8e
    if-nez v8, :cond_9a

    .line 2178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/Editor;->drawLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V

    .line 2181
    :cond_9a
    return-void
.end method

.method greylist-max-o onDrop(Landroid/view/DragEvent;)V
    .registers 9

    .line 3088
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 3089
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    .line 3090
    nop

    .line 3091
    instance-of v2, v1, Landroid/widget/Editor$DragLocalState;

    if-eqz v2, :cond_1a

    .line 3092
    check-cast v1, Landroid/widget/Editor$DragLocalState;

    goto :goto_1b

    .line 3091
    :cond_1a
    const/4 v1, 0x0

    .line 3094
    :goto_1b
    if-eqz v1, :cond_25

    iget-object v2, v1, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-ne v2, v3, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 3096
    :goto_26
    if-eqz v2, :cond_31

    .line 3097
    iget v3, v1, Landroid/widget/Editor$DragLocalState;->start:I

    if-lt v0, v3, :cond_31

    iget v3, v1, Landroid/widget/Editor$DragLocalState;->end:I

    if-ge v0, v3, :cond_31

    .line 3099
    return-void

    .line 3103
    :cond_31
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v3

    .line 3104
    if-eqz v3, :cond_3a

    .line 3105
    invoke-virtual {v3}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    .line 3107
    :cond_3a
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 3108
    iget-object v4, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v4}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3110
    :try_start_44
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 3111
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3112
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 3113
    new-instance v5, Landroid/view/ContentInfo$Builder;

    const/4 v6, 0x3

    invoke-direct {v5, p1, v6}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 3114
    invoke-virtual {v5, v3}, Landroid/view/ContentInfo$Builder;->setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    .line 3115
    invoke-virtual {p1}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object p1

    .line 3116
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 3117
    if-eqz v2, :cond_75

    .line 3118
    invoke-direct {p0, v1, v0, v4}, Landroid/widget/Editor;->deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    :try_end_75
    .catchall {:try_start_44 .. :try_end_75} :catchall_81

    .line 3121
    :cond_75
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 3122
    iget-object p1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {p1}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3123
    nop

    .line 3124
    return-void

    .line 3121
    :catchall_81
    move-exception p1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 3122
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3123
    throw p1
.end method

.method greylist-max-o onFocusChanged(ZI)V
    .registers 9

    .line 1596
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1597
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1599
    if-eqz p1, :cond_a4

    .line 1600
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    .line 1601
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1605
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    if-nez p1, :cond_2d

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1606
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_2d

    move v1, v2

    goto :goto_2e

    :cond_2d
    move v1, v3

    .line 1608
    :goto_2e
    iget-boolean v4, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v4, :cond_3e

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_3e

    if-nez v1, :cond_3e

    move v1, v2

    goto :goto_3f

    :cond_3e
    move v1, v3

    :goto_3f
    iput-boolean v1, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1611
    iget-boolean v1, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v1, :cond_49

    if-ltz p1, :cond_49

    if-gez v0, :cond_95

    .line 1614
    :cond_49
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .line 1615
    if-ltz v1, :cond_5a

    .line 1619
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1623
    :cond_5a
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 1624
    if-eqz v1, :cond_6f

    .line 1625
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v1, v4, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1633
    :cond_6f
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result p2

    if-nez p2, :cond_7b

    iget-boolean p2, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz p2, :cond_8a

    :cond_7b
    if-ltz p1, :cond_8a

    if-ltz v0, :cond_8a

    .line 1644
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Landroid/text/Spannable;

    invoke-static {p2, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1647
    :cond_8a
    iget-boolean p1, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_93

    .line 1648
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->selectAllText()Z

    .line 1651
    :cond_93
    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1654
    :cond_95
    iput-boolean v3, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1655
    iput-boolean v3, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1657
    iget-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz p1, :cond_a0

    .line 1658
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1661
    :cond_a0
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1662
    goto :goto_e9

    .line 1663
    :cond_a4
    iget-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz p1, :cond_ab

    .line 1664
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1667
    :cond_ab
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1669
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 1670
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1671
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_d4

    .line 1673
    :cond_bf
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1674
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 1675
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_d1

    .line 1677
    :cond_ce
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1679
    :goto_d1
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    .line 1682
    :goto_d4
    iget-object p1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz p1, :cond_dd

    .line 1683
    iget-object p1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1686
    :cond_dd
    iget-object p1, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-eqz p1, :cond_e6

    .line 1687
    iget-object p1, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {p1}, Landroid/widget/Editor$InsertModeController;->exitInsertMode()V

    .line 1690
    :cond_e6
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1692
    :goto_e9
    return-void
.end method

.method blacklist onInitializeSmartActionsAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 8423
    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8424
    return-void
.end method

.method greylist-max-o onLocaleChanged()V
    .registers 2

    .line 1370
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1371
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1372
    return-void
.end method

.method greylist-max-o onScreenStateChanged(I)V
    .registers 2

    .line 1106
    packed-switch p1, :pswitch_data_c

    goto :goto_b

    .line 1108
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 1109
    goto :goto_b

    .line 1111
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 1114
    :goto_b
    return-void

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method greylist-max-o onScrollChanged()V
    .registers 2

    .line 2966
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_9

    .line 2967
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 2969
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_12

    .line 2970
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 2972
    :cond_12
    return-void
.end method

.method final blacklist onTextOperationUserChanged()V
    .registers 2

    .line 2815
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_9

    .line 2816
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 2818
    :cond_9
    return-void
.end method

.method public greylist-max-o onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1805
    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1808
    if-eqz v0, :cond_16

    .line 1809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 1810
    iput-boolean v0, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 1812
    :cond_15
    return-void

    .line 1814
    :cond_16
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1815
    iget-object v1, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditorTouchState;->update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V

    .line 1816
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 1818
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1819
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1821
    :cond_35
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1822
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1825
    :cond_42
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_50

    .line 1826
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1827
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1830
    :cond_50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_5b

    .line 1833
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1834
    iput-boolean p1, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1836
    :cond_5b
    return-void
.end method

.method greylist-max-o onTouchUpEvent(Landroid/view/MotionEvent;)V
    .registers 6

    .line 2765
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 2766
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 2765
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper;->resetSelection(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2767
    return-void

    .line 2770
    :cond_1b
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 2771
    :goto_2a
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 2772
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2773
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2774
    if-nez v0, :cond_a6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_a6

    .line 2776
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    .line 2778
    iget-boolean v0, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    .line 2779
    if-nez v0, :cond_5e

    .line 2780
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2781
    iget-object p1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz p1, :cond_5e

    .line 2783
    iget-object p1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {p1}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 2787
    :cond_5e
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result p1

    if-nez p1, :cond_a6

    .line 2788
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 2790
    iget-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_75

    .line 2791
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2794
    :cond_75
    new-instance p1, Landroid/widget/Editor$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Editor;)V

    iput-object p1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2797
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/Editor;->mDoubleTapTimeoutMillis:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a6

    .line 2798
    :cond_87
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 2799
    if-nez v0, :cond_9f

    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 2800
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_a6

    .line 2802
    :cond_9f
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 2807
    :cond_a6
    :goto_a6
    return-void
.end method

.method greylist-max-o onWindowFocusChanged(Z)V
    .registers 3

    .line 1758
    if-eqz p1, :cond_17

    .line 1759
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 1760
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->hasSelection()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result p1

    if-nez p1, :cond_38

    .line 1761
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_38

    .line 1764
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 1765
    iget-object p1, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz p1, :cond_23

    .line 1766
    iget-object p1, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1769
    :cond_23
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1770
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1771
    iget-object p1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz p1, :cond_32

    .line 1772
    iget-object p1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {p1}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1776
    :cond_32
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1778
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1780
    :cond_38
    :goto_38
    return-void
.end method

.method public greylist-max-o performLongClick(Z)Z
    .registers 6

    .line 1515
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClickedByAccessibility:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 1516
    if-nez p1, :cond_a

    .line 1517
    invoke-direct {p0}, Landroid/widget/Editor;->toggleInsertionActionMode()V

    .line 1519
    :cond_a
    return v1

    .line 1522
    :cond_b
    const/16 v0, 0x275

    if-nez p1, :cond_5f

    iget-object v2, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 1523
    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v2

    if-nez v2, :cond_5f

    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v2, :cond_5f

    .line 1524
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 1525
    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v3

    .line 1524
    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    .line 1526
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1527
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 1528
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 1529
    nop

    .line 1530
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1531
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1530
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    move p1, v1

    .line 1536
    :cond_5f
    if-nez p1, :cond_89

    iget-object v2, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_89

    .line 1537
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 1538
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    .line 1539
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1540
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1539
    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_88

    .line 1544
    :cond_79
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1545
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    .line 1546
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1547
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1546
    invoke-static {p1, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1551
    :goto_88
    move p1, v1

    .line 1555
    :cond_89
    if-nez p1, :cond_9a

    .line 1556
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p1

    .line 1557
    if-eqz p1, :cond_9a

    .line 1558
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1559
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1558
    invoke-static {v2, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1565
    :cond_9a
    return p1
.end method

.method blacklist performSmartActionsAccessibilityAction(I)Z
    .registers 3

    .line 8431
    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->performAccessibilityAction(I)Z

    move-result p1

    return p1
.end method

.method greylist-max-o prepareCursorControllers()V
    .registers 6

    .line 1017
    nop

    .line 1019
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1020
    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    .line 1021
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1022
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v1, v4, :cond_22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7cf

    if-le v0, v1, :cond_20

    goto :goto_22

    :cond_20
    move v0, v3

    goto :goto_25

    :cond_22
    :goto_22
    move v0, v2

    goto :goto_25

    .line 1020
    :cond_24
    move v0, v3

    .line 1026
    :goto_25
    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_31

    move v0, v2

    goto :goto_32

    :cond_31
    move v0, v3

    .line 1027
    :goto_32
    if-eqz v0, :cond_40

    iget-boolean v1, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    if-nez v1, :cond_3e

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_3e
    move v1, v2

    goto :goto_41

    :cond_40
    move v1, v3

    :goto_41
    iput-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 1028
    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_4f

    :cond_4e
    move v2, v3

    :goto_4f
    iput-boolean v2, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 1030
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_64

    .line 1031
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 1032
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_64

    .line 1033
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 1034
    iput-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 1038
    :cond_64
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_76

    .line 1039
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1040
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_76

    .line 1041
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 1042
    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 1045
    :cond_76
    return-void
.end method

.method greylist-max-o redo()V
    .registers 5

    .line 699
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_5

    .line 700
    return-void

    .line 702
    :cond_5
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    .line 703
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    .line 704
    return-void
.end method

.method greylist-max-o refreshTextActionMode()V
    .registers 6

    .line 2474
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2475
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2476
    return-void

    .line 2478
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    .line 2479
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 2480
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    .line 2481
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v4

    if-nez v4, :cond_28

    :cond_20
    if-eqz v3, :cond_2b

    .line 2482
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2484
    :cond_28
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2485
    return-void

    .line 2487
    :cond_2b
    if-eqz v0, :cond_52

    .line 2488
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 2489
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_3c

    .line 2490
    iget-boolean v0, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    if-eqz v0, :cond_68

    .line 2493
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_68

    .line 2495
    :cond_3c
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_4b

    .line 2500
    :cond_45
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_68

    .line 2497
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2498
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_68

    .line 2505
    :cond_52
    if-eqz v3, :cond_65

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_65

    .line 2507
    :cond_5b
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_68

    .line 2508
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_68

    .line 2506
    :cond_65
    :goto_65
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2511
    :cond_68
    :goto_68
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2512
    return-void
.end method

.method greylist-max-o replace()V
    .registers 3

    .line 707
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_b

    .line 708
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 710
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 711
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 713
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 714
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 715
    return-void
.end method

.method greylist-max-o reportExtractedText()Z
    .registers 11

    .line 2053
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2054
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2055
    return v1

    .line 2057
    :cond_6
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2058
    if-nez v2, :cond_f

    iget-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-nez v3, :cond_f

    .line 2059
    return v1

    .line 2061
    :cond_f
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2062
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 2063
    iget-object v5, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 2064
    if-nez v5, :cond_18

    .line 2065
    return v1

    .line 2067
    :cond_18
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 2068
    if-nez v3, :cond_1f

    .line 2069
    return v1

    .line 2077
    :cond_1f
    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v4, :cond_28

    if-nez v2, :cond_28

    .line 2078
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2080
    :cond_28
    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v7, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v8, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v9, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2090
    iget-object v2, v4, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v4, v5, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v5, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v3, v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2091
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2092
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2093
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 2094
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2095
    const/4 v0, 0x1

    return v0

    .line 2097
    :cond_4b
    return v1
.end method

.method greylist-max-o restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .registers 4

    .line 649
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 650
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 651
    iget-object p1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {p1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    .line 653
    iget-object p1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v0, "Editor"

    invoke-virtual {p1, v0, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 654
    return-void
.end method

.method greylist-max-o saveInstanceState()Landroid/os/ParcelableParcel;
    .registers 4

    .line 641
    new-instance v0, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 642
    invoke-virtual {v0}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    .line 643
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    .line 644
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v1}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    .line 645
    return-object v0
.end method

.method blacklist scheduleRestartInputForSetText()V
    .registers 2

    .line 1950
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 1951
    return-void
.end method

.method greylist-max-o selectCurrentWord()Z
    .registers 8

    .line 1255
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1256
    return v1

    .line 1259
    :cond_a
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1260
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 1263
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 1264
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1265
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v2

    .line 1268
    if-ltz v0, :cond_b1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_33

    goto/16 :goto_b1

    .line 1269
    :cond_33
    if-ltz v2, :cond_b0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v2, v3, :cond_43

    goto/16 :goto_b0

    .line 1274
    :cond_43
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1275
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v3, v0, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 1276
    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_72

    .line 1277
    aget-object v0, v3, v1

    .line 1278
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1279
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1280
    goto :goto_a1

    .line 1283
    :cond_72
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v3

    .line 1284
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1286
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v4

    .line 1287
    invoke-virtual {v3, v2}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v2

    .line 1289
    const/4 v3, -0x1

    if-eq v4, v3, :cond_92

    if-eq v2, v3, :cond_92

    if-ne v4, v2, :cond_8f

    goto :goto_92

    :cond_8f
    move v0, v2

    move v2, v4

    goto :goto_a1

    .line 1292
    :cond_92
    :goto_92
    invoke-direct {p0, v0}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v2

    .line 1293
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1294
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v2

    move v6, v2

    move v2, v0

    move v0, v6

    .line 1298
    :goto_a1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1299
    if-le v0, v2, :cond_af

    move v1, v5

    :cond_af
    return v1

    .line 1269
    :cond_b0
    :goto_b0
    return v1

    .line 1268
    :cond_b1
    :goto_b1
    return v1
.end method

.method greylist-max-o sendOnTextChanged(III)V
    .registers 5

    .line 1724
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->onTextChanged(II)V

    .line 1725
    add-int/2addr p3, p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1728
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1733
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1735
    iget-object p1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz p1, :cond_1c

    .line 1736
    iget-object p1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1738
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1739
    return-void
.end method

.method greylist-max-o setContextMenuAnchor(FF)V
    .registers 3

    .line 3165
    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 3166
    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 3167
    return-void
.end method

.method public blacklist setCursorDragMinAngleFromVertical(I)V
    .registers 2

    .line 547
    invoke-static {p1}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result p1

    iput p1, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    .line 548
    return-void
.end method

.method public greylist-max-o setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 872
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 873
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 875
    iget-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez p1, :cond_28

    .line 876
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 877
    iget-object p2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz p2, :cond_24

    .line 878
    iget-object p2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {p2}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 879
    iget-object p2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {p2}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 882
    :cond_22
    iput-object p1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 884
    :cond_24
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    goto :goto_36

    .line 886
    :cond_28
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 887
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 888
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 891
    :cond_36
    :goto_36
    return-void
.end method

.method public blacklist setFlagCursorDragFromAnywhereEnabled(Z)V
    .registers 2

    .line 542
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    .line 543
    return-void
.end method

.method public blacklist setFlagInsertionHandleGesturesEnabled(Z)V
    .registers 2

    .line 557
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    .line 558
    return-void
.end method

.method greylist-max-o setFrame()V
    .registers 10

    .line 1185
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_2e

    .line 1186
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1187
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 1188
    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v6

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 1189
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v7

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v8

    .line 1188
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 1191
    :cond_2e
    return-void
.end method

.method public blacklist setLineChangeSlopMinMaxForTesting(II)V
    .registers 3

    .line 6585
    iput p1, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    .line 6586
    iput p2, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    .line 6587
    return-void
.end method

.method greylist-max-o setRestartActionModeOnNextRefresh(Z)V
    .registers 2

    .line 2547
    iput-boolean p1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2548
    return-void
.end method

.method public blacklist setShowCursorTime(J)V
    .registers 3

    .line 567
    iput-wide p1, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 568
    return-void
.end method

.method public blacklist setTextContextMenuItems(Landroid/view/ContextMenu;)V
    .registers 18

    .line 3259
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_2d0

    invoke-virtual {v2, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3280
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->contextMenuHideUnavailableItems()Z

    move-result v4

    const v10, 0x1040003

    const v11, 0x1020020

    const v12, 0x1040954

    const v13, 0x1020033

    const v14, 0x1040aac

    const v15, 0x1020032

    const/4 v3, 0x0

    const/16 v6, 0x1001

    const/16 v5, 0x7a

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v7, 0x2

    if-eqz v4, :cond_175

    .line 3281
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 3282
    invoke-interface {v1, v8, v15, v7, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 3284
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v14, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3285
    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 3286
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3289
    :cond_51
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canRedo()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 3290
    invoke-interface {v1, v8, v13, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3292
    invoke-interface {v3, v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3293
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3294
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3297
    :cond_6e
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canCut()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 3298
    const/4 v3, 0x4

    invoke-interface {v1, v7, v11, v3, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 3300
    const/16 v3, 0x78

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3301
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3302
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3305
    :cond_8e
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 3306
    const v3, 0x1040001

    const v4, 0x1020021

    const/4 v5, 0x5

    invoke-interface {v1, v7, v4, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3308
    const/16 v4, 0x63

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3309
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3310
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3313
    :cond_b4
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canPaste()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 3314
    const v3, 0x104000b

    const v4, 0x1020022

    const/4 v5, 0x6

    invoke-interface {v1, v7, v4, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3316
    const/16 v4, 0x76

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 3317
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3318
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3321
    :cond_db
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v3

    if-eqz v3, :cond_102

    .line 3322
    const v3, 0x1020031

    const v4, 0x1040019

    const/4 v5, 0x7

    invoke-interface {v1, v7, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3325
    const/16 v4, 0x76

    invoke-interface {v3, v4, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    .line 3326
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3327
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3330
    :cond_102
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 3331
    const/16 v3, 0x8

    const v4, 0x104000d

    const v5, 0x102001f

    invoke-interface {v1, v7, v5, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3333
    const/16 v4, 0x61

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 3334
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3335
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3338
    :cond_12a
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canShare()Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 3339
    const/16 v3, 0x9

    const v4, 0x1040a09

    const v5, 0x1020035

    invoke-interface {v1, v9, v5, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3341
    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3342
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3345
    :cond_14c
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    .line 3346
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v4

    if-eqz v4, :cond_173

    if-eqz v3, :cond_162

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_173

    .line 3347
    :cond_162
    const/16 v3, 0xa

    const v4, 0x104001a

    const v5, 0x1020043

    invoke-interface {v1, v9, v5, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3349
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3351
    :cond_173
    goto/16 :goto_2cb

    .line 3352
    :cond_175
    invoke-interface {v1, v8, v15, v7, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 3354
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v14, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3355
    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 3356
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v14, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3357
    invoke-virtual {v14}, Landroid/widget/TextView;->canUndo()Z

    move-result v14

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3358
    invoke-interface {v1, v8, v13, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 3360
    invoke-interface {v4, v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3361
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 3362
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3363
    invoke-virtual {v5}, Landroid/widget/TextView;->canRedo()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3365
    const/4 v4, 0x4

    invoke-interface {v1, v7, v11, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    .line 3367
    const/16 v4, 0x78

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3368
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 3369
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3370
    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3371
    const v4, 0x1040001

    const v5, 0x1020021

    const/4 v10, 0x5

    invoke-interface {v1, v7, v5, v10, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 3373
    const/16 v5, 0x63

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3374
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 3375
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3376
    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3377
    const v4, 0x104000b

    const v5, 0x1020022

    const/4 v10, 0x6

    invoke-interface {v1, v7, v5, v10, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 3379
    const/16 v5, 0x76

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3380
    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    .line 3381
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3382
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3383
    const v4, 0x1020031

    const v5, 0x1040019

    const/4 v10, 0x7

    invoke-interface {v1, v7, v4, v10, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 3386
    const/16 v5, 0x76

    invoke-interface {v4, v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3387
    invoke-virtual {v5}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    .line 3388
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3389
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3390
    const/16 v4, 0x8

    const v5, 0x104000d

    const v6, 0x102001f

    invoke-interface {v1, v7, v6, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 3392
    const/16 v5, 0x61

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3393
    invoke-virtual {v5}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    .line 3394
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3395
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3397
    const/16 v4, 0x9

    const v5, 0x1040a09

    const v6, 0x1020035

    invoke-interface {v1, v9, v6, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3399
    invoke-virtual {v5}, Landroid/widget/TextView;->canShare()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    .line 3400
    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3401
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3402
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v4

    .line 3403
    const/16 v5, 0xa

    const v6, 0x104001a

    const v7, 0x1020043

    invoke-interface {v1, v9, v7, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3405
    invoke-virtual {v5}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v5

    if-eqz v5, :cond_2c1

    if-eqz v4, :cond_2bf

    .line 3406
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c1

    :cond_2bf
    move v3, v8

    goto :goto_2c2

    :cond_2c1
    nop

    .line 3405
    :goto_2c2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3407
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3409
    :goto_2cb
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3410
    return-void

    nop

    :array_2d0
    .array-data 4
        0x112000a
        0x1120009
        0x1010311
        0x1010312
        0x1010313
        0x101037e
        0x1010479
    .end array-data
.end method

.method public blacklist setTextCursorBlinkIntervalMs(I)V
    .registers 2

    .line 562
    iput p1, p0, Landroid/widget/Editor;->mBlinkInterval:I

    .line 563
    return-void
.end method

.method blacklist setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 4

    .line 8404
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_b

    .line 8405
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTransformationMethodInternal(Landroid/text/method/TransformationMethod;Z)V

    .line 8406
    return-void

    .line 8408
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertModeController;->updateTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8409
    return-void
.end method

.method greylist-max-o shouldOfferToShowSuggestions()Z
    .registers 14

    .line 2688
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2689
    instance-of v1, v0, Landroid/text/Spannable;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 2691
    :cond_c
    check-cast v0, Landroid/text/Spannable;

    .line 2692
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2693
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 2694
    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .line 2696
    array-length v5, v4

    if-nez v5, :cond_26

    .line 2697
    return v2

    .line 2699
    :cond_26
    const/4 v5, 0x1

    if-ne v1, v3, :cond_3b

    .line 2701
    move v0, v2

    :goto_2a
    array-length v1, v4

    if-ge v0, v1, :cond_3a

    .line 2702
    aget-object v1, v4, v0

    invoke-virtual {v1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_37

    .line 2703
    return v5

    .line 2701
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 2706
    :cond_3a
    return v2

    .line 2708
    :cond_3b
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2709
    nop

    .line 2710
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 2711
    nop

    .line 2712
    nop

    .line 2713
    move v7, v2

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_56
    array-length v11, v4

    if-ge v7, v11, :cond_8e

    .line 2714
    aget-object v11, v4, v7

    invoke-interface {v0, v11}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 2715
    aget-object v12, v4, v7

    invoke-interface {v0, v12}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 2716
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2717
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2718
    if-lt v1, v11, :cond_8b

    if-le v1, v12, :cond_72

    .line 2720
    goto :goto_8b

    .line 2722
    :cond_72
    if-nez v8, :cond_80

    aget-object v8, v4, v7

    .line 2723
    invoke-virtual {v8}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_7e

    goto :goto_80

    :cond_7e
    move v8, v2

    goto :goto_81

    :cond_80
    :goto_80
    move v8, v5

    .line 2724
    :goto_81
    nop

    .line 2725
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2726
    nop

    .line 2727
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2713
    :cond_8b
    :goto_8b
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .line 2729
    :cond_8e
    if-nez v8, :cond_91

    .line 2730
    return v2

    .line 2732
    :cond_91
    if-lt v6, v10, :cond_94

    .line 2734
    return v2

    .line 2736
    :cond_94
    if-lt v3, v6, :cond_9a

    if-le v9, v10, :cond_99

    goto :goto_9a

    .line 2742
    :cond_99
    return v5

    .line 2740
    :cond_9a
    :goto_9a
    return v2
.end method

.method public greylist-max-o shouldRenderCursor()Z
    .registers 10

    .line 1005
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1006
    return v1

    .line 1008
    :cond_8
    iget-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    const/4 v2, 0x1

    if-nez v0, :cond_29

    iget v0, p0, Landroid/widget/Editor;->mBlinkInterval:I

    if-nez v0, :cond_12

    goto :goto_29

    .line 1012
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v3, v5

    .line 1013
    iget v0, p0, Landroid/widget/Editor;->mBlinkInterval:I

    int-to-long v5, v0

    const-wide/16 v7, 0x2

    mul-long/2addr v5, v7

    rem-long/2addr v3, v5

    iget v0, p0, Landroid/widget/Editor;->mBlinkInterval:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_28

    move v1, v2

    :cond_28
    return v1

    .line 1010
    :cond_29
    :goto_29
    return v2
.end method

.method greylist-max-o startActionModeInternal(I)Z
    .registers 7

    .line 2630
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2631
    return v1

    .line 2633
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_10

    .line 2635
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2636
    return v1

    .line 2639
    :cond_10
    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    .line 2640
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_22

    .line 2641
    :cond_21
    return v1

    .line 2644
    :cond_22
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2645
    return v1

    .line 2648
    :cond_2b
    new-instance v2, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v2, p0, p1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2649
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2650
    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    .line 2652
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_4f

    :cond_4d
    move v2, v1

    goto :goto_50

    :cond_4f
    :goto_4f
    move v2, v4

    .line 2653
    :goto_50
    if-ne p1, v0, :cond_66

    if-nez v2, :cond_66

    iget-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    instance-of p1, p1, Lcom/android/internal/view/FloatingActionMode;

    if-eqz p1, :cond_66

    .line 2657
    iget-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    check-cast p1, Lcom/android/internal/view/FloatingActionMode;

    new-instance v0, Landroid/widget/Editor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Editor;)V

    invoke-virtual {p1, v4, v0}, Lcom/android/internal/view/FloatingActionMode;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V

    .line 2661
    :cond_66
    iget-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    move v4, v1

    .line 2662
    :goto_6c
    if-eqz v4, :cond_8e

    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2663
    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result p1

    if-eqz p1, :cond_8e

    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result p1

    if-nez p1, :cond_8e

    iget-boolean p1, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz p1, :cond_8e

    .line 2666
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    .line 2667
    if-eqz p1, :cond_8e

    .line 2668
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 2671
    :cond_8e
    return v4
.end method

.method greylist-max-o startInsertionActionMode()V
    .registers 4

    .line 2518
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 2519
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2521
    :cond_b
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2522
    return-void

    .line 2524
    :cond_12
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2526
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2528
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2530
    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    .line 2531
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2532
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 2534
    :cond_37
    return-void
.end method

.method greylist-max-o startLinkActionModeAsync(II)V
    .registers 4

    .line 2558
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_b

    .line 2559
    return-void

    .line 2561
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2562
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    .line 2563
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->startLinkActionModeAsync(II)V

    .line 2564
    return-void
.end method

.method greylist-max-o startSelectionActionModeAsync(Z)V
    .registers 3

    .line 2554
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionModeAsync(Z)V

    .line 2555
    return-void
.end method

.method protected greylist-max-o stopTextActionMode()V
    .registers 2

    .line 2821
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2823
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2825
    :cond_9
    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    .line 2826
    return-void
.end method

.method greylist-max-o stopTextActionModeWithPreservingSelection()V
    .registers 3

    .line 2829
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 2830
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2832
    :cond_7
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2833
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2835
    return-void
.end method

.method greylist-max-o undo()V
    .registers 5

    .line 691
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_5

    .line 692
    return-void

    .line 694
    :cond_5
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    .line 695
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    .line 696
    return-void
.end method

.method greylist-max-o updateCursorPosition()V
    .registers 6

    .line 2456
    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    .line 2457
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 2458
    return-void

    .line 2461
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2462
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2463
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    .line 2465
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 2466
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 2467
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v4

    .line 2469
    invoke-virtual {v0, v2}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v2

    .line 2470
    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Landroid/widget/Editor;->updateCursorPosition(IIF)V

    .line 2471
    return-void
.end method
