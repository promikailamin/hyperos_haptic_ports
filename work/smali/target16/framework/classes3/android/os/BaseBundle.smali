.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"

# interfaces
.implements Landroid/os/Parcel$ClassLoaderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseBundle$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final greylist-max-o BUNDLE_MAGIC:I = 0x4c444e42

.field private static final greylist-max-o BUNDLE_MAGIC_NATIVE:I = 0x4c444e44

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o FLAG_DEFUSABLE:I = 0x1

.field private static final greylist-max-o LOG_DEFUSABLE:Z = false

.field protected static final greylist-max-o TAG:Ljava/lang/String; = "Bundle"

.field private static volatile greylist-max-o sShouldDefuse:Z


# instance fields
.field private greylist-max-o mClassLoader:Ljava/lang/ClassLoader;

.field public greylist-max-o mFlags:I

.field private blacklist mHasIntent:Z

.field private blacklist mLazyValues:I

.field greylist mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mOwnsLazyValues:Z

.field private greylist-max-o mParcelledByNative:Z

.field volatile greylist mParcelledData:Landroid/os/Parcel;

.field private blacklist mWeakParcelledData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 167
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 168
    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .registers 4

    .line 202
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 203
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/BaseBundle;)V
    .registers 3

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 213
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/BaseBundle;Z)V
    .registers 10

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 114
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 137
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 147
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 224
    monitor-enter p1

    .line 225
    :try_start_13
    iget-object v2, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v2, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 227
    iget-object v2, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v2, :cond_52

    .line 228
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 229
    iput-boolean v1, p1, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 231
    if-nez p2, :cond_2b

    .line 232
    new-instance p2, Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {p2, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object p2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_54

    .line 234
    :cond_2b
    iget-object p2, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 235
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 236
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 237
    move v3, v1

    :goto_39
    if-ge v3, v2, :cond_51

    .line 238
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 240
    :cond_51
    goto :goto_54

    .line 242
    :cond_52
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 246
    :goto_54
    iget-object p2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz p2, :cond_7a

    .line 247
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result p2

    if-eqz p2, :cond_63

    .line 248
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    .line 249
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    goto :goto_7d

    .line 251
    :cond_63
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 252
    iget-object p2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 253
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    .line 252
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 255
    iget-boolean p2, p1, Landroid/os/BaseBundle;->mParcelledByNative:Z

    iput-boolean p2, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    goto :goto_7d

    .line 258
    :cond_7a
    nop

    .line 259
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 263
    :goto_7d
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 264
    iget-boolean p2, p1, Landroid/os/BaseBundle;->mHasIntent:Z

    iput-boolean p2, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 265
    monitor-exit p1

    .line 266
    return-void

    .line 265
    :catchall_85
    move-exception p2

    monitor-exit p1
    :try_end_87
    .catchall {:try_start_13 .. :try_end_87} :catchall_85

    throw p2
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 114
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 137
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 147
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 177
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 178
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .registers 5

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 114
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 137
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 147
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 182
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ClassLoader;)V
    .registers 3

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 193
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ClassLoader;I)V
    .registers 5

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 114
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 137
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 147
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 158
    if-lez p2, :cond_1a

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    goto :goto_1f

    :cond_1a
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :goto_1f
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 160
    if-nez p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_2b
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 161
    return-void
.end method

.method private greylist-max-o deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 695
    if-nez p1, :cond_4

    .line 696
    const/4 p1, 0x0

    return-object p1

    .line 698
    :cond_4
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_f

    .line 699
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 700
    :cond_f
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1a

    .line 701
    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1

    .line 702
    :cond_1a
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 703
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;->deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 704
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 705
    instance-of v0, p1, [I

    if-eqz v0, :cond_3a

    .line 706
    check-cast p1, [I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 707
    :cond_3a
    instance-of v0, p1, [J

    if-eqz v0, :cond_45

    .line 708
    check-cast p1, [J

    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 709
    :cond_45
    instance-of v0, p1, [F

    if-eqz v0, :cond_50

    .line 710
    check-cast p1, [F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 711
    :cond_50
    instance-of v0, p1, [D

    if-eqz v0, :cond_5b

    .line 712
    check-cast p1, [D

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 713
    :cond_5b
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_66

    .line 714
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 715
    :cond_66
    instance-of v0, p1, [B

    if-eqz v0, :cond_71

    .line 716
    check-cast p1, [B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 717
    :cond_71
    instance-of v0, p1, [S

    if-eqz v0, :cond_7c

    .line 718
    check-cast p1, [S

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 719
    :cond_7c
    instance-of v0, p1, [C

    if-eqz v0, :cond_87

    .line 720
    check-cast p1, [C

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 723
    :cond_87
    return-object p1
.end method

.method private greylist-max-o deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6

    .line 727
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 728
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 729
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1a

    .line 730
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 732
    :cond_1a
    return-object v1
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V
    .registers 5

    .line 1995
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1996
    if-nez p1, :cond_b

    .line 1997
    const-string p1, "[null]"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1998
    return-void

    .line 2000
    :cond_b
    invoke-virtual {p1}, Landroid/os/BaseBundle;->getItemwiseMap()Landroid/util/ArrayMap;

    move-result-object p1

    .line 2001
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 2002
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2001
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2004
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2005
    return-void
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V
    .registers 5

    .line 1982
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1983
    if-nez p1, :cond_b

    .line 1984
    const-string p1, "[null]"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1985
    return-void

    .line 1987
    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 1988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1987
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1990
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1991
    return-void
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 1964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1965
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1970
    const/16 v0, 0x400

    if-le v1, v0, :cond_45

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " [size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1972
    instance-of p1, p2, Landroid/os/BaseBundle;

    if-eqz p1, :cond_3c

    .line 1973
    check-cast p2, Landroid/os/BaseBundle;

    invoke-static {p0, p2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    goto :goto_45

    .line 1974
    :cond_3c
    instance-of p1, p2, Landroid/util/SparseArray;

    if-eqz p1, :cond_45

    .line 1975
    check-cast p2, Landroid/util/SparseArray;

    invoke-static {p0, p2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V

    .line 1978
    :cond_45
    :goto_45
    return-void
.end method

.method private greylist-max-o initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V
    .registers 15

    .line 484
    invoke-static {p1}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    .line 489
    iget-object p1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez p1, :cond_15

    .line 490
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_1a

    .line 492
    :cond_15
    iget-object p1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->erase()V

    .line 494
    :goto_1a
    iput-boolean v3, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 495
    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 496
    return-void

    .line 499
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 504
    if-gez v6, :cond_26

    .line 505
    return-void

    .line 507
    :cond_26
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 508
    if-nez v0, :cond_31

    .line 509
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v6}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v5, v0

    goto :goto_38

    .line 511
    :cond_31
    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    .line 512
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    move-object v5, v0

    .line 514
    :goto_38
    filled-new-array {v3}, [I

    move-result-object v10

    .line 516
    if-nez p3, :cond_40

    move v7, v1

    goto :goto_41

    :cond_40
    move v7, v3

    :goto_41
    move-object v9, p0

    move-object v4, p1

    move v8, p2

    :try_start_44
    invoke-virtual/range {v4 .. v10}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;IZZLandroid/os/Parcel$ClassLoaderProvider;[I)V
    :try_end_47
    .catch Landroid/os/BadParcelableException; {:try_start_44 .. :try_end_47} :catch_68
    .catchall {:try_start_44 .. :try_end_47} :catchall_65

    .line 533
    iput-object v2, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 534
    if-eqz v8, :cond_5a

    .line 535
    aget p1, v10, v3

    if-nez p1, :cond_53

    .line 537
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_5a

    .line 539
    :cond_53
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 543
    :cond_5a
    :goto_5a
    aget p1, v10, v3

    :goto_5c
    iput p1, v9, Landroid/os/BaseBundle;->mLazyValues:I

    .line 544
    iput-boolean v3, v9, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 545
    iput-object v5, v9, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 547
    iput-object v2, v9, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 548
    goto :goto_9e

    .line 533
    :catchall_65
    move-exception v0

    move-object p1, v0

    goto :goto_a1

    .line 518
    :catch_68
    move-exception v0

    move-object p1, v0

    .line 519
    :try_start_6a
    sget-boolean p2, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz p2, :cond_a0

    .line 520
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->wtfBundleDefuse()Z

    move-result p2
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_65

    const-string p3, "Failed to parse Bundle, but defusing quietly"

    const-string v0, "Bundle"

    if-eqz p2, :cond_7c

    .line 521
    :try_start_78
    invoke-static {v0, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7f

    .line 523
    :cond_7c
    invoke-static {v0, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    :goto_7f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->deprecateBundleDefuse()Z

    move-result p2

    if-nez p2, :cond_9f

    .line 528
    invoke-virtual {v5}, Landroid/util/ArrayMap;->erase()V
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_65

    .line 533
    iput-object v2, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 534
    if-eqz v8, :cond_9b

    .line 535
    aget p1, v10, v3

    if-nez p1, :cond_94

    .line 537
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_9b

    .line 539
    :cond_94
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 543
    :cond_9b
    :goto_9b
    aget p1, v10, v3

    goto :goto_5c

    .line 553
    :goto_9e
    return-void

    .line 526
    :cond_9f
    :try_start_9f
    throw p1

    .line 530
    :cond_a0
    throw p1
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_65

    .line 533
    :goto_a1
    iput-object v2, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 534
    if-eqz v8, :cond_b4

    .line 535
    aget p2, v10, v3

    if-nez p2, :cond_ad

    .line 537
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_b4

    .line 539
    :cond_ad
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 543
    :cond_b4
    :goto_b4
    aget p2, v10, v3

    iput p2, v9, Landroid/os/BaseBundle;->mLazyValues:I

    .line 544
    iput-boolean v3, v9, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 545
    iput-object v5, v9, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 547
    iput-object v2, v9, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 548
    throw p1
.end method

.method private static greylist-max-o isEmptyParcel(Landroid/os/Parcel;)Z
    .registers 2

    .line 574
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static greylist-max-o kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .registers 2

    .line 641
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private greylist-max-o readFromParcelInner(Landroid/os/Parcel;I)V
    .registers 8

    .line 1912
    if-ltz p2, :cond_9f

    .line 1914
    const/4 v0, 0x0

    if-nez p2, :cond_c

    .line 1915
    iput-boolean v0, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 1917
    sget-object p1, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object p1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1918
    return-void

    .line 1919
    :cond_c
    rem-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_86

    .line 1923
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1924
    const v2, 0x4c444e42    # 5.146036E7f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v0

    .line 1925
    :goto_1d
    const v4, 0x4c444e44

    if-ne v1, v4, :cond_24

    move v4, v3

    goto :goto_25

    :cond_24
    move v4, v0

    .line 1926
    :goto_25
    if-nez v2, :cond_47

    if-eqz v4, :cond_2a

    goto :goto_47

    .line 1927
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad magic number for Bundle: 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1928
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1931
    :cond_47
    :goto_47
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1936
    monitor-enter p0

    .line 1937
    :try_start_4e
    iput-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 1938
    invoke-direct {p0, p1, v0, v4}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V

    .line 1939
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_5b

    .line 1940
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 1941
    return-void

    .line 1939
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1

    .line 1945
    :cond_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1946
    invoke-static {v1, p2}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1949
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1950
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1951
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->adoptClassCookies(Landroid/os/Parcel;)V

    .line 1954
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1956
    iput-boolean v3, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 1957
    iput-boolean v4, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 1958
    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1959
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 1960
    return-void

    .line 1920
    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle length is not aligned by 4: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1913
    :cond_9f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad length in parcel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o setShouldDefuse(Z)V
    .registers 1

    .line 92
    sput-boolean p0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 93
    return-void
.end method

.method private varargs blacklist unwrapLazyValueFromMapLocked(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 445
    instance-of v1, v0, Ljava/util/function/BiFunction;

    if-eqz v1, :cond_9b

    .line 447
    const/4 v1, 0x0

    :try_start_b
    check-cast v0, Ljava/util/function/BiFunction;

    invoke-interface {v0, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/BadParcelableException; {:try_start_b .. :try_end_11} :catch_40

    .line 464
    nop

    .line 465
    iget-object p2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget p1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 467
    iget-boolean p1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    if-eqz p1, :cond_9b

    .line 468
    iget p1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    if-ltz p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    const-string p1, "Lazy values ref count below 0"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 472
    iget-object p1, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcel;

    .line 473
    iget p2, p0, Landroid/os/BaseBundle;->mLazyValues:I

    if-nez p2, :cond_9b

    if-eqz p1, :cond_9b

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->destroy()V

    .line 475
    iput-object v1, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    goto :goto_9b

    .line 448
    :catch_40
    move-exception p2

    .line 449
    sget-boolean p3, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz p3, :cond_9a

    .line 450
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->wtfBundleDefuse()Z

    move-result p3

    const-string v0, ", returning null."

    const-string v2, "Failed to parse item "

    const-string v3, "Bundle"

    if-eqz p3, :cond_72

    .line 451
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_92

    .line 454
    :cond_72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    :goto_92
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->deprecateBundleDefuse()Z

    move-result p1

    if-nez p1, :cond_99

    .line 460
    return-object v1

    .line 458
    :cond_99
    throw p2

    .line 462
    :cond_9a
    throw p2

    .line 479
    :cond_9b
    :goto_9b
    return-object v0
.end method


# virtual methods
.method public whitelist clear()V
    .registers 2

    .line 680
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 681
    iget-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    .line 682
    iget-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    .line 683
    if-eqz v0, :cond_18

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->destroy()V

    .line 688
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 691
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 692
    return-void
.end method

.method public whitelist containsKey(Ljava/lang/String;)Z
    .registers 3

    .line 743
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 744
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 759
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 760
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method blacklist get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 782
    :try_start_3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_d} :catch_e
    .catch Landroid/os/BadTypeParcelableException; {:try_start_3 .. :try_end_d} :catch_e

    return-object p1

    .line 783
    :catch_e
    move-exception v0

    .line 784
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 785
    const/4 p1, 0x0

    return-object p1
.end method

.method blacklist getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1570
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1572
    :try_start_3
    const-class v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_17} :catch_18
    .catch Landroid/os/BadTypeParcelableException; {:try_start_3 .. :try_end_17} :catch_18

    return-object v0

    .line 1573
    :catch_18
    move-exception v0

    .line 1574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayList<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ">"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1575
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getBoolean(Ljava/lang/String;)Z
    .registers 3

    .line 1155
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 10

    .line 1199
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1200
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1201
    if-nez v3, :cond_c

    .line 1202
    return p2

    .line 1205
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1206
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1207
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1208
    return p2
.end method

.method public whitelist getBooleanArray(Ljava/lang/String;)[Z
    .registers 6

    .line 1628
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1629
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1630
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1631
    return-object v1

    .line 1634
    :cond_d
    :try_start_d
    check-cast v0, [Z
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1635
    :catch_10
    move-exception v2

    .line 1636
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1637
    return-object v1
.end method

.method greylist-max-o getByte(Ljava/lang/String;)B
    .registers 3

    .line 1220
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method greylist-max-o getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .registers 10

    .line 1233
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1234
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1235
    if-nez v3, :cond_10

    .line 1236
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1239
    :cond_10
    :try_start_10
    check-cast v3, Ljava/lang/Byte;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_13

    return-object v3

    .line 1240
    :catch_13
    move-exception v0

    move-object v6, v0

    .line 1241
    const-string v4, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1242
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o getByteArray(Ljava/lang/String;)[B
    .registers 6

    .line 1651
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1652
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1653
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1654
    return-object v1

    .line 1657
    :cond_d
    :try_start_d
    check-cast v0, [B
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1658
    :catch_10
    move-exception v2

    .line 1659
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1660
    return-object v1
.end method

.method greylist-max-o getChar(Ljava/lang/String;)C
    .registers 3

    .line 1254
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result p1

    return p1
.end method

.method greylist-max-o getChar(Ljava/lang/String;C)C
    .registers 10

    .line 1267
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1268
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1269
    if-nez v3, :cond_c

    .line 1270
    return p2

    .line 1273
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1274
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1275
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1276
    return p2
.end method

.method greylist-max-o getCharArray(Ljava/lang/String;)[C
    .registers 6

    .line 1697
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1698
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1699
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1700
    return-object v1

    .line 1703
    :cond_d
    :try_start_d
    check-cast v0, [C
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1704
    :catch_10
    move-exception v2

    .line 1705
    const-string v3, "char[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1706
    return-object v1
.end method

.method greylist-max-o getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5

    .line 1496
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1497
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1499
    :try_start_9
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b} :catch_c

    return-object v0

    .line 1500
    :catch_c
    move-exception v1

    .line 1501
    const-string v2, "CharSequence"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1502
    const/4 p1, 0x0

    return-object p1
.end method

.method greylist-max-o getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 1518
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1519
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p1

    :goto_8
    return-object p2
.end method

.method greylist-max-o getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 6

    .line 1835
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1836
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1837
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1838
    return-object v1

    .line 1841
    :cond_d
    :try_start_d
    check-cast v0, [Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1842
    :catch_10
    move-exception v2

    .line 1843
    const-string v3, "CharSequence[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1844
    return-object v1
.end method

.method greylist-max-o getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1615
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 319
    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist getDouble(Ljava/lang/String;)D
    .registers 4

    .line 1424
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1425
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDouble(Ljava/lang/String;D)D
    .registers 11

    .line 1437
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1438
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1439
    if-nez v3, :cond_c

    .line 1440
    return-wide p2

    .line 1443
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return-wide p1

    .line 1444
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1445
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1446
    return-wide p2
.end method

.method public whitelist getDoubleArray(Ljava/lang/String;)[D
    .registers 6

    .line 1789
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1790
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1791
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1792
    return-object v1

    .line 1795
    :cond_d
    :try_start_d
    check-cast v0, [D
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1796
    :catch_10
    move-exception v2

    .line 1797
    const-string v3, "double[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1798
    return-object v1
.end method

.method greylist-max-o getFloat(Ljava/lang/String;)F
    .registers 3

    .line 1390
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1391
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method greylist-max-o getFloat(Ljava/lang/String;F)F
    .registers 10

    .line 1403
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1404
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1405
    if-nez v3, :cond_c

    .line 1406
    return p2

    .line 1409
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1410
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1411
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1412
    return p2
.end method

.method greylist-max-o getFloatArray(Ljava/lang/String;)[F
    .registers 6

    .line 1766
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1767
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1768
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1769
    return-object v1

    .line 1772
    :cond_d
    :try_start_d
    check-cast v0, [F
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1773
    :catch_10
    move-exception v2

    .line 1774
    const-string v3, "float[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1775
    return-object v1
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .registers 3

    .line 1322
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 10

    .line 1335
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1336
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1337
    if-nez v3, :cond_c

    .line 1338
    return p2

    .line 1341
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1342
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1343
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1344
    return p2
.end method

.method public whitelist getIntArray(Ljava/lang/String;)[I
    .registers 6

    .line 1720
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1721
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1722
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1723
    return-object v1

    .line 1726
    :cond_d
    :try_start_d
    check-cast v0, [I
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1727
    :catch_10
    move-exception v2

    .line 1728
    const-string v3, "int[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1729
    return-object v1
.end method

.method greylist-max-o getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1589
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method blacklist getItemwiseMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 587
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 588
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getLong(Ljava/lang/String;)J
    .registers 4

    .line 1356
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1357
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .registers 11

    .line 1369
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1370
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1371
    if-nez v3, :cond_c

    .line 1372
    return-wide p2

    .line 1375
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return-wide p1

    .line 1376
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1377
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1378
    return-wide p2
.end method

.method public whitelist getLongArray(Ljava/lang/String;)[J
    .registers 6

    .line 1743
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1744
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1745
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1746
    return-object v1

    .line 1749
    :cond_d
    :try_start_d
    check-cast v0, [J
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1750
    :catch_10
    move-exception v2

    .line 1751
    const-string/jumbo v3, "long[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1752
    return-object v1
.end method

.method public greylist-max-o getPairValue()Ljava/lang/String;
    .registers 5

    .line 288
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 289
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 290
    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    .line 291
    const-string v1, "Bundle"

    const-string v2, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_13
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 294
    return-object v1

    .line 297
    :cond_17
    :try_start_17
    const-class v0, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_22} :catch_23
    .catch Landroid/os/BadTypeParcelableException; {:try_start_17 .. :try_end_22} :catch_23

    return-object v0

    .line 298
    :catch_23
    move-exception v0

    .line 299
    const-string v2, "getPairValue()"

    const-string v3, "String"

    invoke-virtual {p0, v2, v3, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 300
    return-object v1
.end method

.method greylist-max-o getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1536
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1537
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1538
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1539
    return-object v1

    .line 1542
    :cond_b
    :try_start_b
    check-cast v0, Ljava/io/Serializable;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    return-object v0

    .line 1543
    :catch_e
    move-exception v2

    .line 1544
    const-string v3, "Serializable"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1545
    return-object v1
.end method

.method blacklist getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1563
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    return-object p1
.end method

.method greylist-max-o getShort(Ljava/lang/String;)S
    .registers 3

    .line 1288
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result p1

    return p1
.end method

.method greylist-max-o getShort(Ljava/lang/String;S)S
    .registers 10

    .line 1301
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1302
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1303
    if-nez v3, :cond_c

    .line 1304
    return p2

    .line 1307
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1308
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1309
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1310
    return p2
.end method

.method greylist-max-o getShortArray(Ljava/lang/String;)[S
    .registers 6

    .line 1674
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1675
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1676
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1677
    return-object v1

    .line 1680
    :cond_d
    :try_start_d
    check-cast v0, [S
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1681
    :catch_10
    move-exception v2

    .line 1682
    const-string/jumbo v3, "short[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1683
    return-object v1
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1460
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1461
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1463
    :try_start_9
    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b} :catch_c

    return-object v0

    .line 1464
    :catch_c
    move-exception v1

    .line 1465
    const-string v2, "String"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1466
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1482
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1483
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p1

    :goto_8
    return-object p2
.end method

.method public whitelist getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 1812
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1813
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1814
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1815
    return-object v1

    .line 1818
    :cond_d
    :try_start_d
    check-cast v0, [Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1819
    :catch_10
    move-exception v2

    .line 1820
    const-string v3, "String[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1821
    return-object v1
.end method

.method greylist-max-o getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1602
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method final blacklist getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final blacklist getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final varargs blacklist getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 398
    if-ltz p1, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method final varargs blacklist getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 425
    instance-of v1, v0, Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1d

    .line 426
    monitor-enter p0

    .line 427
    :try_start_b
    invoke-direct {p0, p1, p2, p3}, Landroid/os/BaseBundle;->unwrapLazyValueFromMapLocked(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1a

    .line 429
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_27

    .line 430
    invoke-static {v0}, Landroid/content/Intent;->maybeMarkAsMissingCreatorToken(Ljava/lang/Object;)V

    goto :goto_27

    .line 428
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1

    .line 432
    :cond_1d
    instance-of p1, v0, Landroid/os/Bundle;

    if-eqz p1, :cond_27

    .line 433
    move-object p1, v0

    check-cast p1, Landroid/os/Bundle;

    .line 434
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->setClassLoaderSameAsContainerBundleWhenRetrievedFirstTime(Landroid/os/BaseBundle;)V

    .line 436
    :cond_27
    :goto_27
    if-eqz p2, :cond_2d

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2d
    return-object v0
.end method

.method public blacklist hasIntent()Z
    .registers 2

    .line 270
    iget-boolean v0, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    return v0
.end method

.method public blacklist isDefinitelyEmpty()Z
    .registers 2

    .line 620
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 621
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    return v0

    .line 623
    :cond_b
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 605
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 606
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmptyParcel()Z
    .registers 2

    .line 567
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-static {v0}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isParcelled()Z
    .registers 2

    .line 560
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isValueParceled(Ljava/lang/String;)Z
    .registers 3

    .line 406
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 407
    :cond_6
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 408
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/util/function/BiFunction;

    return p1
.end method

.method public whitelist keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 826
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 827
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o kindofEquals(Landroid/os/BaseBundle;)Z
    .registers 6

    .line 653
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 654
    return v0

    .line 656
    :cond_4
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 657
    return v2

    .line 659
    :cond_12
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v3

    if-eq v1, v3, :cond_1d

    .line 661
    return v0

    .line 662
    :cond_1d
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 663
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object p1, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->compareData(Landroid/os/Parcel;)I

    move-result p1

    if-nez p1, :cond_2e

    move v0, v2

    :cond_2e
    return v0

    .line 671
    :cond_2f
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist putAll(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 805
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 806
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    .line 807
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 808
    return-void
.end method

.method greylist-max-o putAll(Landroid/util/ArrayMap;)V
    .registers 3

    .line 816
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 817
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 818
    return-void
.end method

.method public whitelist putBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 867
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 868
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    return-void
.end method

.method public whitelist putBooleanArray(Ljava/lang/String;[Z)V
    .registers 4

    .line 1035
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1036
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    return-void
.end method

.method greylist-max-o putByte(Ljava/lang/String;B)V
    .registers 4

    .line 879
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 880
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    return-void
.end method

.method greylist-max-o putByteArray(Ljava/lang/String;[B)V
    .registers 4

    .line 1047
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1048
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    return-void
.end method

.method greylist-max-o putChar(Ljava/lang/String;C)V
    .registers 4

    .line 891
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 892
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    return-void
.end method

.method greylist-max-o putCharArray(Ljava/lang/String;[C)V
    .registers 4

    .line 1071
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1072
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    return-void
.end method

.method greylist-max-o putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    .line 975
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 976
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    return-void
.end method

.method greylist-max-o putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .registers 4

    .line 1143
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1144
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    return-void
.end method

.method greylist-max-o putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1011
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1012
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    return-void
.end method

.method public whitelist putDouble(Ljava/lang/String;D)V
    .registers 5

    .line 951
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 952
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    return-void
.end method

.method public whitelist putDoubleArray(Ljava/lang/String;[D)V
    .registers 4

    .line 1119
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1120
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    return-void
.end method

.method greylist-max-o putFloat(Ljava/lang/String;F)V
    .registers 4

    .line 939
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 940
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    return-void
.end method

.method greylist-max-o putFloatArray(Ljava/lang/String;[F)V
    .registers 4

    .line 1107
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1108
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    return-void
.end method

.method public whitelist putInt(Ljava/lang/String;I)V
    .registers 4

    .line 915
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 916
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    return-void
.end method

.method public whitelist putIntArray(Ljava/lang/String;[I)V
    .registers 4

    .line 1083
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1084
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    return-void
.end method

.method greylist-max-o putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 987
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 988
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    return-void
.end method

.method public whitelist putLong(Ljava/lang/String;J)V
    .registers 5

    .line 927
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 928
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    return-void
.end method

.method public whitelist putLongArray(Ljava/lang/String;[J)V
    .registers 4

    .line 1095
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1096
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    return-void
.end method

.method public blacklist putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 832
    if-nez p2, :cond_8

    .line 833
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7c

    .line 834
    :cond_8
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 835
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_7c

    .line 836
    :cond_17
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_25

    .line 837
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7c

    .line 838
    :cond_25
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_33

    .line 839
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_7c

    .line 840
    :cond_33
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_41

    .line 841
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_7c

    .line 842
    :cond_41
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 843
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 844
    :cond_4b
    instance-of v0, p2, [Z

    if-eqz v0, :cond_55

    .line 845
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_7c

    .line 846
    :cond_55
    instance-of v0, p2, [I

    if-eqz v0, :cond_5f

    .line 847
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_7c

    .line 848
    :cond_5f
    instance-of v0, p2, [J

    if-eqz v0, :cond_69

    .line 849
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_7c

    .line 850
    :cond_69
    instance-of v0, p2, [D

    if-eqz v0, :cond_73

    .line 851
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_7c

    .line 852
    :cond_73
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_7d

    .line 853
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 857
    :goto_7c
    return-void

    .line 855
    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    .line 1023
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1024
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    return-void
.end method

.method greylist-max-o putShort(Ljava/lang/String;S)V
    .registers 4

    .line 903
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 904
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    return-void
.end method

.method greylist-max-o putShortArray(Ljava/lang/String;[S)V
    .registers 4

    .line 1059
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1060
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    return-void
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 963
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 964
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    return-void
.end method

.method public whitelist putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 1131
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1132
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    return-void
.end method

.method greylist-max-o putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 999
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1000
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    return-void
.end method

.method greylist-max-o readFromParcelInner(Landroid/os/Parcel;)V
    .registers 3

    .line 1907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1908
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1909
    return-void
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .registers 3

    .line 795
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 796
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    return-void
.end method

.method greylist-max-o setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 311
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 312
    return-void
.end method

.method public blacklist setHasIntent(Z)V
    .registers 2

    .line 275
    iput-boolean p1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 276
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 597
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 598
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V
    .registers 8

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    const-string p1, " expected "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    if-eqz p2, :cond_28

    .line 1170
    const-string p1, " but value was a "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 1173
    :cond_28
    const-string p1, " but value was of a different type"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :goto_2d
    const-string p1, ".  The default value "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1177
    const-string p1, " was returned."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Bundle"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string p1, "Attempt to cast generated internal exception:"

    invoke-static {p2, p1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1180
    return-void
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 11

    .line 1183
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1184
    return-void
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 10

    .line 1187
    const/4 v2, 0x0

    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1188
    return-void
.end method

.method final greylist unparcel()V
    .registers 2

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 329
    return-void
.end method

.method final blacklist unparcel(Z)V
    .registers 6

    .line 333
    monitor-enter p0

    .line 334
    :try_start_1
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 335
    if-eqz v0, :cond_10

    .line 336
    iget-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 337
    iget-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V

    .line 345
    :cond_10
    if-eqz p1, :cond_25

    .line 352
    iget-object p1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    if-ge v1, p1, :cond_25

    .line 354
    new-array v2, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 357
    :cond_25
    monitor-exit p0

    .line 358
    return-void

    .line 357
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method

.method greylist-max-o writeToParcelInner(Landroid/os/Parcel;I)V
    .registers 6

    .line 1855
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1856
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 1861
    :cond_a
    monitor-enter p0

    .line 1864
    :try_start_b
    iget-object p2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const v0, 0x4c444e42    # 5.146036E7f

    const/4 v1, 0x0

    if-eqz p2, :cond_3c

    .line 1865
    iget-object p2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v2, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne p2, v2, :cond_1d

    .line 1866
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 1868
    :cond_1d
    iget-object p2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    .line 1869
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    iget-boolean v2, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    if-eqz v2, :cond_2d

    const v0, 0x4c444e44

    :cond_2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1871
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p1, v0, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1872
    iget-boolean p2, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1874
    :goto_3a
    monitor-exit p0

    return-void

    .line 1876
    :cond_3c
    iget-object p2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 1877
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_73

    .line 1880
    if-eqz p2, :cond_6f

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-gtz v2, :cond_48

    goto :goto_6f

    .line 1884
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1885
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1887
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1888
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1889
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 1892
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1893
    sub-int v0, p2, v0

    .line 1894
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1896
    iget-boolean p2, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1897
    return-void

    .line 1881
    :cond_6f
    :goto_6f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    return-void

    .line 1877
    :catchall_73
    move-exception p1

    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p1
.end method
