.class abstract Landroid/content/pm/BaseParceledListSlice;
.super Ljava/lang/Object;
.source "BaseParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MAX_IPC_SIZE:I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ParceledListSlice"

.field private static final blacklist WARN_ELM_SIZE:I


# instance fields
.field private blacklist mHasBeenParceled:Z

.field private greylist-max-o mInlineCountLimit:I

.field private greylist-max-o mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmList(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmList(Landroid/content/pm/BaseParceledListSlice;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetWARN_ELM_SIZE()I
    .registers 1

    sget v0, Landroid/content/pm/BaseParceledListSlice;->WARN_ELM_SIZE:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Landroid/content/pm/BaseParceledListSlice;->MAX_IPC_SIZE:I

    .line 59
    sget v0, Landroid/content/pm/BaseParceledListSlice;->MAX_IPC_SIZE:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Landroid/content/pm/BaseParceledListSlice;->WARN_ELM_SIZE:I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 11

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/BaseParceledListSlice;->mHasBeenParceled:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    .line 76
    if-gtz v1, :cond_19

    .line 77
    return-void

    .line 80
    :cond_19
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/BaseParceledListSlice;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v2

    .line 81
    nop

    .line 83
    const/4 v3, 0x0

    move v4, v0

    .line 84
    :goto_20
    if-ge v4, v1, :cond_30

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_29

    .line 86
    goto :goto_30

    .line 88
    :cond_29
    invoke-direct {p0, v2, p1, p2, v3}, Landroid/content/pm/BaseParceledListSlice;->readVerifyAndAddElement(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 92
    :cond_30
    :goto_30
    if-lt v4, v1, :cond_33

    .line 93
    return-void

    .line 95
    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 96
    :goto_37
    if-ge v4, v1, :cond_8f

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 100
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v7, 0x1

    :try_start_45
    invoke-interface {p1, v7, v5, v6, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 103
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 104
    :goto_4b
    if-ge v4, v1, :cond_5a

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5a

    .line 105
    invoke-direct {p0, v2, v6, p2, v3}, Landroid/content/pm/BaseParceledListSlice;->readVerifyAndAddElement(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_57} :catch_64
    .catchall {:try_start_45 .. :try_end_57} :catchall_62

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 114
    :cond_5a
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 116
    nop

    .line 117
    goto :goto_37

    .line 114
    :catchall_62
    move-exception p1

    goto :goto_88

    .line 110
    :catch_64
    move-exception p1

    .line 111
    :try_start_65
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure retrieving array; only received "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_88
    .catchall {:try_start_65 .. :try_end_88} :catchall_62

    .line 114
    :goto_88
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 116
    throw p1

    .line 118
    :cond_8f
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/BaseParceledListSlice;->mHasBeenParceled:Z

    .line 68
    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    .line 69
    return-void
.end method

.method private greylist-max-o readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 133
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_b

    .line 134
    check-cast p1, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 136
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 138
    :cond_b
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private blacklist readVerifyAndAddElement(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/BaseParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    .line 123
    if-nez p4, :cond_b

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    goto :goto_12

    .line 126
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 128
    :goto_12
    iget-object p2, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-object p4
.end method

.method private static greylist-max-o verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 142
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const/4 v2, 0x0

    if-nez p1, :cond_18

    move-object p1, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in list of type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 145
    if-nez p0, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_2d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_39
    return-void
.end method


# virtual methods
.method public greylist-max-r getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method protected abstract greylist-max-o readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation
.end method

.method public greylist-max-o setInlineCountLimit(I)V
    .registers 2

    .line 159
    iput p1, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    .line 160
    return-void
.end method

.method protected abstract greylist-max-o writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation
.end method

.method protected abstract greylist-max-r writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    .line 173
    iget-boolean v0, p0, Landroid/content/pm/BaseParceledListSlice;->mHasBeenParceled:Z

    if-nez v0, :cond_5a

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/BaseParceledListSlice;->mHasBeenParceled:Z

    .line 177
    iget-object v1, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 178
    nop

    .line 179
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    if-lez v1, :cond_59

    .line 182
    iget-object v2, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 183
    iget-object v4, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Landroid/content/pm/BaseParceledListSlice;->writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 184
    move v4, v3

    .line 185
    :goto_28
    if-ge v4, v1, :cond_4c

    iget v5, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    if-ge v4, v5, :cond_4c

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    sget v6, Landroid/content/pm/BaseParceledListSlice;->MAX_IPC_SIZE:I

    if-ge v5, v6, :cond_4c

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v5, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 189
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 190
    invoke-virtual {p0, v5, p1, p2}, Landroid/content/pm/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    goto :goto_28

    .line 195
    :cond_4c
    if-ge v4, v1, :cond_59

    .line 196
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    new-instance v0, Landroid/content/pm/BaseParceledListSlice$1;

    invoke-direct {v0, p0, v1, v2, p2}, Landroid/content/pm/BaseParceledListSlice$1;-><init>(Landroid/content/pm/BaseParceledListSlice;ILjava/lang/Class;I)V

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 259
    :cond_59
    return-void

    .line 174
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t Parcel a ParceledListSlice more than once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
