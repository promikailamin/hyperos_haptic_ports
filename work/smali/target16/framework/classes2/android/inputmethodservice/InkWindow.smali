.class final Landroid/inputmethodservice/InkWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "InkWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InkWindow$InkVisibilityListener;
    }
.end annotation


# instance fields
.field private blacklist mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private blacklist mInkView:Landroid/view/View;

.field private blacklist mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

.field private blacklist mIsViewAdded:Z

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInkView(Landroid/inputmethodservice/InkWindow;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow;)Landroid/inputmethodservice/InkWindow$InkVisibilityListener;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InkWindow;->mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGlobalLayoutListener(Landroid/inputmethodservice/InkWindow;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 56
    const/16 v0, 0x7db

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setType(I)V

    .line 57
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 58
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 62
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 64
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 66
    const/16 v0, 0x318

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->addFlags(I)V

    .line 68
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setBackgroundDrawableResource(I)V

    .line 69
    invoke-virtual {p0, v1, v1}, Landroid/inputmethodservice/InkWindow;->setLayout(II)V

    .line 70
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 71
    return-void
.end method

.method private blacklist show(Z)V
    .registers 5

    .line 89
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "InputMethodService"

    if-nez v0, :cond_e

    .line 90
    const-string p1, "DecorView is not set for InkWindow. show() failed."

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 93
    :cond_e
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_16

    const/4 p1, 0x4

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-boolean p1, p0, Landroid/inputmethodservice/InkWindow;->mIsViewAdded:Z

    if-nez p1, :cond_35

    .line 96
    :try_start_1e
    iget-object p1, p0, Landroid/inputmethodservice/InkWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/inputmethodservice/InkWindow;->mIsViewAdded:Z
    :try_end_2e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1e .. :try_end_2e} :catch_2f
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_1e .. :try_end_2e} :catch_2f

    .line 107
    goto :goto_35

    .line 98
    :catch_2f
    move-exception p1

    .line 104
    const-string p1, "Probably the IME/InkWindow token is already invalidated. InkWindow#show() does nothing."

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 134
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 135
    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    goto :goto_b

    .line 136
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-ne v0, p1, :cond_12

    .line 139
    :goto_b
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    .line 141
    return-void

    .line 137
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only one Child Inking view is permitted."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist clearContentView()V
    .registers 3

    .line 159
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 160
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 162
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 163
    iput-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    .line 164
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->clearContentView()V

    .line 165
    return-void
.end method

.method blacklist dispatchHandwritingEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 209
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 215
    return-void
.end method

.method blacklist hide(Z)V
    .registers 3

    .line 117
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 118
    if-eqz p1, :cond_12

    .line 119
    iget-object p1, p0, Landroid/inputmethodservice/InkWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1a

    .line 121
    :cond_12
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_1a
    :goto_1a
    return-void
.end method

.method blacklist initInkViewVisibilityListener()V
    .registers 3

    .line 181
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_d

    goto :goto_20

    .line 185
    :cond_d
    new-instance v0, Landroid/inputmethodservice/InkWindow$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InkWindow$1;-><init>(Landroid/inputmethodservice/InkWindow;)V

    iput-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 200
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 201
    return-void

    .line 183
    :cond_20
    :goto_20
    return-void
.end method

.method blacklist initOnly()V
    .registers 2

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InkWindow;->show(Z)V

    .line 78
    return-void
.end method

.method blacklist isInkViewVisible()Z
    .registers 2

    .line 204
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 204
    :goto_19
    return v0
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 2

    .line 152
    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    .line 155
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 145
    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    .line 148
    return-void
.end method

.method blacklist setInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow$InkVisibilityListener;)V
    .registers 2

    .line 176
    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    .line 177
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    .line 178
    return-void
.end method

.method blacklist setToken(Landroid/os/IBinder;)V
    .registers 3

    .line 127
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 128
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 129
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 130
    return-void
.end method

.method blacklist show()V
    .registers 2

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InkWindow;->show(Z)V

    .line 86
    return-void
.end method
