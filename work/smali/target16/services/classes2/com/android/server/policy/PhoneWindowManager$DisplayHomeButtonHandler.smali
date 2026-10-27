.class public Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# instance fields
.field public final mDisplayId:I

.field public mHomeConsumed:Z

.field public final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field public mHomePressed:Z

.field public mPendingHomeKeyEvent:Landroid/view/KeyEvent;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public static synthetic $r8$lambda$VJu21P62ozAAVHOW8NhsCaa7GAM(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->lambda$handleHomeButton$2(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kUgY5x-80NChwKfMDBkKp8OE1MY(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->lambda$handleHomeButton$1(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nwPlpR08fs1zFdefRqCgt1Vp15s(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->lambda$handleHomeButton$0(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingHomeKeyEvent(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Landroid/view/KeyEvent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPendingHomeKeyEvent(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3

    .line 2088
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2076
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2089
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public final handleDoubleTapOnHome(Landroid/view/KeyEvent;)V
    .registers 7

    .line 2184
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz v0, :cond_5

    goto :goto_55

    .line 2187
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_44

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2a

    .line 2208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No action or undefined behavior for double tap home: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2200
    :cond_2a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const-string/jumbo v3, "showPictureInPictureMenu"

    .line 2199
    invoke-static {v0, v1, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$misKeyEventForCurrentUser(Lcom/android/server/policy/PhoneWindowManager;IILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_55

    .line 2204
    :cond_3c
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 2205
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mshowPictureInPictureMenuInternal(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void

    .line 2190
    :cond_44
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const-string/jumbo v4, "toggleRecentApps"

    .line 2189
    invoke-static {v0, v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$misKeyEventForCurrentUser(Lcom/android/server/policy/PhoneWindowManager;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    :goto_55
    return-void

    .line 2193
    :cond_56
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mnotifyKeyGestureCompleted(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V

    .line 2195
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 2196
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mtoggleRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method public handleHomeButton(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 11

    .line 2093
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 2094
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 2095
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_14

    move v2, v4

    goto :goto_15

    :cond_14
    move v2, v3

    .line 2096
    :goto_15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v2, :cond_71

    .line 2106
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez p1, :cond_24

    .line 2107
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mcancelPreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2110
    :cond_24
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 2111
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz p1, :cond_2d

    .line 2112
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    return v4

    :cond_2d
    if-eqz v5, :cond_37

    .line 2117
    const-string p0, "WindowManager"

    const-string p1, "Ignoring HOME; event canceled."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 2122
    :cond_37
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v0, :cond_62

    const/4 v1, 0x2

    if-ne v0, v1, :cond_44

    .line 2124
    iget-boolean p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz p1, :cond_62

    .line 2126
    :cond_44
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2127
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 2128
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2129
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    int-to-long v0, p2

    .line 2128
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v4

    .line 2135
    :cond_62
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v4

    .line 2142
    :cond_71
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2143
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p1

    if-eqz p1, :cond_a0

    .line 2147
    iget v2, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    const/16 v5, 0x7d9

    if-eq v2, v5, :cond_9f

    const/16 v5, 0x7f8

    if-ne v2, v5, :cond_8e

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2149
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_8e

    goto :goto_9f

    .line 2153
    :cond_8e
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$sfgetWINDOW_TYPES_WHERE_HOME_DOESNT_WORK()[I

    move-result-object v2

    array-length v5, v2

    :goto_93
    if-ge v3, v5, :cond_a0

    aget v6, v2, v3

    .line 2154
    iget v7, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    if-ne v7, v6, :cond_9c

    return v4

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    :cond_9f
    :goto_9f
    return v3

    :cond_a0
    if-nez v1, :cond_d3

    .line 2163
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 2164
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    if-eqz p1, :cond_c5

    const/4 p1, 0x0

    .line 2165
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 2166
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2167
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_eb

    .line 2170
    :cond_c5
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p2, p1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne p2, v4, :cond_eb

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez p0, :cond_eb

    .line 2172
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_eb

    .line 2174
    :cond_d3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_eb

    if-nez v0, :cond_eb

    .line 2177
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_eb
    :goto_eb
    return v4
.end method

.method public final handleLongPressOnHome(Landroid/view/KeyEvent;)V
    .registers 11

    .line 2215
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz v0, :cond_6

    goto/16 :goto_a4

    .line 2218
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-nez v1, :cond_e

    goto/16 :goto_a4

    :cond_e
    const/4 v1, 0x1

    .line 2221
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    const/4 v2, 0x0

    .line 2222
    const-string v3, "Home - Long Press"

    invoke-static {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mperformHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;ILjava/lang/String;)V

    .line 2223
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eq v2, v1, :cond_88

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5d

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3e

    .line 2252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Undefined long press on home behavior: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2244
    :cond_3e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const-string/jumbo v3, "toggleNotificationPanel"

    .line 2243
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$misKeyEventForCurrentUser(Lcom/android/server/policy/PhoneWindowManager;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_a4

    .line 2247
    :cond_50
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mnotifyKeyGestureCompleted(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V

    .line 2249
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mtoggleNotificationPanel(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void

    .line 2233
    :cond_5d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const-string v3, "launchAssistAction"

    .line 2232
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$misKeyEventForCurrentUser(Lcom/android/server/policy/PhoneWindowManager;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_a4

    .line 2236
    :cond_6e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mnotifyKeyGestureCompleted(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V

    .line 2238
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    .line 2239
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x5

    const/4 v3, 0x0

    .line 2238
    invoke-static/range {v2 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mlaunchAssistAction(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;IIJI)V

    return-void

    :cond_88
    const/16 v1, 0x15

    .line 2225
    invoke-static {v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mnotifyKeyGestureCompleted(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V

    .line 2226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const-string v2, "launchAllAppsViaA11y"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$misKeyEventForCurrentUser(Lcom/android/server/policy/PhoneWindowManager;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 2228
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mlaunchAllAppsAction(Lcom/android/server/policy/PhoneWindowManager;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public final synthetic lambda$handleHomeButton$0(Landroid/view/KeyEvent;)V
    .registers 4

    .line 2136
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mnotifyKeyGestureCompleted(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V

    .line 2137
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleShortPressOnHome(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public final synthetic lambda$handleHomeButton$1(Landroid/view/KeyEvent;)V
    .registers 2

    .line 2167
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleDoubleTapOnHome(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final synthetic lambda$handleHomeButton$2(Landroid/view/KeyEvent;)V
    .registers 2

    .line 2177
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleLongPressOnHome(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2260
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mDisplayId = %d, mHomePressed = %b"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
