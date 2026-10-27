.class public final Landroid/app/appfunctions/GenericDocumentWrapper;
.super Ljava/lang/Object;
.source "GenericDocumentWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/GenericDocumentWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDataSize:Ljava/lang/Integer;

.field private blacklist mGenericDocument:Landroid/app/appsearch/GenericDocument;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/app/appfunctions/GenericDocumentWrapper$1;

    invoke-direct {v0}, Landroid/app/appfunctions/GenericDocumentWrapper$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/GenericDocumentWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/GenericDocument;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/GenericDocument;

    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    .line 81
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    .line 82
    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcel;

    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    .line 88
    iget-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    .line 89
    return-void
.end method

.method private blacklist unparcel()V
    .registers 6

    .line 101
    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    if-eqz v1, :cond_9

    .line 103
    monitor-exit v0

    return-void

    .line 105
    :cond_9
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_3b

    .line 108
    :try_start_1f
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 109
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    invoke-static {v2}, Landroid/app/appsearch/GenericDocument;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    iput-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_36

    .line 113
    :try_start_30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 114
    nop

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 113
    :catchall_36
    move-exception v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 114
    throw v1

    .line 115
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getDataSize()I
    .registers 4

    .line 121
    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    .line 123
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 125
    :cond_f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 126
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/appfunctions/GenericDocumentWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 130
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist getValue()Landroid/app/appsearch/GenericDocument;
    .registers 3

    .line 94
    invoke-direct {p0}, Landroid/app/appfunctions/GenericDocumentWrapper;->unparcel()V

    .line 95
    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_6
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/GenericDocument;

    monitor-exit v0

    return-object v1

    .line 97
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 140
    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    if-eqz v1, :cond_3c

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 144
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_55

    .line 148
    :try_start_13
    iget-object v3, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    invoke-virtual {v3, v2, p2}, Landroid/app/appsearch/GenericDocument;->writeToParcel(Landroid/os/Parcel;I)V

    .line 149
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_37

    .line 151
    :try_start_1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 152
    nop

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 154
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBlob([B)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 156
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    sub-int v1, p2, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 161
    goto :goto_53

    .line 151
    :catchall_37
    move-exception p1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw p1

    .line 162
    :cond_3c
    iget-object p2, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcel;

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 166
    :goto_53
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_55
    move-exception p1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_1c .. :try_end_57} :catchall_55

    throw p1
.end method
