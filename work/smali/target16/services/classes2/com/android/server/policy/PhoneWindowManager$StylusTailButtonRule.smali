.class public final Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 2943
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x137

    .line 2944
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getMaxMultiPressCount()I
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    .line 2958
    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    new-instance p1, Landroid/hardware/input/KeyGestureEvent$Builder;

    invoke-direct {p1}, Landroid/hardware/input/KeyGestureEvent$Builder;-><init>()V

    const/16 v0, 0x21

    .line 2960
    invoke-virtual {p1, v0}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeyGestureType(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 2961
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/input/KeyGestureEvent$Builder;->setDeviceId(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    const/16 v0, 0x137

    filled-new-array {v0}, [I

    move-result-object v0

    .line 2962
    invoke-virtual {p1, v0}, Landroid/hardware/input/KeyGestureEvent$Builder;->setKeycodes([I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 2963
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/input/KeyGestureEvent$Builder;->setModifierState(I)Landroid/hardware/input/KeyGestureEvent$Builder;

    move-result-object p1

    .line 2964
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent$Builder;->build()Landroid/hardware/input/KeyGestureEvent;

    move-result-object p1

    .line 2958
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerInternal;->handleKeyGestureInKeyGestureController(Landroid/hardware/input/KeyGestureEvent;)V

    return-void
.end method
