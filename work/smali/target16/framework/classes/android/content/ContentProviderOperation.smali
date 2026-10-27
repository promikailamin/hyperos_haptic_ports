.class public Landroid/content/ContentProviderOperation;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderOperation$Builder;,
        Landroid/content/ContentProviderOperation$BackReference;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentProviderOperation"

.field public static final greylist-max-o TYPE_ASSERT:I = 0x4

.field public static final blacklist TYPE_CALL:I = 0x5

.field public static final greylist TYPE_DELETE:I = 0x3

.field public static final greylist TYPE_INSERT:I = 0x1

.field public static final greylist TYPE_UPDATE:I = 0x2


# instance fields
.field private final blacklist mArg:Ljava/lang/String;

.field private final blacklist mExceptionAllowed:Z

.field private final greylist-max-o mExpectedCount:Ljava/lang/Integer;

.field private final blacklist mExtras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMethod:Ljava/lang/String;

.field private final greylist mSelection:Ljava/lang/String;

.field private final blacklist mSelectionArgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mType:I

.field private final greylist mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mYieldAllowed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 568
    new-instance v0, Landroid/content/ContentProviderOperation$1;

    invoke-direct {v0}, Landroid/content/ContentProviderOperation$1;-><init>()V

    sput-object v0, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmType(Landroid/content/ContentProviderOperation$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    .line 79
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmUri(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    .line 80
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmMethod(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmArg(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmValues(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    .line 83
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExtras(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    .line 84
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmSelection(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmSelectionArgs(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    .line 86
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExpectedCount(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    .line 87
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmYieldAllowed(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    .line 88
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExceptionAllowed(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ContentProviderOperation;Landroid/net/Uri;)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iget v0, p1, Landroid/content/ContentProviderOperation;->mType:I

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    .line 120
    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    .line 121
    iget-object p2, p1, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    .line 122
    iget-object p2, p1, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    .line 123
    iget-object p2, p1, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    .line 124
    iget-object p2, p1, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    .line 125
    iget-object p2, p1, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    .line 126
    iget-object p2, p1, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    .line 127
    iget-object p2, p1, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    .line 128
    iget-boolean p2, p1, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    iput-boolean p2, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    .line 129
    iget-boolean p1, p1, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    iput-boolean p1, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    .line 130
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    .line 93
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    move-object v0, v1

    :goto_20
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, v1

    :goto_2e
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    const/4 v2, -0x1

    if-eq v0, v2, :cond_44

    .line 98
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    .line 99
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;Landroid/os/Parcel$ClassLoaderProvider;)V

    goto :goto_46

    .line 101
    :cond_44
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    .line 103
    :goto_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    if-eq v0, v2, :cond_59

    .line 105
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    .line 106
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;Landroid/os/Parcel$ClassLoaderProvider;)V

    goto :goto_5b

    .line 108
    :cond_59
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    .line 110
    :goto_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    :cond_66
    move-object v0, v1

    :goto_67
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    .line 111
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_7f
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8b

    move v0, v1

    goto :goto_8c

    :cond_8b
    move v0, v2

    :goto_8c
    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_95

    goto :goto_96

    :cond_95
    move v1, v2

    :goto_96
    iput-boolean v1, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/ContentProviderOperation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 363
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveExtrasBackReferences([Landroid/content/ContentProviderResult;I)Landroid/os/Bundle;

    move-result-object v1

    .line 364
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 365
    if-eqz v1, :cond_f

    goto :goto_14

    :cond_f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 366
    :goto_14
    const-string v2, "android:query-arg-sql-selection"

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_1b
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v2, :cond_31

    .line 369
    if-eqz v1, :cond_22

    goto :goto_27

    :cond_22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 370
    :goto_27
    nop

    .line 371
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;

    move-result-object p2

    .line 370
    const-string p3, "android:query-arg-sql-selection-args"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 374
    :cond_31
    iget p2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_65

    .line 375
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    .line 376
    if-eqz p1, :cond_44

    .line 377
    new-instance p2, Landroid/content/ContentProviderResult;

    invoke-direct {p2, p1}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;)V

    return-object p2

    .line 379
    :cond_44
    new-instance p1, Landroid/content/OperationApplicationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Insert into "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " returned no result"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 382
    :cond_65
    iget p2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 p3, 0x5

    if-ne p2, p3, :cond_7e

    .line 383
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 384
    new-instance p2, Landroid/content/ContentProviderResult;

    invoke-direct {p2, p1}, Landroid/content/ContentProviderResult;-><init>(Landroid/os/Bundle;)V

    return-object p2

    .line 388
    :cond_7e
    iget p2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_8b

    .line 389
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p1

    goto/16 :goto_12f

    .line 390
    :cond_8b
    iget p2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_98

    .line 391
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p1

    goto/16 :goto_12f

    .line 392
    :cond_98
    iget p2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_16c

    .line 394
    nop

    .line 395
    const/4 p2, 0x0

    if-eqz v0, :cond_d1

    .line 397
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    goto :goto_ae

    .line 401
    :cond_c4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    goto :goto_d2

    .line 395
    :cond_d1
    move-object p3, p2

    .line 403
    :goto_d2
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, p3, v1, p2}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 405
    :try_start_d8
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 406
    if-eqz p3, :cond_12a

    .line 407
    :cond_de
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 408
    const/4 v1, 0x0

    :goto_e5
    array-length v2, p3

    if-ge v1, v2, :cond_de

    .line 409
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    aget-object v3, p3, v1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    .line 413
    :cond_fb
    new-instance p2, Landroid/content/OperationApplicationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found value "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for column "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object p3, p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_12a
    .catchall {:try_start_d8 .. :try_end_12a} :catchall_167

    .line 421
    :cond_12a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 422
    nop

    .line 423
    move p1, p2

    .line 427
    :goto_12f
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz p2, :cond_161

    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_13c

    goto :goto_161

    .line 428
    :cond_13c
    new-instance p2, Landroid/content/OperationApplicationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " rows but actual "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 432
    :cond_161
    :goto_161
    new-instance p2, Landroid/content/ContentProviderResult;

    invoke-direct {p2, p1}, Landroid/content/ContentProviderResult;-><init>(I)V

    return-object p2

    .line 421
    :catchall_167
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 422
    throw p2

    .line 424
    :cond_16c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad type, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static whitelist newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    .line 213
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation-IA;)V

    return-object v0
.end method

.method public static whitelist newCall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 9

    .line 224
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x5

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderOperation-IA;)V

    return-object v0
.end method

.method public static whitelist newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    .line 204
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation-IA;)V

    return-object v0
.end method

.method public static whitelist newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    .line 184
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation-IA;)V

    return-object v0
.end method

.method public static whitelist newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    .line 194
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation-IA;)V

    return-object v0
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 1

    .line 523
    packed-switch p0, :pswitch_data_18

    .line 529
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 528
    :pswitch_8
    const-string p0, "call"

    return-object p0

    .line 527
    :pswitch_b
    const-string p0, "assert"

    return-object p0

    .line 526
    :pswitch_e
    const-string p0, "delete"

    return-object p0

    .line 525
    :pswitch_11
    const-string/jumbo p0, "update"

    return-object p0

    .line 524
    :pswitch_15
    const-string p0, "insert"

    return-object p0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 345
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    if-eqz v0, :cond_10

    .line 347
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProviderOperation;->applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    .line 348
    :catch_9
    move-exception p1

    .line 349
    new-instance p2, Landroid/content/ContentProviderResult;

    invoke-direct {p2, p1}, Landroid/content/ContentProviderResult;-><init>(Ljava/lang/Throwable;)V

    return-object p2

    .line 352
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProviderOperation;->applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getType()I
    .registers 2

    .line 256
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    return v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isAssertQuery()Z
    .registers 3

    .line 295
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isCall()Z
    .registers 3

    .line 305
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isDelete()Z
    .registers 3

    .line 276
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isExceptionAllowed()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return v0
.end method

.method public whitelist isInsert()Z
    .registers 3

    .line 266
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist isReadOperation()Z
    .registers 3

    .line 325
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isUpdate()Z
    .registers 3

    .line 286
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isWriteOperation()Z
    .registers 4

    .line 316
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_11

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    if-eq v0, v2, :cond_11

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :cond_11
    :goto_11
    return v2
.end method

.method public whitelist isYieldAllowed()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    return v0
.end method

.method public whitelist resolveExtrasBackReferences([Landroid/content/ContentProviderResult;I)Landroid/os/Bundle;
    .registers 7

    .line 471
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    if-eqz v0, :cond_33

    .line 472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 474
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 476
    instance-of v3, v2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v3, :cond_23

    .line 477
    check-cast v2, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_24

    .line 479
    :cond_23
    nop

    .line 481
    :goto_24
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 483
    :cond_32
    return-object v0

    .line 485
    :cond_33
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;
    .registers 7

    .line 498
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v0, :cond_4c

    .line 499
    nop

    .line 500
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_8
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 501
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 504
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 505
    nop

    :goto_22
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 506
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 508
    instance-of v3, v2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v3, :cond_3b

    .line 509
    check-cast v2, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3c

    .line 511
    :cond_3b
    nop

    .line 513
    :goto_3c
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 515
    :cond_4b
    return-object v1

    .line 517
    :cond_4c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;
    .registers 7

    .line 444
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_33

    .line 445
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 446
    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 447
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 449
    instance-of v3, v2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v3, :cond_23

    .line 450
    check-cast v2, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_24

    .line 452
    :cond_23
    nop

    .line 454
    :goto_24
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 456
    :cond_32
    return-object v0

    .line 458
    :cond_33
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentProviderOperation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_31

    .line 538
    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    :cond_31
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    if-eqz v1, :cond_45

    .line 541
    const-string/jumbo v1, "values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    :cond_45
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v1, :cond_59

    .line 544
    const-string/jumbo v1, "selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    :cond_59
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v1, :cond_6d

    .line 547
    const-string/jumbo v1, "selectionArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    :cond_6d
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v1, :cond_80

    .line 550
    const-string v1, "expectedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    :cond_80
    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    if-eqz v1, :cond_8a

    .line 553
    const-string/jumbo v1, "yieldAllowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_8a
    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    if-eqz v1, :cond_93

    .line 556
    const-string v1, "exceptionAllowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 134
    iget p2, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 136
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_19

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_1c

    .line 140
    :cond_19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_1c
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    if-eqz p2, :cond_29

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_2c

    .line 146
    :cond_29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :goto_2c
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    const/4 v2, -0x1

    if-eqz p2, :cond_40

    .line 149
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArrayMap(Landroid/util/ArrayMap;)V

    goto :goto_43

    .line 152
    :cond_40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    :goto_43
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    if-eqz p2, :cond_56

    .line 155
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArrayMap(Landroid/util/ArrayMap;)V

    goto :goto_59

    .line 158
    :cond_56
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    :goto_59
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz p2, :cond_66

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_69

    .line 164
    :cond_66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :goto_69
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 167
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz p2, :cond_7f

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object p2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_82

    .line 171
    :cond_7f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    :goto_82
    iget-boolean p2, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-boolean p2, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
