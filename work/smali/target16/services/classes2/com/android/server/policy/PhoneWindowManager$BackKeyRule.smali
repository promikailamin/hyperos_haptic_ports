.class public final Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 2759
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p1, 0x4

    .line 2760
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V
    .registers 4

    .line 2770
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_2a

    .line 2773
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getType()I

    move-result v0

    if-eqz v0, :cond_17

    if-eq v0, v1, :cond_11

    goto :goto_2a

    .line 2780
    :cond_11
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mbackLongPress(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void

    .line 2775
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getPressCount()I

    move-result p1

    if-ne p1, v1, :cond_2a

    .line 2776
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mbackKeyPress(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    or-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method public supportLongPress()Z
    .registers 1

    .line 2765
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhasLongPressOnBackBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    return p0
.end method
