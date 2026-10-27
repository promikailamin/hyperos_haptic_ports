.class public Landroid/content/pm/verify/domain/DomainVerificationUtils;
.super Ljava/lang/Object;
.source "DomainVerificationUtils.java"


# static fields
.field private static final blacklist STRINGS_TARGET_BYTE_SIZE:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Landroid/content/pm/verify/domain/DomainVerificationUtils;->STRINGS_TARGET_BYTE_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist estimatedByteSizeOf(Ljava/lang/String;)I
    .registers 1

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public static blacklist readHostMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 79
    if-nez v0, :cond_a

    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 81
    return-object p1

    .line 84
    :cond_a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    :try_start_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object p0

    .line 87
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_22

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 92
    nop

    .line 94
    return-object p1

    .line 91
    :catchall_22
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 92
    throw p0
.end method

.method public static blacklist readHostSet(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 134
    if-nez v0, :cond_b

    .line 135
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 138
    :cond_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    :try_start_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object p0

    .line 141
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 142
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 143
    invoke-static {v0}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_23

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    return-object p0

    .line 145
    :catchall_23
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw p0
.end method

.method private static blacklist readSet(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 167
    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 168
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_1e

    .line 169
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 171
    :cond_1e
    return-object v1
.end method

.method public static blacklist writeHostMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 44
    nop

    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 46
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    invoke-static {v2}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 48
    sget v2, Landroid/content/pm/verify/domain/DomainVerificationUtils;->STRINGS_TARGET_BYTE_SIZE:I

    if-le v0, v2, :cond_25

    .line 49
    nop

    .line 50
    const/4 v0, 0x1

    goto :goto_27

    .line 52
    :cond_25
    goto :goto_d

    .line 46
    :cond_26
    const/4 v0, 0x0

    .line 54
    :goto_27
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 56
    if-nez v0, :cond_30

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 58
    return-void

    .line 61
    :cond_30
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 63
    :try_start_34
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBlob([B)V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_43

    .line 66
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_43
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 67
    throw p0
.end method

.method public static blacklist writeHostSet(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    nop

    .line 102
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 103
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    invoke-static {v2}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 105
    sget v2, Landroid/content/pm/verify/domain/DomainVerificationUtils;->STRINGS_TARGET_BYTE_SIZE:I

    if-le v0, v2, :cond_21

    .line 106
    nop

    .line 107
    const/4 v0, 0x1

    goto :goto_23

    .line 109
    :cond_21
    goto :goto_9

    .line 103
    :cond_22
    const/4 v0, 0x0

    .line 111
    :goto_23
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 113
    if-nez v0, :cond_2c

    .line 114
    invoke-static {p0, p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 115
    return-void

    .line 118
    :cond_2c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    :try_start_30
    invoke-static {v0, p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBlob([B)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3f

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_3f
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw p0
.end method

.method private static blacklist writeSet(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    if-nez p1, :cond_7

    .line 151
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return-void

    .line 154
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    goto :goto_12

    .line 158
    :cond_22
    return-void
.end method
