.class public Lcom/android/internal/policy/DecorViewMultiWinStubImpl;
.super Ljava/lang/Object;
.source "DecorViewMultiWinStubImpl.java"

# interfaces
.implements Lcom/android/internal/policy/DecorViewMultiWinStub;


# instance fields
.field private blacklist IS_MIUI_MULTIWINDOW_CHANGE_SUPPORTED:Z

.field private blacklist mHighlightViewMgr:Lcom/android/internal/policy/HighlightViewMgr;

.field private blacklist mIsNeedToChangeCaptionView:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Landroid/util/MiuiMultiWinSwitchAbility;->isSupportMultiSwitchFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->IS_MIUI_MULTIWINDOW_CHANGE_SUPPORTED:Z

    return-void
.end method


# virtual methods
.method public blacklist getIsNeedToChangeCaptionViewState()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->mIsNeedToChangeCaptionView:Z

    return v0
.end method

.method public blacklist inflateSplitDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .registers 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 77
    const v0, 0x110c0028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "decorCaptionView":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    return-object v1
.end method

.method public blacklist isMiuiMultiWinChangeSupport()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->IS_MIUI_MULTIWINDOW_CHANGE_SUPPORTED:Z

    return v0
.end method

.method public blacklist isNeedToChangeCaptionView(II)Z
    .registers 6
    .param p1, "oldWindowMode"    # I
    .param p2, "currentWindowMode"    # I

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "isNeedToChangeCaptionView":Z
    const/4 v1, 0x1

    if-eq p1, p2, :cond_7

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->mIsNeedToChangeCaptionView:Z

    .line 59
    return v1

    .line 61
    :cond_7
    if-eq p2, p1, :cond_26

    invoke-static {p2}, Landroid/app/WindowConfiguration;->isMiuiMultiRootTaskWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->isMiuiMultiWinChangeSupport()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 63
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isMiuiSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 64
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isMiuiSplitScreenWindowingMode(I)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_24

    :cond_22
    const/4 v1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    nop

    :goto_25
    move v0, v1

    .line 66
    :cond_26
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->mIsNeedToChangeCaptionView:Z

    .line 67
    return v0
.end method

.method public blacklist showOrHideHighlightView(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;ZZ)V
    .registers 9
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "mWindow"    # Lcom/android/internal/policy/PhoneWindow;
    .param p3, "isInSplitScreen"    # Z
    .param p4, "isHasFocus"    # Z

    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->mHighlightViewMgr:Lcom/android/internal/policy/HighlightViewMgr;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 27
    .local v0, "isMrgNull":Z
    :goto_7
    if-eqz p3, :cond_67

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->isMiuiMultiWinChangeSupport()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_67

    .line 29
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewRootImpl;

    if-nez v1, :cond_19

    .line 30
    return-void

    .line 31
    :cond_19
    move-object v1, p2

    .line 32
    .local v1, "phoneWindow":Lcom/android/internal/policy/PhoneWindow;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 33
    return-void

    .line 34
    :cond_23
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/HighlightViewMgr;->isApplication(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 35
    return-void

    .line 36
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/HighlightViewMgr;->isGestureNavigation(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 37
    iget-object v2, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->mHighlightViewMgr:Lcom/android/internal/policy/HighlightViewMgr;

    .line 38
    .local v2, "highlightViewMgr":Lcom/android/internal/policy/HighlightViewMgr;
    if-eqz v2, :cond_50

    .line 39
    if-nez p4, :cond_4d

    .line 40
    invoke-virtual {v2}, Lcom/android/internal/policy/HighlightViewMgr;->loseWindowFocus()V

    .line 41
    :cond_4d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->mHighlightViewMgr:Lcom/android/internal/policy/HighlightViewMgr;

    .line 43
    :cond_50
    return-void

    .line 45
    .end local v2    # "highlightViewMgr":Lcom/android/internal/policy/HighlightViewMgr;
    :cond_51
    if-eqz v0, :cond_59

    .line 46
    invoke-static {p1}, Lcom/android/internal/policy/HighlightViewMgr;->getInstance(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/HighlightViewMgr;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->mHighlightViewMgr:Lcom/android/internal/policy/HighlightViewMgr;

    .line 47
    :cond_59
    if-eqz p4, :cond_61

    .line 48
    iget-object v2, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->mHighlightViewMgr:Lcom/android/internal/policy/HighlightViewMgr;

    invoke-virtual {v2}, Lcom/android/internal/policy/HighlightViewMgr;->obtainWindowFocus()V

    goto :goto_66

    .line 50
    :cond_61
    iget-object v2, p0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;->mHighlightViewMgr:Lcom/android/internal/policy/HighlightViewMgr;

    invoke-virtual {v2}, Lcom/android/internal/policy/HighlightViewMgr;->loseWindowFocus()V

    .line 52
    :goto_66
    return-void

    .line 28
    .end local v1    # "phoneWindow":Lcom/android/internal/policy/PhoneWindow;
    :cond_67
    :goto_67
    return-void
.end method
