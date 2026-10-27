.class public Lcom/android/internal/widget/AccountViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AccountViewAdapter$AccountElements;
    }
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4

    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 67
    if-nez p2, :cond_a

    .line 68
    new-instance p2, Lcom/android/internal/widget/AccountItemView;

    iget-object p3, p0, Lcom/android/internal/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/internal/widget/AccountItemView;-><init>(Landroid/content/Context;)V

    goto :goto_c

    .line 70
    :cond_a
    check-cast p2, Lcom/android/internal/widget/AccountItemView;

    .line 72
    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AccountViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;

    .line 73
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/AccountItemView;->setViewItem(Lcom/android/internal/widget/AccountViewAdapter$AccountElements;)V

    .line 74
    return-object p2
.end method

.method public blacklist updateData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/widget/AccountViewAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method
