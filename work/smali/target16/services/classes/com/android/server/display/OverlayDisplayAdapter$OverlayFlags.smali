.class public final Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"


# instance fields
.field public final mDisableWindowInteraction:Z

.field public final mFixedContentMode:Z

.field public final mGravity:I

.field public final mOwnContentOnly:Z

.field public final mSecure:Z

.field public final mShouldShowSystemDecorations:Z


# direct methods
.method public constructor <init>(ZZZZZI)V
    .registers 7

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-boolean p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    .line 680
    iput-boolean p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    .line 681
    iput-boolean p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    .line 682
    iput-boolean p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mFixedContentMode:Z

    .line 683
    iput-boolean p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mDisableWindowInteraction:Z

    .line 684
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mGravity:I

    return-void
.end method

.method public static parseFlags(Ljava/lang/String;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .registers 12

    .line 688
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 689
    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZZZI)V

    return-object v1

    .line 704
    :cond_12
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_20
    if-ge v1, v0, :cond_62

    aget-object v2, p0, v1

    .line 705
    const-string/jumbo v9, "secure"

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_30

    move v3, v10

    goto :goto_5f

    .line 707
    :cond_30
    const-string/jumbo v9, "own_content_only"

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    move v4, v10

    goto :goto_5f

    .line 709
    :cond_3b
    const-string/jumbo v9, "should_show_system_decorations"

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    move v5, v10

    goto :goto_5f

    .line 711
    :cond_46
    const-string v9, "fixed_content_mode"

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50

    move v6, v10

    goto :goto_5f

    .line 713
    :cond_50
    const-string v9, "disable_window_interaction"

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    move v7, v10

    goto :goto_5f

    .line 716
    :cond_5a
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$smparseOverlayGravity(Ljava/lang/String;)I

    move-result v2

    move v8, v2

    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 719
    :cond_62
    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZZZI)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "secure="

    .line 726
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ownContentOnly="

    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowSystemDecorations="

    .line 728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fixedContentMode="

    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mFixedContentMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disableWindowInteraction="

    .line 730
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mDisableWindowInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gravity"

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mGravity:I

    invoke-static {p0}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 732
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
