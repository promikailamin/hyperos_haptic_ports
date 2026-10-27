.class public final Lcom/android/server/accessibility/magnification/GesturesObserver;
.super Ljava/lang/Object;
.source "GesturesObserver.java"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;
    }
.end annotation


# instance fields
.field private mCancelledMatcherSize:I

.field private final mGestureMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/gestures/GestureMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

.field private mObserveStarted:Z

.field private mProcessMotionEvent:Z


# direct methods
.method public varargs constructor <init>(Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;
    .param p2, "matchers"    # [Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 70
    iput v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 72
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    array-length v1, p2

    if-ge v0, v1, :cond_26

    .line 74
    aget-object v1, p2, v0

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setListener(Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 75
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    aget-object v2, p2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 77
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method private clear()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 119
    .local v1, "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 120
    .end local v1    # "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    goto :goto_6

    .line 121
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 122
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    .line 123
    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 90
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_15

    .line 92
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;->onGestureCancelled(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 93
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear()V

    .line 94
    return v1

    .line 96
    :cond_15
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    .line 99
    :cond_17
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3d

    .line 101
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 102
    .local v3, "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)I

    .line 103
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3a

    .line 104
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear()V

    .line 105
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 106
    return v2

    .line 100
    .end local v3    # "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 109
    .end local v0    # "i":I
    :cond_3d
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 110
    return v1
.end method

.method public onStateChanged(IILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "gestureId"    # I
    .param p2, "state"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "rawEvent"    # Landroid/view/MotionEvent;
    .param p5, "policyFlags"    # I

    .line 128
    const/4 v0, 0x2

    if-ne p2, v0, :cond_10

    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    invoke-interface {v0, p1, p3, p4, p5}, Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;->onGestureCompleted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 134
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    if-nez v0, :cond_29

    .line 135
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear()V

    goto :goto_29

    .line 137
    :cond_10
    const/4 v0, 0x3

    if-ne p2, v0, :cond_29

    .line 138
    iget v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 139
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    invoke-interface {v0, p3, p4, p5}, Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;->onGestureCancelled(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 141
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear()V

    .line 144
    :cond_29
    :goto_29
    return-void
.end method
