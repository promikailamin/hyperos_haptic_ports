.class final Landroid/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mBreadCrumbShortTitleRes:I

.field final blacklist mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final blacklist mBreadCrumbTitleRes:I

.field final blacklist mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final blacklist mIndex:I

.field final blacklist mName:Ljava/lang/String;

.field final blacklist mOps:[I

.field final blacklist mReorderingAllowed:Z

.field final blacklist mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTransition:I

.field final blacklist mTransitionStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Landroid/app/BackStackState$1;

    invoke-direct {v0}, Landroid/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V
    .registers 9

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object p1, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 50
    mul-int/lit8 v0, p1, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    .line 52
    iget-boolean v0, p2, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_89

    .line 56
    nop

    .line 57
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    if-ge v0, p1, :cond_5c

    .line 58
    iget-object v2, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord$Op;

    .line 59
    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    aput v5, v3, v1

    .line 60
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    iget-object v5, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v5, :cond_35

    iget-object v5, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v5, v5, Landroid/app/Fragment;->mIndex:I

    goto :goto_36

    :cond_35
    const/4 v5, -0x1

    :goto_36
    aput v5, v1, v4

    .line 61
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    iget v5, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    aput v5, v1, v3

    .line 62
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    iget v5, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    aput v5, v1, v4

    .line 63
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    iget v5, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    aput v5, v1, v3

    .line 64
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    iget v2, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    aput v2, v1, v4

    .line 57
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_16

    .line 66
    :cond_5c
    iget p1, p2, Landroid/app/BackStackRecord;->mTransition:I

    iput p1, p0, Landroid/app/BackStackState;->mTransition:I

    .line 67
    iget p1, p2, Landroid/app/BackStackRecord;->mTransitionStyle:I

    iput p1, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 68
    iget-object p1, p2, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 69
    iget p1, p2, Landroid/app/BackStackRecord;->mIndex:I

    iput p1, p0, Landroid/app/BackStackState;->mIndex:I

    .line 70
    iget p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput p1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 71
    iget-object p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 72
    iget p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput p1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 73
    iget-object p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 74
    iget-object p1, p2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 75
    iget-object p1, p2, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 76
    iget-boolean p1, p2, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean p1, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    .line 77
    return-void

    .line 53
    :cond_89
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not on back stack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransition:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mIndex:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 86
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 88
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_55

    const/4 p1, 0x1

    goto :goto_56

    :cond_55
    const/4 p1, 0x0

    :goto_56
    iput-boolean p1, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;
    .registers 8

    .line 95
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 96
    nop

    .line 97
    const/4 v1, 0x0

    move v2, v1

    .line 98
    :goto_8
    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    array-length v3, v3

    if-ge v1, v3, :cond_9c

    .line 99
    new-instance v3, Landroid/app/BackStackRecord$Op;

    invoke-direct {v3}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 100
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 101
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4e

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " op #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " base fragment #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FragmentManager"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_4e
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    .line 106
    if-ltz v1, :cond_61

    .line 107
    iget-object v5, p1, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 108
    iput-object v1, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 109
    goto :goto_64

    .line 110
    :cond_61
    const/4 v1, 0x0

    iput-object v1, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 112
    :goto_64
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 113
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 114
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 115
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 116
    iget v1, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v1, v0, Landroid/app/BackStackRecord;->mEnterAnim:I

    .line 117
    iget v1, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v1, v0, Landroid/app/BackStackRecord;->mExitAnim:I

    .line 118
    iget v1, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v1, v0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    .line 119
    iget v1, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v1, v0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    .line 120
    invoke-virtual {v0, v3}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    move v1, v4

    goto/16 :goto_8

    .line 123
    :cond_9c
    iget p1, p0, Landroid/app/BackStackState;->mTransition:I

    iput p1, v0, Landroid/app/BackStackRecord;->mTransition:I

    .line 124
    iget p1, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    iput p1, v0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 125
    iget-object p1, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    iput-object p1, v0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 126
    iget p1, p0, Landroid/app/BackStackState;->mIndex:I

    iput p1, v0, Landroid/app/BackStackRecord;->mIndex:I

    .line 127
    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 128
    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 129
    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 130
    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 131
    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 132
    iget-object v1, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 133
    iget-object v1, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 134
    iget-boolean v1, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean v1, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 135
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 136
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 144
    iget-object p2, p0, Landroid/app/BackStackState;->mOps:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 145
    iget p2, p0, Landroid/app/BackStackState;->mTransition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget p2, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object p2, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget p2, p0, Landroid/app/BackStackState;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget p2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object p2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 151
    iget p2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object p2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 153
    iget-object p2, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    iget-object p2, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-boolean p2, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
