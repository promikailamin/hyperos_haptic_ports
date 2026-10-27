.class public Landroid/net/NetworkStatsSysApp;
.super Ljava/lang/Object;
.source "NetworkStatsSysApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsSysApp$Entry;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStatsSysApp;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist IFACE_ALL:Ljava/lang/String;

.field public static final blacklist PACKAGE_DEFAULT:Ljava/lang/String; = ""


# instance fields
.field private blacklist capacity:I

.field private blacklist elapsedRealtime:J

.field private blacklist iface:[Ljava/lang/String;

.field private blacklist nameOrHashs:[Ljava/lang/String;

.field private blacklist rxBytes:[J

.field private blacklist rxPackets:[J

.field private blacklist size:I

.field private blacklist txBytes:[J

.field private blacklist txPackets:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStatsSysApp;->IFACE_ALL:Ljava/lang/String;

    .line 403
    new-instance v0, Landroid/net/NetworkStatsSysApp$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsSysApp$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsSysApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JI)V
    .registers 5
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-wide p1, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    .line 119
    if-ltz p3, :cond_25

    .line 120
    iput p3, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    .line 121
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    .line 122
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    .line 123
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    .line 124
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    .line 125
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    .line 126
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    goto :goto_3f

    .line 129
    :cond_25
    iput v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    .line 130
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    .line 131
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    .line 132
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    .line 133
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    .line 134
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    .line 135
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    .line 137
    :goto_3f
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    .line 149
    return-void
.end method

.method public static blacklist subtract(Landroid/net/NetworkStatsSysApp;Landroid/net/NetworkStatsSysApp;Landroid/net/NetworkStatsSysApp;)Landroid/net/NetworkStatsSysApp;
    .registers 15
    .param p0, "left"    # Landroid/net/NetworkStatsSysApp;
    .param p1, "right"    # Landroid/net/NetworkStatsSysApp;
    .param p2, "recycle"    # Landroid/net/NetworkStatsSysApp;

    .line 327
    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    sub-long/2addr v0, v2

    .line 328
    .local v0, "deltaRealtime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_d

    .line 329
    const-wide/16 v0, 0x0

    .line 333
    :cond_d
    new-instance v4, Landroid/net/NetworkStatsSysApp$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStatsSysApp$Entry;-><init>()V

    .line 335
    .local v4, "entry":Landroid/net/NetworkStatsSysApp$Entry;
    if-eqz p2, :cond_21

    iget v5, p2, Landroid/net/NetworkStatsSysApp;->capacity:I

    iget v6, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-lt v5, v6, :cond_21

    .line 336
    move-object v5, p2

    .line 337
    .local v5, "result":Landroid/net/NetworkStatsSysApp;
    const/4 v6, 0x0

    iput v6, v5, Landroid/net/NetworkStatsSysApp;->size:I

    .line 338
    iput-wide v0, v5, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    goto :goto_28

    .line 340
    .end local v5    # "result":Landroid/net/NetworkStatsSysApp;
    :cond_21
    new-instance v5, Landroid/net/NetworkStatsSysApp;

    iget v6, p0, Landroid/net/NetworkStatsSysApp;->size:I

    invoke-direct {v5, v0, v1, v6}, Landroid/net/NetworkStatsSysApp;-><init>(JI)V

    .line 342
    .restart local v5    # "result":Landroid/net/NetworkStatsSysApp;
    :goto_28
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    iget v7, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-ge v6, v7, :cond_c8

    .line 343
    iget-object v7, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v7, v7, v6

    iput-object v7, v4, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    .line 344
    iget-object v7, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v7, v7, v6

    iput-object v7, v4, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    .line 347
    iget-object v7, v4, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    iget-object v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v6}, Landroid/net/NetworkStatsSysApp;->findIndexHinted(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 348
    .local v7, "j":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_5d

    .line 350
    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v8, v8, v6

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    .line 351
    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v8, v8, v6

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    .line 352
    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v8, v8, v6

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    .line 353
    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v8, v8, v6

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    goto :goto_c1

    .line 356
    :cond_5d
    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v8, v8, v6

    iget-object v10, p1, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v10, v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    .line 357
    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v8, v8, v6

    iget-object v10, p1, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v10, v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    .line 358
    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v8, v8, v6

    iget-object v10, p1, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v10, v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    .line 359
    iget-object v8, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v8, v8, v6

    iget-object v10, p1, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v10, v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    .line 361
    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    cmp-long v8, v8, v2

    if-ltz v8, :cond_a1

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    cmp-long v8, v8, v2

    if-ltz v8, :cond_a1

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    cmp-long v8, v8, v2

    if-ltz v8, :cond_a1

    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    cmp-long v8, v8, v2

    if-gez v8, :cond_c1

    .line 363
    :cond_a1
    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    .line 364
    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    .line 365
    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    .line 366
    iget-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    .line 370
    :cond_c1
    :goto_c1
    invoke-virtual {v5, v4}, Landroid/net/NetworkStatsSysApp;->addValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;

    .line 342
    .end local v7    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_29

    .line 373
    .end local v6    # "i":I
    :cond_c8
    return-object v5
.end method


# virtual methods
.method public blacklist addValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;
    .registers 6
    .param p1, "entry"    # Landroid/net/NetworkStatsSysApp$Entry;

    .line 169
    iget v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    if-lt v0, v1, :cond_46

    .line 170
    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 171
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    .line 172
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    .line 173
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    .line 174
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    .line 175
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    .line 176
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    .line 177
    iput v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    .line 179
    .end local v0    # "newLength":I
    :cond_46
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-object v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 180
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-object v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 181
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    aput-wide v2, v0, v1

    .line 182
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    aput-wide v2, v0, v1

    .line 183
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    aput-wide v2, v0, v1

    .line 184
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    aput-wide v2, v0, v1

    .line 185
    iget v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    .line 187
    return-object p0
.end method

.method public blacklist combineValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;
    .registers 8
    .param p1, "entry"    # Landroid/net/NetworkStatsSysApp$Entry;

    .line 235
    iget-object v0, p1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkStatsSysApp;->findIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 238
    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsSysApp;->addValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;

    goto :goto_33

    .line 240
    :cond_f
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 241
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 242
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 243
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 245
    :goto_33
    return-object p0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 377
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    const-string v0, "NetworkStatsSysApp: elapsedRealtime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-ge v0, v1, :cond_6d

    .line 380
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    const-string v1, " nameOrHashs="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 385
    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 386
    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 387
    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 389
    .end local v0    # "i":I
    :cond_6d
    return-void
.end method

.method public blacklist findIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "pname"    # Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-ge v0, v1, :cond_1d

    .line 253
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 254
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 255
    return v0

    .line 252
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist findIndexHinted(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "nameOrHash"    # Ljava/lang/String;
    .param p3, "hintIndex"    # I

    .line 267
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_1
    iget v1, p0, Landroid/net/NetworkStatsSysApp;->size:I

    if-ge v0, v1, :cond_2d

    .line 268
    div-int/lit8 v2, v0, 0x2

    .line 272
    .local v2, "halfOffset":I
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_f

    .line 273
    add-int v3, p3, v2

    rem-int/2addr v3, v1

    .local v3, "i":I
    goto :goto_15

    .line 275
    .end local v3    # "i":I
    :cond_f
    add-int v3, v1, p3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v3, v1

    .line 278
    .restart local v3    # "i":I
    :goto_15
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 279
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 280
    return v3

    .line 267
    .end local v2    # "halfOffset":I
    .end local v3    # "i":I
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    .end local v0    # "offset":I
    :cond_2d
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getElapsedRealtime()J
    .registers 3

    .line 205
    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    return-wide v0
.end method

.method public blacklist getElapsedRealtimeAge()J
    .registers 5

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getTotalPackets()J
    .registers 8

    .line 290
    const-wide/16 v0, 0x0

    .line 291
    .local v0, "total":J
    iget v2, p0, Landroid/net/NetworkStatsSysApp;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_15

    .line 292
    iget-object v3, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v3, v3, v2

    iget-object v5, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 291
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 294
    .end local v2    # "i":I
    :cond_15
    return-wide v0
.end method

.method public blacklist getTotalRxBytes()J
    .registers 6

    .line 298
    const-wide/16 v0, 0x0

    .line 299
    .local v0, "total":J
    iget v2, p0, Landroid/net/NetworkStatsSysApp;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_10

    .line 300
    iget-object v3, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v3, v3, v2

    add-long/2addr v0, v3

    .line 299
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 302
    .end local v2    # "i":I
    :cond_10
    return-wide v0
.end method

.method public blacklist getTotalTxBytes()J
    .registers 6

    .line 306
    const-wide/16 v0, 0x0

    .line 307
    .local v0, "total":J
    iget v2, p0, Landroid/net/NetworkStatsSysApp;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_10

    .line 308
    iget-object v3, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v3, v3, v2

    add-long/2addr v0, v3

    .line 307
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 310
    .end local v2    # "i":I
    :cond_10
    return-wide v0
.end method

.method public blacklist getValues(ILandroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp$Entry;
    .registers 6
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStatsSysApp$Entry;

    .line 194
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/NetworkStatsSysApp$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsSysApp$Entry;-><init>()V

    .line 195
    .local v0, "entry":Landroid/net/NetworkStatsSysApp$Entry;
    :goto_9
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    .line 198
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    .line 199
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    .line 200
    iget-object v1, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    .line 201
    return-object v0
.end method

.method public blacklist internalSize()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    return v0
.end method

.method public blacklist setElapsedRealtime(J)V
    .registers 3
    .param p1, "time"    # J

    .line 209
    iput-wide p1, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    .line 210
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 393
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 394
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStatsSysApp;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget v0, p0, Landroid/net/NetworkStatsSysApp;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/net/NetworkStatsSysApp;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->nameOrHashs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 159
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 160
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 161
    iget-object v0, p0, Landroid/net/NetworkStatsSysApp;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 162
    return-void
.end method
