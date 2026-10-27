.class public final Landroid/app/usage/BroadcastResponseStatsList;
.super Ljava/lang/Object;
.source "BroadcastResponseStatsList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/BroadcastResponseStatsList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBroadcastResponseStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/app/usage/BroadcastResponseStatsList$1;

    invoke-direct {v0}, Landroid/app/usage/BroadcastResponseStatsList$1;-><init>()V

    sput-object v0, Landroid/app/usage/BroadcastResponseStatsList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/usage/BroadcastResponseStatsList;->mBroadcastResponseStats:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object p1

    .line 39
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 41
    :try_start_12
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 42
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    iget-object p1, p0, Landroid/app/usage/BroadcastResponseStatsList;->mBroadcastResponseStats:Ljava/util/List;

    sget-object v1, Landroid/app/usage/BroadcastResponseStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_26

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    nop

    .line 47
    return-void

    .line 45
    :catchall_26
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    throw p1
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/usage/BroadcastResponseStatsList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/usage/BroadcastResponseStatsList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/app/usage/BroadcastResponseStatsList;->mBroadcastResponseStats:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroid/app/usage/BroadcastResponseStatsList;->mBroadcastResponseStats:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/app/usage/BroadcastResponseStatsList;->mBroadcastResponseStats:Ljava/util/List;

    :goto_b
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 61
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    .line 63
    :try_start_4
    iget-object v0, p0, Landroid/app/usage/BroadcastResponseStatsList;->mBroadcastResponseStats:Ljava/util/List;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_15
    move-exception p1

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 67
    throw p1
.end method
