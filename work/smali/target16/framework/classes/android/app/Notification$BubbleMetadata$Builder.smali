.class public final Landroid/app/Notification$BubbleMetadata$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeleteIntent:Landroid/app/PendingIntent;

.field private blacklist mDesiredHeight:I

.field private blacklist mDesiredHeightResId:I

.field private blacklist mFlags:I

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mShortcutId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14484
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V
    .registers 5

    .line 14539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14540
    if-eqz p1, :cond_29

    .line 14543
    if-eqz p2, :cond_21

    .line 14546
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1c

    .line 14547
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    .line 14548
    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14552
    :cond_1c
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 14553
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 14554
    return-void

    .line 14544
    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Bubbles require non-null icon"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14541
    :cond_29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Bubble requires non-null pending intent"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 14512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 14516
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    .line 14517
    return-void

    .line 14514
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubble requires a non-null shortcut id"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist build()Landroid/app/Notification$BubbleMetadata;
    .registers 11

    .line 14729
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 14730
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply pending intent or shortcut to bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14733
    :cond_11
    :goto_11
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1a

    goto :goto_22

    .line 14734
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply an icon or shortcut for the bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14737
    :cond_22
    :goto_22
    new-instance v2, Landroid/app/Notification$BubbleMetadata;

    iget-object v3, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget v6, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    iget v7, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    iget-object v8, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;Landroid/app/Notification-IA;)V

    .line 14739
    iget v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    invoke-virtual {v2, v0}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 14740
    return-object v2
.end method

.method public whitelist setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3

    .line 14674
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 14675
    return-object p0
.end method

.method public whitelist setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 2

    .line 14718
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 14719
    return-object p0
.end method

.method public whitelist setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3

    .line 14632
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 14633
    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    .line 14634
    return-object p0
.end method

.method public whitelist setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 2

    .line 14654
    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    .line 14655
    const/4 p1, 0x0

    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 14656
    return-object p0
.end method

.method public blacklist setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3

    .line 14747
    if-eqz p2, :cond_8

    .line 14748
    iget p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    goto :goto_e

    .line 14750
    :cond_8
    iget p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    .line 14752
    :goto_e
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 4

    .line 14598
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 14603
    if-eqz p1, :cond_1e

    .line 14606
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1b

    .line 14607
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    .line 14608
    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14612
    :cond_1b
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 14613
    return-object p0

    .line 14604
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubbles require non-null icon"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14599
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3

    .line 14569
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 14574
    if-eqz p1, :cond_9

    .line 14577
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 14578
    return-object p0

    .line 14575
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubble requires non-null pending intent"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14570
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3

    .line 14690
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 14691
    return-object p0
.end method

.method public whitelist setSuppressableBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3

    .line 14707
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 14708
    return-object p0
.end method
