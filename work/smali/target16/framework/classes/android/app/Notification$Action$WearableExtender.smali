.class public final Landroid/app/Notification$Action$WearableExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_FLAGS:I = 0x1

.field private static final greylist-max-o EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final greylist-max-o FLAG_AVAILABLE_OFFLINE:I = 0x1

.field private static final greylist-max-o FLAG_HINT_DISPLAY_INLINE:I = 0x4

.field private static final greylist-max-o FLAG_HINT_LAUNCHES_ACTIVITY:I = 0x2

.field private static final greylist-max-o KEY_CANCEL_LABEL:Ljava/lang/String; = "cancelLabel"

.field private static final greylist-max-o KEY_CONFIRM_LABEL:Ljava/lang/String; = "confirmLabel"

.field private static final greylist-max-o KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o KEY_IN_PROGRESS_LABEL:Ljava/lang/String; = "inProgressLabel"


# instance fields
.field private greylist-max-o mCancelLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mConfirmLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mInProgressLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 2584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2574
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2585
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification$Action;)V
    .registers 4

    .line 2592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2574
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2593
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 2594
    if-eqz p1, :cond_32

    .line 2595
    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2596
    const-string v0, "inProgressLabel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 2597
    const-string v0, "confirmLabel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 2598
    const-string v0, "cancelLabel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 2600
    :cond_32
    return-void
.end method

.method private greylist-max-o setFlag(IZ)V
    .registers 3

    .line 2660
    if-eqz p2, :cond_8

    .line 2661
    iget p2, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    goto :goto_e

    .line 2663
    :cond_8
    iget p2, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2665
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/app/Notification$Action$WearableExtender;
    .registers 3

    .line 2630
    new-instance v0, Landroid/app/Notification$Action$WearableExtender;

    invoke-direct {v0}, Landroid/app/Notification$Action$WearableExtender;-><init>()V

    .line 2631
    iget v1, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2632
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 2633
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 2634
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 2635
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2556
    invoke-virtual {p0}, Landroid/app/Notification$Action$WearableExtender;->clone()Landroid/app/Notification$Action$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extend(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action$Builder;
    .registers 5

    .line 2609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2611
    iget v1, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    .line 2612
    const-string v1, "flags"

    iget v2, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2614
    :cond_11
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    .line 2615
    const-string v1, "inProgressLabel"

    iget-object v2, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2617
    :cond_1c
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_27

    .line 2618
    const-string v1, "confirmLabel"

    iget-object v2, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2620
    :cond_27
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_32

    .line 2621
    const-string v1, "cancelLabel"

    iget-object v2, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2624
    :cond_32
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2625
    return-object p1
.end method

.method public whitelist getCancelLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2736
    iget-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getConfirmLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2712
    iget-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getHintDisplayActionInline()Z
    .registers 2

    .line 2783
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintLaunchesActivity()Z
    .registers 2

    .line 2760
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getInProgressLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2688
    iget-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist isAvailableOffline()Z
    .registers 3

    .line 2656
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist setAvailableOffline(Z)Landroid/app/Notification$Action$WearableExtender;
    .registers 3

    .line 2645
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Action$WearableExtender;->setFlag(IZ)V

    .line 2646
    return-object p0
.end method

.method public whitelist setCancelLabel(Ljava/lang/CharSequence;)Landroid/app/Notification$Action$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2724
    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 2725
    return-object p0
.end method

.method public whitelist setConfirmLabel(Ljava/lang/CharSequence;)Landroid/app/Notification$Action$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2700
    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 2701
    return-object p0
.end method

.method public whitelist setHintDisplayActionInline(Z)Landroid/app/Notification$Action$WearableExtender;
    .registers 3

    .line 2772
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Action$WearableExtender;->setFlag(IZ)V

    .line 2773
    return-object p0
.end method

.method public whitelist setHintLaunchesActivity(Z)Landroid/app/Notification$Action$WearableExtender;
    .registers 3

    .line 2748
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Action$WearableExtender;->setFlag(IZ)V

    .line 2749
    return-object p0
.end method

.method public whitelist setInProgressLabel(Ljava/lang/CharSequence;)Landroid/app/Notification$Action$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2676
    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 2677
    return-object p0
.end method
