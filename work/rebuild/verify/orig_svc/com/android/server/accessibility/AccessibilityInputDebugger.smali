.class public Lcom/android/server/accessibility/AccessibilityInputDebugger;
.super Ljava/lang/Object;
.source "AccessibilityInputDebugger.java"


# instance fields
.field public mMostRecentReceivedEventIndex:I

.field public mMostRecentSentEventIndex:I

.field public final mRecentReceivedEvents:[Landroid/view/InputEvent;

.field public final mRecentSentEvents:[Landroid/view/InputEvent;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 36
    new-array v1, v0, [Landroid/view/InputEvent;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentReceivedEvents:[Landroid/view/InputEvent;

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentReceivedEventIndex:I

    .line 40
    new-array v0, v0, [Landroid/view/InputEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentSentEvents:[Landroid/view/InputEvent;

    .line 41
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentSentEventIndex:I

    return-void
.end method

.method public static appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;)V
    .registers 5

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": sent at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getEventTimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public clearCachedEvents()V
    .registers 1

    .line 82
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->clearReceivedEventCaches()V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->clearSentEventCaches()V

    return-void
.end method

.method public final clearReceivedEventCaches()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_17

    .line 88
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentReceivedEvents:[Landroid/view/InputEvent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_14

    .line 89
    invoke-virtual {v2}, Landroid/view/InputEvent;->recycle()V

    .line 90
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentReceivedEvents:[Landroid/view/InputEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    :cond_17
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentReceivedEventIndex:I

    return-void
.end method

.method public final clearSentEventCaches()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_17

    .line 98
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentSentEvents:[Landroid/view/InputEvent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_14

    .line 99
    invoke-virtual {v2}, Landroid/view/InputEvent;->recycle()V

    .line 100
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentSentEvents:[Landroid/view/InputEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 103
    :cond_17
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentSentEventIndex:I

    return-void
.end method

.method public final dumpCachedEvents()V
    .registers 8

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string v1, "\n  -- recent received events --"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 114
    :goto_c
    const-string v3, "\n  "

    const/16 v4, 0xa

    if-ge v2, v4, :cond_27

    .line 115
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentReceivedEventIndex:I

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    rem-int/2addr v5, v4

    .line 117
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentReceivedEvents:[Landroid/view/InputEvent;

    aget-object v5, v6, v5

    if-nez v5, :cond_1e

    goto :goto_27

    .line 121
    :cond_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 122
    invoke-static {v0, v2, v5}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;)V

    goto :goto_c

    .line 125
    :cond_27
    :goto_27
    const-string v2, "\n  -- recent sent events --"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    if-ge v1, v4, :cond_43

    .line 127
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentSentEventIndex:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v1

    rem-int/2addr v2, v4

    .line 129
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentSentEvents:[Landroid/view/InputEvent;

    aget-object v2, v5, v2

    if-nez v2, :cond_3a

    goto :goto_43

    .line 133
    :cond_3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 134
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;)V

    goto :goto_2c

    .line 136
    :cond_43
    :goto_43
    const-string v1, "A11yInputDebugger"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->clearCachedEvents()V

    return-void
.end method

.method public onReceiveEvent(Landroid/view/InputEvent;)V
    .registers 4

    .line 47
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentReceivedEventIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    .line 48
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentReceivedEventIndex:I

    .line 49
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentReceivedEvents:[Landroid/view/InputEvent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_11

    .line 50
    invoke-virtual {v1}, Landroid/view/InputEvent;->recycle()V

    .line 52
    :cond_11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentReceivedEvents:[Landroid/view/InputEvent;

    invoke-virtual {p1}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object p1

    aput-object p1, p0, v0

    return-void
.end method

.method public onSendEvent(Landroid/view/InputEvent;)V
    .registers 4

    .line 60
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentSentEventIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    .line 61
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mMostRecentSentEventIndex:I

    .line 62
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentSentEvents:[Landroid/view/InputEvent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_11

    .line 63
    invoke-virtual {v1}, Landroid/view/InputEvent;->recycle()V

    .line 65
    :cond_11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputDebugger;->mRecentSentEvents:[Landroid/view/InputEvent;

    invoke-virtual {p1}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object p1

    aput-object p1, p0, v0

    return-void
.end method

.method public onSendEventException(Ljava/lang/Exception;)V
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on accessibility send input event exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "A11yInputDebugger"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputDebugger;->dumpCachedEvents()V

    return-void
.end method
