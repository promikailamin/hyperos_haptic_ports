.class public Landroid/media/session/ParcelableListBinder;
.super Landroid/os/Binder;
.source "ParcelableListBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# static fields
.field private static final blacklist END_OF_PARCEL:I = 0x0

.field private static final blacklist ITEM_CONTINUED:I = 0x1

.field private static final blacklist SUGGESTED_MAX_IPC_SIZE:I


# instance fields
.field private blacklist mConsumed:Z

.field private final blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private blacklist mCount:I

.field private final blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mListElementsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Landroid/media/session/ParcelableListBinder;->SUGGESTED_MAX_IPC_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/ParcelableListBinder;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    .line 69
    iput-object p1, p0, Landroid/media/session/ParcelableListBinder;->mListElementsClass:Ljava/lang/Class;

    .line 70
    iput-object p2, p0, Landroid/media/session/ParcelableListBinder;->mConsumer:Ljava/util/function/Consumer;

    .line 71
    return-void
.end method

.method public static blacklist send(Landroid/os/IBinder;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    const/4 v1, 0x0

    move v2, v1

    .line 122
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 124
    if-nez v2, :cond_13

    .line 125
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    :cond_13
    :goto_13
    const/4 v5, 0x1

    if-ge v2, v0, :cond_2d

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    sget v7, Landroid/media/session/ParcelableListBinder;->SUGGESTED_MAX_IPC_SIZE:I

    if-ge v6, v7, :cond_2d

    .line 128
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v3, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 132
    :cond_2d
    if-ge v2, v0, :cond_32

    .line 133
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :cond_32
    invoke-interface {p0, v5, v3, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 136
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 138
    if-lt v2, v0, :cond_6

    .line 139
    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 80
    :cond_8
    iget-object p1, p0, Landroid/media/session/ParcelableListBinder;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 81
    :try_start_b
    iget-boolean p3, p0, Landroid/media/session/ParcelableListBinder;->mConsumed:Z

    if-eqz p3, :cond_12

    .line 82
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 84
    :cond_12
    iget-object p3, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 85
    if-nez p3, :cond_20

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    iput p4, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    .line 88
    :cond_20
    :goto_20
    iget p4, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    const/4 v1, 0x0

    if-ge p3, p4, :cond_46

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_46

    .line 89
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p4

    .line 90
    iget-object v1, p0, Landroid/media/session/ParcelableListBinder;->mListElementsClass:Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 94
    iget-object v1, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    move-object v2, p4

    check-cast v2, Landroid/os/Parcelable;

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_43
    add-int/lit8 p3, p3, 0x1

    .line 97
    goto :goto_20

    .line 98
    :cond_46
    iget p2, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    if-lt p3, p2, :cond_4f

    .line 99
    iget-object v1, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    .line 100
    iput-boolean v0, p0, Landroid/media/session/ParcelableListBinder;->mConsumed:Z

    goto :goto_50

    .line 102
    :cond_4f
    nop

    .line 104
    :goto_50
    monitor-exit p1
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_59

    .line 105
    if-eqz v1, :cond_58

    .line 106
    iget-object p1, p0, Landroid/media/session/ParcelableListBinder;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 108
    :cond_58
    return v0

    .line 104
    :catchall_59
    move-exception p2

    :try_start_5a
    monitor-exit p1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p2
.end method
