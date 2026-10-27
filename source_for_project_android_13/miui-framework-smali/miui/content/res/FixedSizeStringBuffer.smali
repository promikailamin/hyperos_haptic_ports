.class public Lmiui/content/res/FixedSizeStringBuffer;
.super Ljava/lang/Object;
.source "FixedSizeStringBuffer.java"


# static fields
.field private static final blacklist STRING_CAPACITY:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "FixedSizeStringBuffer"

.field private static blacklist sBufferPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/SoftReference<",
            "Lmiui/content/res/FixedSizeStringBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sMutex:Ljava/lang/Object;


# instance fields
.field private blacklist mBuf:[C

.field private blacklist mLen:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 53
    new-array v0, p1, [C

    iput-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    .line 54
    return-void
.end method

.method public static blacklist freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V
    .registers 4
    .param p0, "buffer"    # Lmiui/content/res/FixedSizeStringBuffer;

    .line 47
    sget-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static blacklist getBuffer()Lmiui/content/res/FixedSizeStringBuffer;
    .registers 6

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "ret":Lmiui/content/res/FixedSizeStringBuffer;
    sget-object v1, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_4
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_54

    if-nez v2, :cond_44

    .line 29
    :try_start_c
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 30
    .local v2, "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lmiui/content/res/FixedSizeStringBuffer;>;"
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/FixedSizeStringBuffer;
    :try_end_1c
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_1c} :catch_20
    .catchall {:try_start_c .. :try_end_1c} :catchall_54

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    move-object v0, v3

    .line 35
    .end local v2    # "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lmiui/content/res/FixedSizeStringBuffer;>;"
    goto :goto_44

    .line 31
    :catch_20
    move-exception v2

    .line 33
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_21
    const-string v3, "FixedSizeStringBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sBufferPool remove() throw exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    .line 38
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :cond_44
    :goto_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_54

    .line 39
    if-nez v0, :cond_4f

    .line 40
    new-instance v1, Lmiui/content/res/FixedSizeStringBuffer;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;-><init>(I)V

    move-object v0, v1

    .line 42
    :cond_4f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    .line 43
    return-object v0

    .line 38
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2
.end method


# virtual methods
.method public blacklist append(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 77
    return-void
.end method

.method public blacklist append(Ljava/lang/String;II)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 80
    sub-int v0, p3, p2

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v3, v2

    if-gt v0, v3, :cond_14

    .line 81
    invoke-virtual {p1, p2, p3, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 82
    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 84
    :cond_14
    return-void
.end method

.method public blacklist assign(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public blacklist assign(Ljava/lang/String;I)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "end"    # I

    .line 69
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v1, v0

    if-gt p2, v1, :cond_b

    .line 70
    iput p2, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 73
    :cond_b
    return-void
.end method

.method public blacklist move(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 61
    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 62
    return-void
.end method

.method public blacklist setLength(I)V
    .registers 2
    .param p1, "length"    # I

    .line 57
    iput p1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 58
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 87
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
