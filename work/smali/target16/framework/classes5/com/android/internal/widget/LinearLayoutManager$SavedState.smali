.class public Lcom/android/internal/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/LinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mAnchorLayoutFromEnd:Z

.field blacklist mAnchorOffset:I

.field blacklist mAnchorPosition:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2262
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2234
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/LinearLayoutManager$SavedState;)V
    .registers 3

    .line 2236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2237
    iget v0, p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2238
    iget v0, p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2239
    iget-boolean p1, p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2240
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2252
    const/4 v0, 0x0

    return v0
.end method

.method blacklist hasValidAnchor()Z
    .registers 2

    .line 2243
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist invalidateAnchor()V
    .registers 2

    .line 2247
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2248
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2257
    iget p2, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2258
    iget p2, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2259
    iget-boolean p2, p0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2260
    return-void
.end method
