.class abstract Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleKeyGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SingleKeyRule"
.end annotation


# instance fields
.field private final mKeyCode:I

.field private final mSupportedGestures:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->shouldInterceptKey(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msupportLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msupportVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result p0

    return p0
.end method

.method constructor <init>(II)V
    .registers 3
    .param p1, "keyCode"    # I
    .param p2, "supportedGestures"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 99
    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    .line 100
    return-void
.end method

.method private shouldInterceptKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 106
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private supportLongPress()Z
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private supportVeryLongPress()Z
    .registers 2

    .line 120
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 180
    return v0

    .line 182
    :cond_4
    instance-of v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 183
    move-object v1, p1

    check-cast v1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 184
    .local v1, "that":Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget v4, v1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    iget v4, v1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    if-ne v3, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    .line 186
    .end local v1    # "that":Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    :cond_1b
    return v2
.end method

.method getLongPressTimeoutMs()J
    .registers 3

    .line 149
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    return-wide v0
.end method

.method getMaxMultiPressCount()I
    .registers 2

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method getVeryLongPressTimeoutMs()J
    .registers 3

    .line 161
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    return-wide v0
.end method

.method onLongPress(J)V
    .registers 3
    .param p1, "eventTime"    # J

    .line 154
    return-void
.end method

.method onMultiPress(JI)V
    .registers 4
    .param p1, "downTime"    # J
    .param p3, "count"    # I

    .line 140
    return-void
.end method

.method abstract onPress(J)V
.end method

.method onVeryLongPress(J)V
    .registers 3
    .param p1, "eventTime"    # J

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-direct {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", VeryLongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-direct {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MaxMultiPressCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0
.end method
