.class public Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
.super Ljava/lang/Object;
.source "RemoteComposeState.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;


# static fields
.field public static final blacklist BITMAP_TEXTURE_ID_OFFSET:I = 0x7d0

.field private static final blacklist MAX_DATA:I = 0x3e8

.field public static final blacklist START_ID:I = 0x2a

.field private static blacklist sMaxColors:I


# instance fields
.field blacklist mAllVarListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

.field private blacklist mColorOverride:[Z

.field private final blacklist mDataIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataOverride:[Z

.field private final blacklist mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

.field private final blacklist mFloatOverride:[Z

.field private final blacklist mIdMaps:[I

.field private final blacklist mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

.field private final blacklist mIntegerOverride:[Z

.field blacklist mLastRepaint:F

.field private blacklist mNextId:I

.field private final blacklist mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "[F>;"
        }
    .end annotation
.end field

.field private final blacklist mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPathWinding:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

.field private blacklist mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

.field blacklist mRepaintSeconds:F

.field blacklist mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 47
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    .line 50
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    .line 51
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    .line 52
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 53
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 56
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 57
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 58
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathWinding:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    .line 60
    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    .line 61
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 63
    const/16 v0, 0x3e8

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    .line 64
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    .line 65
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    .line 67
    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    .line 68
    const v1, 0x10002a

    const v2, 0x20002a

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIdMaps:[I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 466
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mAllVarListeners:Ljava/util/ArrayList;

    .line 509
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mLastRepaint:F

    .line 539
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRepaintSeconds:F

    return-void
.end method

.method private blacklist add(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 5

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 471
    if-nez v0, :cond_14

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mAllVarListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    return-void
.end method

.method private blacklist updateListeners(I)V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 354
    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    if-eqz v0, :cond_21

    .line 355
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 356
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 357
    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->markDirty()V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 360
    :cond_21
    return-void
.end method


# virtual methods
.method public blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
    .registers 5

    .line 577
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 578
    return-void
.end method

.method public blacklist cacheData(Ljava/lang/Object;)I
    .registers 5

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->createNextAvailableId()I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    return v0
.end method

.method public blacklist cacheData(Ljava/lang/Object;I)I
    .registers 5

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->createNextAvailableId(I)I

    move-result p2

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    return p2
.end method

.method public blacklist cacheData(ILjava/lang/Object;)V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public blacklist cacheFloat(F)I
    .registers 4

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->createNextAvailableId()I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 225
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 226
    return v0
.end method

.method public blacklist cacheFloat(IF)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 232
    return-void
.end method

.method public blacklist cacheInteger(I)I
    .registers 4

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->createNextAvailableId()I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 271
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float p1, p1

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 272
    return v0
.end method

.method public blacklist clearColorOverride()V
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 381
    return-void
.end method

.method public blacklist clearDataOverride(I)V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 390
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 391
    return-void
.end method

.method public blacklist clearFloatOverride(I)V
    .registers 4

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 410
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 411
    return-void
.end method

.method public blacklist clearIntegerOverride(I)V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 400
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 401
    return-void
.end method

.method public blacklist containsId(I)Z
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public blacklist createNextAvailableId()I
    .registers 3

    .line 441
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    return v0
.end method

.method public blacklist createNextAvailableId(I)I
    .registers 5

    .line 451
    if-nez p1, :cond_9

    .line 452
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    return p1

    .line 454
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIdMaps:[I

    aget v1, v0, p1

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, p1

    return v1
.end method

.method public blacklist dataGetId(Ljava/lang/Object;)I
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 97
    if-nez p1, :cond_c

    .line 98
    const/4 p1, -0x1

    return p1

    .line 100
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist getColor(I)I
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result p1

    return p1
.end method

.method public blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    return-object p1
.end method

.method public blacklist getFloat(I)F
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result p1

    return p1
.end method

.method public blacklist getFloatValue(II)F
    .registers 5

    .line 582
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    .line 583
    if-eqz p1, :cond_13

    .line 584
    invoke-interface {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloatValue(I)F

    move-result p1

    return p1

    .line 586
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getFloats(I)[F
    .registers 4

    .line 591
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    .line 592
    if-eqz p1, :cond_13

    .line 593
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloats()[F

    move-result-object p1

    return-object p1

    .line 595
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getFromId(I)Ljava/lang/Object;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getId(II)I
    .registers 5

    .line 600
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    .line 601
    if-eqz p1, :cond_13

    .line 602
    invoke-interface {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getId(I)I

    move-result p1

    return p1

    .line 604
    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getInteger(I)I
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result p1

    return p1
.end method

.method public blacklist getListLength(I)I
    .registers 4

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    .line 630
    if-eqz p1, :cond_13

    .line 631
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getLength()I

    move-result p1

    return p1

    .line 633
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getListeners(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public blacklist getObject(I)Ljava/lang/Object;
    .registers 3

    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getOpsToUpdate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;J)I
    .registers 6

    .line 519
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 520
    return v0

    .line 522
    :cond_a
    nop

    .line 523
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRepaintSeconds:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 524
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRepaintSeconds:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 525
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRepaintSeconds:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mLastRepaint:F

    goto :goto_21

    .line 523
    :cond_1e
    const p1, 0x7fffffff

    .line 527
    :goto_21
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 528
    const-wide/16 v0, 0x3e8

    rem-long/2addr p2, v0

    long-to-int p2, p2

    .line 529
    rsub-int p2, p2, 0x3ea

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 531
    :cond_35
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 532
    const-wide/32 v0, 0xea60

    rem-long/2addr p2, v0

    long-to-int p2, p2

    .line 533
    const p3, 0xea62

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 536
    :cond_4c
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getPath(I)Ljava/lang/Object;
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getPathData(I)[F
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    return-object p1
.end method

.method public blacklist getPathWinding(I)I
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathWinding:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result p1

    return p1
.end method

.method public blacklist hasListener(I)Z
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public blacklist listenToVar(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 3

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->add(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 487
    return-void
.end method

.method public blacklist markWritten(I)V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-void
.end method

.method public blacklist overrideColor(II)V
    .registers 5

    .line 369
    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    if-lt p1, v0, :cond_14

    .line 370
    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    .line 373
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 375
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 376
    return-void
.end method

.method public blacklist overrideData(ILjava/lang/Object;)V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 212
    if-eq v0, p2, :cond_23

    .line 213
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 219
    :cond_23
    return-void
.end method

.method public blacklist overrideFloat(IF)V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    .line 254
    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1d

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 257
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    .line 258
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 260
    :cond_1d
    return-void
.end method

.method public blacklist overrideInteger(II)V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    .line 300
    if-eq v0, p2, :cond_1b

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 303
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    .line 304
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 306
    :cond_1b
    return-void
.end method

.method public blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
    .registers 4

    .line 614
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 615
    return-void
.end method

.method public blacklist putPath(ILjava/lang/Object;)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public blacklist putPathData(I[F)V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->remove(I)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public blacklist putPathWinding(II)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathWinding:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 202
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->clear()V

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 433
    return-void
.end method

.method public blacklist setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 642
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 643
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->clearLastOpCount()V

    .line 644
    return-void
.end method

.method public blacklist setNextId(I)V
    .registers 2

    .line 463
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    .line 464
    return-void
.end method

.method public blacklist setWindowHeight(F)V
    .registers 3

    .line 567
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    .line 568
    return-void
.end method

.method public blacklist setWindowWidth(F)V
    .registers 3

    .line 558
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    .line 559
    return-void
.end method

.method public blacklist updateColor(II)V
    .registers 4

    .line 345
    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->sMaxColors:I

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_b

    .line 346
    return-void

    .line 348
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 349
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 350
    return-void
.end method

.method public blacklist updateData(ILjava/lang/Object;)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_24

    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 135
    if-eq v0, p2, :cond_24

    .line 136
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 142
    :cond_24
    return-void
.end method

.method public blacklist updateFloat(IF)V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1e

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    .line 238
    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1e

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 244
    :cond_1e
    return-void
.end method

.method public blacklist updateInteger(II)V
    .registers 5

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1c

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    .line 284
    if-eq v0, p2, :cond_1c

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 287
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 290
    :cond_1c
    return-void
.end method

.method public blacklist updateObject(ILjava/lang/Object;)V
    .registers 4

    .line 653
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 654
    return-void
.end method

.method public blacklist wakeIn(F)V
    .registers 3

    .line 547
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mLastRepaint:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRepaintSeconds:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_16

    .line 548
    :cond_14
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRepaintSeconds:F

    .line 550
    :cond_16
    return-void
.end method

.method public blacklist wasNotWritten(I)Z
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
