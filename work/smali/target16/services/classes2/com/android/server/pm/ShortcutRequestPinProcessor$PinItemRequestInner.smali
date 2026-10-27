.class public abstract Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.super Landroid/content/pm/IPinItemRequest$Stub;
.source "ShortcutRequestPinProcessor.java"


# instance fields
.field public mAccepted:Z

.field public final mLauncherUid:I

.field public final mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field public final mResultIntent:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V
    .registers 4

    .line 65
    invoke-direct {p0}, Landroid/content/pm/IPinItemRequest$Stub;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 67
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    .line 68
    iput p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILcom/android/server/pm/ShortcutRequestPinProcessor-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V

    return-void
.end method


# virtual methods
.method public accept(Landroid/os/Bundle;)Z
    .registers 4

    .line 113
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    if-eqz v0, :cond_45

    if-eqz p1, :cond_1f

    .line 119
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_20

    :catch_15
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "options cannot be unparceled"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1f
    const/4 v0, 0x0

    .line 125
    :goto_20
    monitor-enter p0

    .line 126
    :try_start_21
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    .line 130
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_39

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->tryAccept(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 134
    iget-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return v1

    :cond_37
    const/4 p0, 0x0

    return p0

    :catchall_39
    move-exception p1

    goto :goto_43

    .line 127
    :cond_3b
    :try_start_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "accept() called already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :goto_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_39

    throw p1

    .line 114
    :cond_45
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling uid mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isCallerValid()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isCallerUid(I)Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .registers 2

    .line 96
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_8
    monitor-enter p0

    .line 102
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    .line 103
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public tryAccept(Landroid/os/Bundle;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method
