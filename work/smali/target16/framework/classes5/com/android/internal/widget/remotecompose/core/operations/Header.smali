.class public Lcom/android/internal/widget/remotecompose/core/operations/Header;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "Header.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "Header"

.field private static final blacklist DATA_TYPE_FLOAT:S = 0x1s

.field private static final blacklist DATA_TYPE_INT:S = 0x0s

.field private static final blacklist DATA_TYPE_LONG:S = 0x2s

.field private static final blacklist DATA_TYPE_STRING:S = 0x3s

.field public static final blacklist DOC_CONTENT_DESCRIPTION:S = 0x9s

.field public static final blacklist DOC_DATA_UPDATE:S = 0xcs

.field public static final blacklist DOC_DENSITY_AT_GENERATION:S = 0x7s

.field public static final blacklist DOC_DESIRED_FPS:S = 0x8s

.field public static final blacklist DOC_HEIGHT:S = 0x6s

.field public static final blacklist DOC_PROFILES:S = 0xes

.field public static final blacklist DOC_SOURCE:S = 0xbs

.field public static final blacklist DOC_WIDTH:S = 0x5s

.field public static final blacklist HOST_EXCEPTION_HANDLER:S = 0xds

.field private static final blacklist KEYS:[S

.field private static final blacklist KEY_NAMES:[Ljava/lang/String;

.field private static final blacklist MAGIC_NUMBER:I = 0x48c0000

.field private static final blacklist MAX_TABLE_SIZE:I = 0x3e8

.field private static final blacklist OP_CODE:I


# instance fields
.field blacklist mCapabilities:J

.field blacklist mDensity:F

.field blacklist mHeight:I

.field blacklist mMajorVersion:I

.field blacklist mMinorVersion:I

.field blacklist mPatchVersion:I

.field blacklist mProfiles:I

.field private blacklist mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    .line 128
    const-string v8, "HOST_EXCEPTION_HANDLER"

    const-string v9, "DOC_PROFILES"

    const-string v1, "DOC_WIDTH"

    const-string v2, "DOC_HEIGHT"

    const-string v3, "DOC_DENSITY_AT_GENERATION"

    const-string v4, "DOC_DESIRED_FPS"

    const-string v5, "DOC_CONTENT_DESCRIPTION"

    const-string v6, "DOC_SOURCE"

    const-string v7, "DOC_DATA_UPDATE"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEY_NAMES:[Ljava/lang/String;

    return-void

    :array_22
    .array-data 2
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xbs
        0xcs
        0xds
        0xes
    .end array-data
.end method

.method public constructor blacklist <init>(IIIIIFJ)V
    .registers 11

    .line 159
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 57
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 60
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProfiles:I

    .line 160
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    .line 161
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    .line 162
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    .line 163
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 164
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 165
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 166
    iput-wide p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    .line 167
    return-void
.end method

.method public constructor blacklist <init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 57
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 60
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 61
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProfiles:I

    .line 180
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    .line 181
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    .line 182
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    .line 183
    if-eqz p4, :cond_3c

    .line 184
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 185
    const/4 p1, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 186
    const/4 p1, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 187
    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 188
    const/16 p1, 0xe

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProfiles:I

    .line 190
    :cond_3c
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V
    .registers 7

    .line 326
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 328
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 329
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 331
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 333
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 334
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[S[Ljava/lang/Object;)V
    .registers 6

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 350
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1d

    .line 351
    const p1, 0x48c0001

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 352
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 354
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 355
    invoke-static {p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->writeMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    goto :goto_3f

    .line 356
    :cond_1d
    const/4 v1, 0x6

    if-ne p1, v1, :cond_40

    .line 357
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 360
    const/4 p1, 0x5

    invoke-static {p2, p3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt([S[Ljava/lang/Object;I)I

    move-result p1

    .line 361
    invoke-static {p2, p3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt([S[Ljava/lang/Object;I)I

    move-result p2

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 363
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 364
    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 365
    nop

    .line 368
    :goto_3f
    return-void

    .line 366
    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported API level "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 685
    const-string v0, "Header"

    const-string v1, "Protocol Operations"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 686
    const-string v0, "Document metadata, containing the version, original size & density, capabilities mask"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 689
    const-string v0, "MAJOR_VERSION"

    const-string v1, "Major version"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 690
    const-string v0, "MINOR_VERSION"

    const-string v3, "Minor version"

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 691
    const-string v0, "PATCH_VERSION"

    const-string v3, "Patch version"

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 692
    const-string v0, "WIDTH"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 693
    const-string v0, "HEIGHT"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 695
    const/16 v0, 0x8

    const-string v2, "CAPABILITIES"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 696
    return-void
.end method

.method private blacklist getFloat(IF)F
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_5

    .line 222
    return p2

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 225
    if-eqz p1, :cond_14

    .line 226
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 228
    :cond_14
    return p2
.end method

.method private blacklist getInt(II)I
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_5

    .line 198
    return p2

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 201
    if-eqz p1, :cond_14

    .line 202
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 204
    :cond_14
    return p2
.end method

.method private static blacklist getInt([S[Ljava/lang/Object;I)I
    .registers 6

    .line 371
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 372
    aget-short v2, p0, v1

    if-ne v2, p2, :cond_19

    .line 373
    aget-object p0, p1, v1

    instance-of p0, p0, Ljava/lang/Integer;

    if-eqz p0, :cond_18

    .line 374
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 376
    :cond_18
    return v0

    .line 371
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 379
    :cond_1c
    return v0
.end method

.method public static blacklist id()I
    .registers 1

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 303
    const-string v0, "Header"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 521
    const/high16 v0, 0x10000

    if-ge v1, v0, :cond_28

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 523
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 525
    nop

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v7

    .line 527
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIFJ)V

    .line 536
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    goto :goto_55

    .line 538
    :cond_28
    const v0, 0xffff

    and-int/2addr v0, v1

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 540
    const/16 v4, 0x3e8

    if-gt v1, v4, :cond_56

    .line 543
    new-array v4, v1, [S

    .line 544
    new-array v5, v1, [Ljava/lang/Object;

    .line 545
    invoke-static {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    .line 546
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    .line 547
    const/4 v6, 0x0

    :goto_41
    if-ge v6, v1, :cond_4d

    .line 548
    aget-short v7, v4, v6

    aget-object v8, v5, v6

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 547
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 550
    :cond_4d
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 551
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :goto_55
    return-void

    .line 541
    :cond_56
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid table size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist readApiLevel(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I
    .registers 5

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getIndex()I

    move-result v0

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v1

    .line 482
    const/4 v2, -0x1

    if-eqz v1, :cond_c

    .line 483
    return v2

    .line 485
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 487
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setIndex(I)V

    .line 488
    const/high16 p0, 0x10000

    if-lt v1, p0, :cond_27

    .line 489
    const/high16 p0, -0x10000

    and-int/2addr p0, v1

    const/high16 v0, 0x48c0000

    if-eq p0, v0, :cond_23

    .line 490
    return v2

    .line 492
    :cond_23
    const p0, 0xffff

    and-int/2addr v1, p0

    .line 494
    :cond_27
    const/4 p0, 0x1

    if-ne v1, p0, :cond_2e

    if-ne v3, p0, :cond_2e

    .line 495
    const/4 p0, 0x7

    return p0

    .line 497
    :cond_2e
    const/4 v0, 0x6

    if-ne v1, p0, :cond_34

    if-nez v3, :cond_34

    .line 498
    return v0

    .line 500
    :cond_34
    if-nez v1, :cond_3a

    const/4 p0, 0x3

    if-gt v3, p0, :cond_3a

    .line 502
    return v0

    .line 504
    :cond_3a
    if-nez v1, :cond_3f

    if-nez v3, :cond_3f

    .line 506
    return v0

    .line 508
    :cond_3f
    return v2
.end method

.method public static blacklist readDirect(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)Lcom/android/internal/widget/remotecompose/core/operations/Header;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getIndex()I

    move-result v1

    .line 564
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a8

    .line 566
    const/4 v2, 0x0

    const-string v3, " != "

    if-nez v0, :cond_87

    .line 569
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 570
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    .line 573
    const/high16 v0, 0x10000

    if-ge v5, v0, :cond_35

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 577
    nop

    .line 578
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v11

    .line 579
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIFJ)V
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_a8

    .line 608
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setIndex(I)V

    .line 579
    return-object v4

    .line 589
    :cond_35
    const/high16 v0, -0x10000

    and-int/2addr v0, v5

    const/high16 v4, 0x48c0000

    if-ne v0, v4, :cond_66

    .line 596
    const v0, 0xffff

    and-int/2addr v0, v5

    .line 597
    :try_start_40
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 598
    new-array v4, v3, [S

    .line 599
    new-array v5, v3, [Ljava/lang/Object;

    .line 600
    invoke-static {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    .line 601
    new-instance v8, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    .line 602
    nop

    :goto_51
    if-ge v2, v3, :cond_5d

    .line 603
    aget-short v9, v4, v2

    aget-object v10, v5, v2

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 605
    :cond_5d
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct {v2, v0, v6, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    :try_end_62
    .catchall {:try_start_40 .. :try_end_62} :catchall_a8

    .line 608
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setIndex(I)V

    .line 605
    return-object v2

    .line 590
    :cond_66
    :try_start_66
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid header MAGIC_NUMBER "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 567
    :cond_87
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid header "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a8
    .catchall {:try_start_66 .. :try_end_a8} :catchall_a8

    .line 608
    :catchall_a8
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setIndex(I)V

    .line 609
    throw v0
.end method

.method public static blacklist readDirect(Ljava/io/InputStream;)Lcom/android/internal/widget/remotecompose/core/operations/Header;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 391
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a9

    .line 393
    const/4 v0, 0x0

    const-string v2, " != "

    if-nez p0, :cond_88

    .line 396
    :try_start_e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 397
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 398
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 400
    const/high16 p0, 0x10000

    if-ge v4, p0, :cond_36

    .line 401
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 402
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 404
    nop

    .line 405
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 406
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIFJ)V
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_a9

    .line 435
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 406
    return-object v3

    .line 416
    :cond_36
    const/high16 p0, -0x10000

    and-int/2addr p0, v4

    const/high16 v3, 0x48c0000

    if-ne p0, v3, :cond_67

    .line 423
    const p0, 0xffff

    and-int/2addr p0, v4

    .line 424
    :try_start_41
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 425
    new-array v3, v2, [S

    .line 426
    new-array v4, v2, [Ljava/lang/Object;

    .line 427
    invoke-static {v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readMap(Ljava/io/DataInputStream;[S[Ljava/lang/Object;)V

    .line 428
    new-instance v7, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v7}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    .line 429
    nop

    :goto_52
    if-ge v0, v2, :cond_5e

    .line 430
    aget-short v8, v3, v0

    aget-object v9, v4, v0

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 432
    :cond_5e
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    :try_end_63
    .catchall {:try_start_41 .. :try_end_63} :catchall_a9

    .line 435
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 432
    return-object v0

    .line 417
    :cond_67
    :try_start_67
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid header MAGIC_NUMBER "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_88
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid header "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a9
    .catchall {:try_start_67 .. :try_end_a9} :catchall_a9

    .line 435
    :catchall_a9
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 436
    throw p0
.end method

.method private static blacklist readMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .registers 6

    .line 620
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_42

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v1

    int-to-short v1, v1

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    .line 623
    shr-int/lit8 v2, v1, 0xa

    .line 624
    and-int/lit8 v1, v1, 0x3f

    int-to-short v1, v1

    aput-short v1, p1, v0

    .line 625
    packed-switch v2, :pswitch_data_44

    goto :goto_3f

    .line 636
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    goto :goto_3f

    .line 633
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    .line 634
    goto :goto_3f

    .line 630
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v0

    .line 631
    goto :goto_3f

    .line 627
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 628
    nop

    .line 620
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_34
        :pswitch_29
        :pswitch_1e
        :pswitch_17
    .end packed-switch
.end method

.method private static blacklist readMap(Ljava/io/DataInputStream;[S[Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4b

    .line 449
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 450
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    .line 451
    shr-int/lit8 v2, v1, 0xa

    .line 452
    and-int/lit8 v1, v1, 0x3f

    int-to-short v1, v1

    aput-short v1, p1, v0

    .line 453
    packed-switch v2, :pswitch_data_4c

    goto :goto_48

    .line 464
    :pswitch_16
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 465
    new-array v1, v1, [B

    .line 466
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 467
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v2, p2, v0

    goto :goto_48

    .line 461
    :pswitch_27
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    .line 462
    goto :goto_48

    .line 458
    :pswitch_32
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v0

    .line 459
    goto :goto_48

    .line 455
    :pswitch_3d
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 456
    nop

    .line 448
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    :cond_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_16
    .end packed-switch
.end method

.method private static blacklist writeMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .registers 7

    .line 650
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_79

    .line 651
    aget-short v1, p1, v0

    .line 652
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/String;

    const/4 v3, 0x4

    if-eqz v2, :cond_24

    .line 653
    or-int/lit16 v1, v1, 0xc00

    int-to-short v1, v1

    .line 654
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 655
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/String;

    .line 656
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 657
    array-length v2, v1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 658
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 659
    goto :goto_76

    :cond_24
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3f

    .line 660
    or-int/lit8 v1, v1, 0x0

    int-to-short v1, v1

    .line 661
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 662
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 663
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    goto :goto_76

    .line 664
    :cond_3f
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_5a

    .line 665
    or-int/lit16 v1, v1, 0x400

    int-to-short v1, v1

    .line 666
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 667
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 669
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    goto :goto_76

    .line 670
    :cond_5a
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_76

    .line 671
    or-int/lit16 v1, v1, 0x800

    int-to-short v1, v1

    .line 672
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 673
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 674
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 650
    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 677
    :cond_79
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 11

    .line 280
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->header(IIIIIJLcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 288
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(S)Ljava/lang/Object;
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_6

    .line 73
    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getProfiles()I
    .registers 2

    .line 193
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProfiles:I

    return v0
.end method

.method public blacklist setVersion(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 5

    .line 704
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHostExceptionID(I)V

    .line 705
    const/16 v0, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setUpdateDoc(Z)V

    .line 706
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setVersion(III)V

    .line 707
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 252
    nop

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "HEADER v"

    const-string v2, "."

    const-string v3, ""

    if-eqz v0, :cond_75

    .line 254
    const/4 v0, 0x0

    :goto_c
    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    array-length v4, v4

    if-ge v0, v4, :cond_49

    .line 255
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    aget-short v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 256
    if-eqz v4, :cond_46

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEY_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 260
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8

    .line 246
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    .line 247
    return-void
.end method
