.class public Landroid/view/InputEventInterceptImpl;
.super Ljava/lang/Object;
.source "InputEventInterceptImpl.java"

# interfaces
.implements Landroid/view/InputEventInterceptStub;


# static fields
.field private static final blacklist AMOTION_EVENT_FLAG_DEBUGINPUT_DETAIL:I = 0x400000

.field private static final blacklist AMOTION_EVENT_FLAG_ONEWAY:I = 0x2000000

.field private static final blacklist TAG_INPUT:Ljava/lang/String; = "MIUIInput"

.field public static final blacklist TOOL_TYPE_KNOCK:I = 0x20


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isOneway(Landroid/view/InputEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 34
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1e

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 36
    .local v0, "eventFlags":I
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1e

    .line 37
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1c

    .line 38
    const-string v1, "MIUIInput"

    const-string v2, "skip finishInputEvent in oneway mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1c
    const/4 v1, 0x1

    return v1

    .line 43
    .end local v0    # "eventFlags":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldIntercept(Landroid/view/InputEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 20
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 21
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 22
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1f

    .line 23
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1d

    .line 24
    const-string v1, "InputEventInterceptStub"

    const-string v2, "finish input event because first knock"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_1d
    const/4 v1, 0x1

    return v1

    .line 29
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1f
    return v1
.end method
