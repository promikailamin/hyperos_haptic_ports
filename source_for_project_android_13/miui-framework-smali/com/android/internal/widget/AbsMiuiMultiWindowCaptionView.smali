.class public abstract Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;
.super Lcom/android/internal/widget/DecorCaptionView;
.source "AbsMiuiMultiWindowCaptionView.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AbsMiuiMultiWindowCaptionView"


# instance fields
.field protected blacklist mDarkFrameView:Landroid/view/View;

.field protected blacklist mDecorView:Lcom/android/internal/policy/DecorView;

.field protected blacklist mDragBarBackground:Landroid/graphics/drawable/Drawable;

.field protected blacklist mHasTriggerActioned:Z

.field protected blacklist mIsShow:Z

.field protected blacklist mOwner:Lcom/android/internal/policy/PhoneWindow;

.field protected blacklist mWindowMode:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    .line 50
    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mHasTriggerActioned:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mIsShow:Z

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 55
    iput v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mWindowMode:I

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    .line 50
    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mHasTriggerActioned:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mIsShow:Z

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 55
    iput v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mWindowMode:I

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    .line 50
    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mHasTriggerActioned:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mIsShow:Z

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 55
    iput v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mWindowMode:I

    .line 67
    return-void
.end method

.method private blacklist createDrawable(IIF)Landroid/graphics/drawable/GradientDrawable;
    .registers 5
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "radius"    # F

    .line 70
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 71
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 72
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 73
    return-object v0
.end method

.method private blacklist getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Ljava/lang/Object;
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "dragTouchOffsets"    # Landroid/graphics/Point;

    .line 85
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lmiui/app/MiuiMultiWinSplitManager;

    const-string v2, "getTouchOffsetInTask"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/graphics/Point;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 86
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21

    return-object v0

    .line 87
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_21
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeStatic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbsMiuiMultiWindowCaptionView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private blacklist hideFrameBorder()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    .line 78
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_5

    .line 79
    return-void

    .line 80
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-void
.end method

.method private blacklist prepareToHandleMultiWindowSwitch(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/os/Bundle;
    .registers 11
    .param p1, "dragBar"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 96
    .local v1, "touchPointX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 97
    .local v2, "touchPointY":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    const-string v4, "dragTouchPoint"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 100
    .local v3, "dragTouchOffsets":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Ljava/lang/Object;

    move-result-object v4

    .line 101
    .local v4, "result":Ljava/lang/Object;
    if-eqz v4, :cond_39

    if-eqz v4, :cond_49

    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_49

    .line 102
    :cond_39
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v5

    .line 104
    :cond_49
    const-string v5, "dragTouchOffsets"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareToHandleMultiWindowSwitch touchPointX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", touchPointY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", touchOffsetX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", touchOffsetY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    const-string v6, "AbsMiuiMultiWindowCaptionView"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v5, 0x1

    const-string v6, "from_split"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    return-object v0
.end method

.method private blacklist showFrameBorder()V
    .registers 7

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    .line 113
    .local v0, "darkView":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void

    .line 117
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroid/util/MiuiMultiWinClientUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 118
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x11060052

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 119
    .local v2, "color":I
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    .line 120
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v3, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->createDrawable(IIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v3, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v4, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected blacklist adjustFrameBorder()V
    .registers 3

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_14

    .line 128
    const/4 v0, 0x1

    .local v0, "bool":Z
    goto :goto_15

    .line 130
    .end local v0    # "bool":Z
    :cond_14
    const/4 v0, 0x0

    .line 132
    .restart local v0    # "bool":Z
    :goto_15
    if-eqz v0, :cond_1f

    iget-boolean v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mIsShow:Z

    if-eqz v1, :cond_1f

    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->showFrameBorder()V

    goto :goto_22

    .line 135
    :cond_1f
    invoke-direct {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->hideFrameBorder()V

    .line 137
    :goto_22
    return-void
.end method

.method protected abstract blacklist getTouchOffsets([IFF)V
.end method

.method protected blacklist getWindowMode()I
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 143
    return v1

    .line 145
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 146
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    const/4 v2, 0x0

    .line 147
    .local v2, "windowMode":I
    if-eqz v0, :cond_28

    .line 148
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getWindowMode"

    invoke-static {v0, v3, v1}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_28

    .line 150
    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 153
    .end local v1    # "result":Ljava/lang/Object;
    :cond_28
    return v2
.end method

.method public blacklist onTriggerAction(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 158
    .local v0, "phoneWindow":Lcom/android/internal/policy/PhoneWindow;
    const/4 v1, 0x0

    const-string v2, "AbsMiuiMultiWindowCaptionView"

    if-nez v0, :cond_d

    .line 159
    const-string v3, "PhoneWindow is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v1

    .line 162
    :cond_d
    if-nez p1, :cond_15

    .line 163
    const-string v3, "onTriggerAction failed, cause drag bar is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v1

    .line 166
    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 167
    .local v1, "iBinder":Landroid/os/IBinder;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->prepareToHandleMultiWindowSwitch(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/app/MiuiMultiWinSplitManager;->handleMultiWindowSwitch(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 168
    const/4 v2, 0x1

    return v2
.end method

.method public blacklist removeContentView()V
    .registers 1

    .line 172
    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->removeFrameBorder()V

    .line 174
    return-void
.end method

.method protected blacklist removeFrameBorder()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 178
    return-void

    .line 179
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/AbsMiuiMultiWindowCaptionView;->mDarkFrameView:Landroid/view/View;

    .line 181
    return-void
.end method

.method protected abstract blacklist resetDragBar()V
.end method
