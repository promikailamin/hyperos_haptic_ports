.class public Landroid/app/servertransaction/BoundsCompatInfoChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "BoundsCompatInfoChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/BoundsCompatInfoChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mScale:F

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/BoundsCompatInfoChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    .line 33
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mState:I

    .line 37
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mBounds:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/BoundsCompatInfoChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(ILandroid/graphics/Rect;F)Landroid/app/servertransaction/BoundsCompatInfoChangeItem;
    .registers 5
    .param p0, "state"    # I
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "scale"    # F

    .line 42
    const-class v0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;

    .line 43
    .local v0, "instance":Landroid/app/servertransaction/BoundsCompatInfoChangeItem;
    if-nez v0, :cond_10

    .line 44
    new-instance v1, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;-><init>()V

    move-object v0, v1

    .line 47
    :cond_10
    iput p0, v0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mState:I

    .line 48
    iput-object p1, v0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mBounds:Landroid/graphics/Rect;

    .line 49
    iput p2, v0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    .line 50
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "result":Z
    if-ne p0, p1, :cond_5

    .line 57
    const/4 v1, 0x1

    return v1

    .line 60
    :cond_5
    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2e

    .line 61
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;

    .line 62
    .local v1, "other":Landroid/app/servertransaction/BoundsCompatInfoChangeItem;
    iget v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mState:I

    iget v3, v1, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mState:I

    if-ne v2, v3, :cond_2c

    iget-object v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    iget v3, v1, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2d

    .line 63
    :cond_2c
    const/4 v0, 0x0

    .line 65
    :cond_2d
    return v0

    .line 67
    .end local v1    # "other":Landroid/app/servertransaction/BoundsCompatInfoChangeItem;
    :cond_2e
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 72
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 75
    const/16 v0, 0x11

    .line 76
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mState:I

    add-int/2addr v1, v2

    .line 77
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 78
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 79
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 84
    iget v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mState:I

    iget-object v1, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/app/ClientTransactionHandler;->handleBoundsCompatInfoChanged(Landroid/os/IBinder;ILandroid/graphics/Rect;F)V

    .line 85
    return-void
.end method

.method public blacklist recycle()V
    .registers 2

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mState:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mBounds:Landroid/graphics/Rect;

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    .line 92
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 93
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "BoundsCompatInfoChangeItemStub{mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v2, ",mBounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v2, ",mScale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v2, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 113
    iget v0, p0, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 114
    return-void
.end method
