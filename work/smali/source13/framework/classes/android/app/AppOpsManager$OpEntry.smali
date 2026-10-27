.class public final Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEntry"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributedOpEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMode:I

.field private final greylist-max-o mOp:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5194
    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/Map;)V
    .registers 14
    .param p1, "op"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 5108
    .local p3, "attributedOpEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5109
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 5111
    const/16 v0, 0x2710

    if-le p1, v0, :cond_d

    const/16 v0, 0x2743

    if-lt p1, v0, :cond_1d

    .line 5112
    :cond_d
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v8, 0x78

    const-string v4, "from"

    const-string/jumbo v7, "to"

    move v3, p1

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 5118
    :cond_1d
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 5119
    const-class v0, Landroid/app/AppOpsManager$Mode;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 5121
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    .line 5122
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 5126
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 5170
    .local v9, "op":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 5171
    .local v10, "mode":I
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v11, v0

    .line 5172
    .local v11, "attributions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    const-class v0, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 5174
    iput v9, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 5176
    const/16 v0, 0x2710

    if-le v9, v0, :cond_24

    const/16 v0, 0x2743

    if-lt v9, v0, :cond_34

    .line 5177
    :cond_24
    const-class v0, Landroid/annotation/IntRange;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x78

    const-string v3, "from"

    const-string/jumbo v6, "to"

    move v2, v9

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 5183
    :cond_34
    iput v10, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 5184
    const-class v0, Landroid/app/AppOpsManager$Mode;

    const/4 v1, 0x0

    invoke-static {v0, v1, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 5186
    iput-object v11, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    .line 5187
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 5191
    return-void
.end method

.method private blacklist getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 12
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4697
    const/4 v0, 0x0

    .line 4698
    .local v0, "lastAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4699
    .local v2, "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-static {v2, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v3

    .line 4702
    .local v3, "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v0, :cond_2b

    if-eqz v3, :cond_2c

    .line 4703
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v4

    .line 4704
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2c

    .line 4705
    :cond_2b
    move-object v0, v3

    .line 4707
    .end local v2    # "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v3    # "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_2c
    goto :goto_b

    .line 4709
    :cond_2d
    return-object v0
.end method

.method private blacklist getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 12
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4812
    const/4 v0, 0x0

    .line 4813
    .local v0, "lastAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4814
    .local v2, "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-static {v2, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v3

    .line 4817
    .local v3, "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v0, :cond_2b

    if-eqz v3, :cond_2c

    .line 4818
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v4

    .line 4819
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2c

    .line 4820
    :cond_2b
    move-object v0, v3

    .line 4822
    .end local v2    # "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v3    # "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_2c
    goto :goto_b

    .line 4824
    :cond_2d
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 5160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributedOpEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 5144
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getDuration()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4871
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessBackgroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4684
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessForegroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4666
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4649
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(III)J
    .registers 7
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4729
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4731
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_9

    .line 4732
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4735
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getLastBackgroundDuration(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4920
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastBackgroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4
    .param p1, "flags"    # I

    .line 5049
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastDuration(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4887
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastDuration(III)J
    .registers 7
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4940
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4941
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_9

    .line 4942
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4945
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getLastForegroundDuration(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4903
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastForegroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4
    .param p1, "flags"    # I

    .line 5031
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4
    .param p1, "flags"    # I

    .line 5014
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 6
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 5070
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 5071
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_8

    .line 5072
    const/4 v1, 0x0

    return-object v1

    .line 5075
    :cond_8
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getLastRejectBackgroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4799
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectForegroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4781
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4764
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(III)J
    .registers 7
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4845
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4846
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_9

    .line 4847
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4850
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getMode()I
    .registers 2

    .line 5133
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public greylist-max-r getOp()I
    .registers 2

    .line 4613
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public whitelist getOpStr()Ljava/lang/String;
    .registers 3

    .line 4620
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsOpToString()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getProxyPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4979
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 4980
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_a

    .line 4981
    const/4 v1, 0x0

    return-object v1

    .line 4984
    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getProxyPackageName(II)Ljava/lang/String;
    .registers 5
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4992
    invoke-virtual {p0, p1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 4993
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_8

    .line 4994
    const/4 v1, 0x0

    return-object v1

    .line 4997
    :cond_8
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getProxyUid()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4953
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 4954
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_a

    .line 4955
    const/4 v1, -0x1

    return v1

    .line 4958
    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v1

    return v1
.end method

.method public whitelist getProxyUid(II)I
    .registers 5
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4966
    invoke-virtual {p0, p1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 4967
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_8

    .line 4968
    const/4 v1, -0x1

    return v1

    .line 4971
    :cond_8
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v1

    return v1
.end method

.method public greylist-max-r getRejectTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4747
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4632
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist isRunning()Z
    .registers 4

    .line 4857
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4858
    .local v1, "opAttributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4859
    const/4 v0, 0x1

    return v0

    .line 4861
    .end local v1    # "opAttributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    :cond_1e
    goto :goto_a

    .line 4863
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5153
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5154
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5155
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 5156
    return-void
.end method
