.class public Landroid/view/HandWritingStubImpl;
.super Ljava/lang/Object;
.source "HandWritingStubImpl.java"

# interfaces
.implements Landroid/view/HandWritingStub;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCurrentKeyboardType:I

.field private blacklist mLastKeyboardType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const-class v0, Landroid/view/HandWritingStubImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/HandWritingStubImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/HandWritingStubImpl;->mCurrentKeyboardType:I

    return-void
.end method


# virtual methods
.method public blacklist getCurrentKeyboardType()I
    .registers 4

    .line 28
    sget-object v0, Landroid/view/HandWritingStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentKeyboardType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/HandWritingStubImpl;->mCurrentKeyboardType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget v0, p0, Landroid/view/HandWritingStubImpl;->mCurrentKeyboardType:I

    return v0
.end method

.method public blacklist handleBlackListSituation(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3039

    if-eq v0, v1, :cond_9

    .line 67
    return-void

    .line 69
    :cond_9
    sget-object v0, Landroid/view/HandWritingStubImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleBlackListSituation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/HandWritingStubImpl;->setCurrentKeyboardType(I)V

    .line 71
    return-void
.end method

.method public blacklist isKeyboardTypeChanged()Z
    .registers 4

    .line 40
    iget v0, p0, Landroid/view/HandWritingStubImpl;->mCurrentKeyboardType:I

    iget v1, p0, Landroid/view/HandWritingStubImpl;->mLastKeyboardType:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 41
    .local v0, "changed":Z
    :goto_9
    if-eqz v0, :cond_12

    .line 42
    sget-object v1, Landroid/view/HandWritingStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "handwriting keyboard type changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_12
    return v0
.end method

.method public blacklist recordCustomToolType(Landroid/view/InputEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 49
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_5

    .line 50
    return-void

    .line 53
    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 54
    .local v0, "me":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 55
    .local v1, "isEventFromHotArea":Z
    :goto_15
    if-nez v1, :cond_18

    .line 56
    return-void

    .line 59
    :cond_18
    const/16 v2, 0x4002

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    .line 60
    .local v2, "isStylus":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_29

    if-nez v2, :cond_29

    .line 61
    invoke-virtual {p0, v3}, Landroid/view/HandWritingStubImpl;->setCurrentKeyboardType(I)V

    .line 63
    :cond_29
    return-void
.end method

.method public blacklist refreshLastKeyboardType()V
    .registers 4

    .line 34
    sget-object v0, Landroid/view/HandWritingStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshLastKeyboardType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/HandWritingStubImpl;->mCurrentKeyboardType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v0, p0, Landroid/view/HandWritingStubImpl;->mCurrentKeyboardType:I

    iput v0, p0, Landroid/view/HandWritingStubImpl;->mLastKeyboardType:I

    .line 36
    return-void
.end method

.method public blacklist setCurrentKeyboardType(I)V
    .registers 5
    .param p1, "keyboardType"    # I

    .line 22
    sget-object v0, Landroid/view/HandWritingStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentKeyboardType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/HandWritingStubImpl;->mCurrentKeyboardType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput p1, p0, Landroid/view/HandWritingStubImpl;->mCurrentKeyboardType:I

    .line 24
    return-void
.end method
