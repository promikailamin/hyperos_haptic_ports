.class public Landroid/internal/aconfig/storage/TableUtils;
.super Ljava/lang/Object;
.source "TableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    }
.end annotation


# static fields
.field private static final blacklist HASH_PRIMES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/internal/aconfig/storage/TableUtils;->HASH_PRIMES:[I

    return-void

    :array_a
    .array-data 4
        0x7
        0x11
        0x1d
        0x35
        0x61
        0xc1
        0x185
        0x301
        0x607
        0xc07
        0x1807
        0x3001
        0x6011
        0xc005
        0x1800d
        0x30005
        0x60019
        0xc0001
        0x180005
        0x30000b
        0x60000d
        0xc00005
        0x1800013
        0x3000005
        0x6000017
        0xc000013
        0x18000005
        0x30000059
        0x60000005
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBucketIndex([BI)I
    .registers 4

    .line 64
    invoke-static {p0}, Landroid/internal/aconfig/storage/SipHasher13;->hash([B)J

    move-result-wide v0

    .line 65
    int-to-long p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist getTableSize(I)I
    .registers 6

    .line 56
    sget-object v0, Landroid/internal/aconfig/storage/TableUtils;->HASH_PRIMES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget v3, v0, v2

    .line 57
    mul-int/lit8 v4, p0, 0x2

    if-ge v3, v4, :cond_f

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 58
    :cond_f
    return v3

    .line 60
    :cond_10
    new-instance p0, Landroid/internal/aconfig/storage/AconfigStorageException;

    const-string v0, "Number of items in a hash table exceeds limit"

    invoke-direct {p0, v0}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
