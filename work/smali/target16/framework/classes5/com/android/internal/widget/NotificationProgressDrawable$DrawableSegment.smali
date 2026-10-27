.class public final Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
.super Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrawableSegment"
.end annotation


# instance fields
.field private final blacklist mFaded:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    return p0
.end method

.method public constructor blacklist <init>(FFI)V
    .registers 5

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    .line 505
    return-void
.end method

.method public constructor blacklist <init>(FFIZ)V
    .registers 5

    .line 508
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;-><init>(FFI)V

    .line 509
    iput-boolean p4, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    .line 510
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 521
    invoke-super {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 523
    :cond_8
    check-cast p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 524
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    iget-boolean p1, p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    if-ne v0, p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 529
    invoke-super {p0}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Segment(start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mEnd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", faded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
