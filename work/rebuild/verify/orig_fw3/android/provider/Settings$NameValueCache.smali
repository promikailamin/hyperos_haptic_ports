.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final greylist-max-o SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final blacklist mAllFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallDeleteCommand:Ljava/lang/String;

.field private final greylist-max-o mCallGetCommand:Ljava/lang/String;

.field private final blacklist mCallListCommand:Ljava/lang/String;

.field private final blacklist mCallSetAllCommand:Ljava/lang/String;

.field private final greylist-max-o mCallSetCommand:Ljava/lang/String;

.field private final blacklist mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGenerationTrackers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            "Landroid/provider/Settings$GenerationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPrefixToValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final blacklist mReadableFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$wb_V0X9Wt6aU2LZtNv8KpjFtc0I(Landroid/provider/Settings$NameValueCache;Landroid/provider/Settings$GenerationTracker$Key;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lambda$new$0(Landroid/provider/Settings$GenerationTracker$Key;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStringsForPrefixStripPrefix(Landroid/provider/Settings$NameValueCache;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->getStringsForPrefixStripPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3565
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3620
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    .line 3622
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3574
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3580
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    .line 3601
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3605
    new-instance v0, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;

    .line 3627
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3628
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3629
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3630
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3631
    iput-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3632
    iput-object p6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3633
    iput-object p7, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 3634
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    .line 3635
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    .line 3636
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 3637
    iget-object p1, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    iget-object p2, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-static {p8, p1, p2, p3}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 3639
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    return-void
.end method

.method private blacklist getStringsForPrefixStripPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3962
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    new-instance v3, Landroid/provider/Settings$GenerationTracker$Key;

    const/4 v2, 0x0

    invoke-direct {v3, v0, v2}, Landroid/provider/Settings$GenerationTracker$Key;-><init>(Ljava/lang/String;I)V

    .line 3964
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3965
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 3966
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    .line 3967
    nop

    .line 3968
    nop

    .line 3969
    monitor-enter p0

    .line 3970
    :try_start_20
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Settings$GenerationTracker;

    .line 3971
    const/4 v6, -0x1

    if-eqz v5, :cond_82

    .line 3972
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 3980
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3981
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3982
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3983
    move v7, v8

    goto :goto_7d

    .line 3985
    :cond_40
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 3986
    if-eqz v7, :cond_7c

    .line 3987
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    .line 3988
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3990
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 3991
    nop

    .line 3993
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3991
    invoke-virtual {v9, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3995
    :cond_70
    goto :goto_54

    :cond_71
    goto :goto_7a

    .line 3997
    :cond_72
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 3999
    const-string v0, ""

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4001
    :goto_7a
    monitor-exit p0

    return-object v9

    .line 3986
    :cond_7c
    move v7, v2

    .line 4004
    :goto_7d
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v5

    goto :goto_84

    .line 4006
    :cond_82
    move v5, v6

    move v7, v8

    .line 4008
    :goto_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_20 .. :try_end_85} :catchall_216

    .line 4009
    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    if-nez v11, :cond_8a

    .line 4011
    return-object v9

    .line 4016
    :cond_8a
    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v11

    .line 4017
    if-nez v11, :cond_b3

    .line 4018
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get strings for prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " because cp is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    return-object v9

    .line 4023
    :cond_b3
    :try_start_b3
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 4024
    const-string v14, "_prefix"

    invoke-virtual {v13, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4025
    const/4 v14, 0x0

    if-eqz v7, :cond_c5

    .line 4026
    const-string v15, "_track_generation"

    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4037
    :cond_c5
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v15

    if-eqz v15, :cond_101

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    move/from16 v18, v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-eq v15, v8, :cond_103

    .line 4038
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_db} :catch_214

    .line 4041
    move-object/from16 v17, v13

    :try_start_dd
    invoke-virtual {v12}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v8}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v8

    .line 4042
    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    iget-object v15, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 4041
    const/16 v16, 0x0

    move-object v12, v14

    move-object v14, v8

    move-object v8, v12

    move-object v12, v11

    invoke-interface/range {v12 .. v17}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11
    :try_end_f7
    .catchall {:try_start_dd .. :try_end_f7} :catchall_fc

    .line 4044
    :try_start_f7
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4045
    nop

    .line 4046
    goto :goto_11d

    .line 4044
    :catchall_fc
    move-exception v0

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4045
    throw v0

    .line 4037
    :cond_101
    move/from16 v18, v8

    :cond_103
    move-object v12, v11

    move-object/from16 v17, v13

    move-object v8, v14

    .line 4048
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v11}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v11

    .line 4049
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 4048
    const/16 v16, 0x0

    invoke-interface/range {v12 .. v17}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 4051
    :goto_11d
    if-nez v11, :cond_120

    .line 4053
    return-object v9

    .line 4057
    :cond_120
    const-string/jumbo v12, "value"

    const-class v13, Ljava/util/HashMap;

    .line 4058
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 4059
    if-nez v12, :cond_12e

    .line 4060
    return-object v9

    .line 4063
    :cond_12e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_15a

    .line 4064
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_138
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_159

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4066
    invoke-static {v4, v14}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4067
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_158

    .line 4068
    nop

    .line 4070
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4068
    invoke-virtual {v9, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4072
    :cond_158
    goto :goto_138

    :cond_159
    goto :goto_183

    .line 4074
    :cond_15a
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_162
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_183

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 4075
    nop

    .line 4076
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 4077
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 4075
    invoke-virtual {v9, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4078
    goto :goto_162

    .line 4081
    :cond_183
    :goto_183
    monitor-enter p0
    :try_end_184
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_184} :catch_214

    .line 4082
    if-eqz v7, :cond_1c1

    .line 4083
    :try_start_186
    const-string v4, "_track_generation"

    const-class v7, Landroid/util/MemoryIntArray;

    invoke-virtual {v11, v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/MemoryIntArray;

    .line 4085
    const-string v7, "_generation_index"

    invoke-virtual {v11, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 4087
    if-eqz v4, :cond_1be

    if-ltz v6, :cond_1be

    .line 4088
    const-string v5, "_generation"

    invoke-virtual {v11, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4098
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Settings$GenerationTracker;

    .line 4099
    if-eqz v5, :cond_1ad

    .line 4100
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4102
    :cond_1ad
    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    move v5, v6

    move v6, v2

    new-instance v2, Landroid/provider/Settings$GenerationTracker;

    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;

    invoke-direct/range {v2 .. v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/provider/Settings$GenerationTracker$Key;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v11, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4105
    nop

    .line 4106
    move v5, v6

    goto :goto_1c1

    .line 4107
    :cond_1be
    invoke-static {v4}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    .line 4110
    :cond_1c1
    :goto_1c1
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$GenerationTracker;

    .line 4111
    if-eqz v2, :cond_20f

    invoke-virtual {v2}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v2

    if-ne v5, v2, :cond_20f

    .line 4117
    new-instance v2, Landroid/util/ArrayMap;

    .line 4118
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 4119
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_205

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4120
    nop

    .line 4121
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4122
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4120
    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4123
    goto :goto_1e4

    .line 4125
    :cond_205
    const-string v3, ""

    invoke-virtual {v2, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4126
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4128
    :cond_20f
    monitor-exit p0

    .line 4129
    return-object v9

    .line 4128
    :catchall_211
    move-exception v0

    monitor-exit p0
    :try_end_213
    .catchall {:try_start_186 .. :try_end_213} :catchall_211

    :try_start_213
    throw v0
    :try_end_214
    .catch Landroid/os/RemoteException; {:try_start_213 .. :try_end_214} :catch_214

    .line 4130
    :catch_214
    move-exception v0

    .line 4132
    return-object v9

    .line 4008
    :catchall_216
    move-exception v0

    :try_start_217
    monitor-exit p0
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    throw v0
.end method

.method private static blacklist isCallerExemptFromReadableRestriction()Z
    .registers 4

    .line 3943
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3944
    return v1

    .line 3946
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_15

    .line 3947
    return v1

    .line 3949
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3950
    const/4 v2, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_49

    .line 3953
    :cond_23
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3954
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_2f

    move v3, v1

    goto :goto_30

    :cond_2f
    move v3, v2

    .line 3956
    :goto_30
    if-nez v3, :cond_47

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_47

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v3

    if-nez v3, :cond_47

    .line 3957
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_47

    :cond_45
    move v1, v2

    goto :goto_48

    :cond_47
    :goto_47
    nop

    .line 3956
    :goto_48
    return v1

    .line 3951
    :cond_49
    :goto_49
    return v2
.end method

.method private synthetic blacklist lambda$new$0(Landroid/provider/Settings$GenerationTracker$Key;)V
    .registers 4

    .line 3606
    monitor-enter p0

    .line 3607
    :try_start_1
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3609
    if-eqz v0, :cond_1a

    .line 3610
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3611
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3613
    :cond_1a
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3614
    monitor-exit p0

    .line 3615
    return-void

    .line 3614
    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw p1
.end method


# virtual methods
.method public greylist-max-o clearGenerationTrackerForTest()V
    .registers 3

    .line 4137
    monitor-enter p0

    .line 4138
    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 4139
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v1}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4141
    :cond_18
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4142
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4143
    monitor-exit p0

    .line 4144
    return-void

    .line 4143
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public blacklist deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 14

    .line 3698
    const-string v1, "Can\'t delete key "

    const-string v2, "Settings"

    const/4 v3, 0x0

    :try_start_5
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 3699
    const-string v0, "_user"

    invoke-virtual {v9, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3700
    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {p3, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v4
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_4f

    .line 3701
    if-nez v4, :cond_36

    .line 3702
    :try_start_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " because cp is null"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_31} :catch_32

    .line 3703
    return v3

    .line 3707
    :catch_32
    move-exception v0

    move-object p1, v0

    move-object v8, p2

    goto :goto_52

    .line 3705
    :cond_36
    :try_start_36
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    iget-object p1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p1}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p1

    .line 3706
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_46} :catch_4f

    .line 3705
    move-object v8, p2

    :try_start_47
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4d

    .line 3710
    nop

    .line 3711
    const/4 p1, 0x1

    return p1

    .line 3707
    :catch_4d
    move-exception v0

    goto :goto_51

    :catch_4f
    move-exception v0

    move-object v8, p2

    :goto_51
    move-object p1, v0

    .line 3708
    :goto_52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3709
    return v3
.end method

.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 22

    .line 3717
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    move/from16 v0, p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-ne v0, v2, :cond_10

    move v9, v3

    goto :goto_11

    :cond_10
    move v9, v8

    .line 3718
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 3720
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->deviceAwareSettingsOverride()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3721
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v4

    if-eqz v4, :cond_28

    if-eqz v2, :cond_28

    .line 3723
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v2

    goto :goto_29

    :cond_28
    move v2, v8

    .line 3724
    :goto_29
    new-instance v11, Landroid/provider/Settings$GenerationTracker$Key;

    invoke-direct {v11, v6, v2}, Landroid/provider/Settings$GenerationTracker$Key;-><init>(Ljava/lang/String;I)V

    .line 3725
    if-eqz v9, :cond_38

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v2

    if-nez v2, :cond_38

    move v2, v3

    goto :goto_39

    :cond_38
    move v2, v8

    .line 3726
    :goto_39
    nop

    .line 3727
    if-eqz v2, :cond_73

    .line 3728
    monitor-enter p0

    .line 3729
    :try_start_3d
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$GenerationTracker;

    .line 3730
    if-eqz v2, :cond_6d

    .line 3731
    invoke-virtual {v2}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 3740
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3741
    invoke-virtual {v2}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3742
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 3743
    :cond_5b
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 3747
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 3750
    :cond_6d
    :goto_6d
    monitor-exit p0

    .line 3755
    move v10, v3

    goto :goto_74

    .line 3750
    :catchall_70
    move-exception v0

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_3d .. :try_end_72} :catchall_70

    throw v0

    .line 3727
    :cond_73
    move v10, v8

    .line 3768
    :goto_74
    invoke-static {}, Landroid/provider/Settings$NameValueCache;->isCallerExemptFromReadableRestriction()Z

    move-result v2

    if-nez v2, :cond_f9

    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 3769
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 3778
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 3779
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3780
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    .line 3781
    if-eqz v4, :cond_b3

    .line 3782
    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_b3

    .line 3783
    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v4, v2, :cond_b3

    goto :goto_b4

    :cond_b3
    move v3, v8

    .line 3785
    :goto_b4
    if-eqz v3, :cond_b7

    goto :goto_f9

    .line 3786
    :cond_b7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings key: <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3770
    :cond_da
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings key: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3796
    :cond_f9
    :goto_f9
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3797
    const/4 v13, 0x0

    if-nez v2, :cond_123

    .line 3798
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because cp is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    return-object v13

    .line 3806
    :cond_123
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v3, :cond_1fa

    .line 3808
    :try_start_127
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3809
    if-nez v9, :cond_133

    .line 3810
    const-string v3, "_user"

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3812
    :cond_133
    if-eqz v10, :cond_13a

    .line 3813
    const-string v0, "_track_generation"

    invoke-virtual {v7, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3828
    :cond_13a
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_13e} :catch_1f7

    if-eqz v0, :cond_16e

    :try_start_140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v0, v3, :cond_16e

    .line 3829
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14
    :try_end_14e
    .catch Landroid/os/RemoteException; {:try_start_140 .. :try_end_14e} :catch_1f3

    .line 3831
    :try_start_14e
    invoke-virtual {v12}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3832
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3831
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_162
    .catchall {:try_start_14e .. :try_end_162} :catchall_169

    .line 3835
    :try_start_162
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3836
    nop

    .line 3837
    move-object/from16 v6, p2

    goto :goto_184

    .line 3835
    :catchall_169
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3836
    throw v0

    .line 3838
    :cond_16e
    invoke-virtual {v12}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3839
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;
    :try_end_17e
    .catch Landroid/os/RemoteException; {:try_start_162 .. :try_end_17e} :catch_1f3

    .line 3838
    move-object/from16 v6, p2

    :try_start_180
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3841
    :goto_184
    if-eqz v0, :cond_1f1

    .line 3842
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3844
    if-eqz v9, :cond_1f0

    .line 3845
    monitor-enter p0
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_180 .. :try_end_190} :catch_1f7

    .line 3846
    if-eqz v10, :cond_1d3

    .line 3847
    :try_start_192
    const-string v4, "_track_generation"

    const-class v5, Landroid/util/MemoryIntArray;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/MemoryIntArray;

    .line 3849
    const-string v5, "_generation_index"

    const/4 v7, -0x1

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3851
    if-eqz v4, :cond_1ca

    if-ltz v5, :cond_1ca

    .line 3852
    const-string v7, "_generation"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 3864
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3865
    if-eqz v0, :cond_1ba

    .line 3866
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3868
    :cond_1ba
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    new-instance v10, Landroid/provider/Settings$GenerationTracker;

    iget-object v15, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_1c0
    .catchall {:try_start_192 .. :try_end_1c0} :catchall_1d0

    move-object v12, v4

    move-object v4, v13

    move v13, v5

    :try_start_1c3
    invoke-direct/range {v10 .. v15}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/provider/Settings$GenerationTracker$Key;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v0, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3871
    goto :goto_1d4

    .line 3851
    :cond_1ca
    move-object v12, v4

    move-object v4, v13

    .line 3872
    invoke-static {v12}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    goto :goto_1d4

    .line 3882
    :catchall_1d0
    move-exception v0

    move-object v4, v13

    goto :goto_1ec

    .line 3846
    :cond_1d3
    move-object v4, v13

    .line 3875
    :goto_1d4
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3876
    if-eqz v0, :cond_1e9

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-nez v0, :cond_1e9

    .line 3880
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3882
    :cond_1e9
    monitor-exit p0

    goto :goto_1f0

    :catchall_1eb
    move-exception v0

    :goto_1ec
    monitor-exit p0
    :try_end_1ed
    .catchall {:try_start_1c3 .. :try_end_1ed} :catchall_1eb

    :try_start_1ed
    throw v0
    :try_end_1ee
    .catch Landroid/os/RemoteException; {:try_start_1ed .. :try_end_1ee} :catch_1ee

    .line 3895
    :catch_1ee
    move-exception v0

    goto :goto_1fb

    .line 3891
    :cond_1f0
    :goto_1f0
    return-object v3

    .line 3898
    :cond_1f1
    move-object v4, v13

    goto :goto_1fb

    .line 3895
    :catch_1f3
    move-exception v0

    move-object/from16 v6, p2

    goto :goto_1f8

    :catch_1f7
    move-exception v0

    :goto_1f8
    move-object v4, v13

    goto :goto_1fb

    .line 3806
    :cond_1fa
    move-object v4, v13

    .line 3901
    :goto_1fb
    nop

    .line 3903
    :try_start_1fc
    const-string/jumbo v0, "name=?"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 3906
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_234

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v0, v3, :cond_234

    .line 3907
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_21b
    .catch Landroid/os/RemoteException; {:try_start_1fc .. :try_end_21b} :catch_2a3
    .catchall {:try_start_1fc .. :try_end_21b} :catchall_2a0

    .line 3909
    :try_start_21b
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    iget-object v14, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v15, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/16 v17, 0x0

    move-object v12, v2

    invoke-interface/range {v12 .. v17}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_22a
    .catchall {:try_start_21b .. :try_end_22a} :catchall_22f

    .line 3912
    :try_start_22a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_22d
    .catch Landroid/os/RemoteException; {:try_start_22a .. :try_end_22d} :catch_29e
    .catchall {:try_start_22a .. :try_end_22d} :catchall_2d0

    .line 3913
    nop

    .line 3914
    goto :goto_244

    .line 3912
    :catchall_22f
    move-exception v0

    :try_start_230
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3913
    throw v0

    .line 3915
    :cond_234
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    iget-object v14, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v15, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/16 v17, 0x0

    move-object v12, v2

    invoke-interface/range {v12 .. v17}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_243
    .catch Landroid/os/RemoteException; {:try_start_230 .. :try_end_243} :catch_2a3
    .catchall {:try_start_230 .. :try_end_243} :catchall_2a0

    move-object v13, v0

    .line 3918
    :goto_244
    if-nez v13, :cond_271

    .line 3919
    :try_start_246
    const-string v0, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26a
    .catch Landroid/os/RemoteException; {:try_start_246 .. :try_end_26a} :catch_29e
    .catchall {:try_start_246 .. :try_end_26a} :catchall_2d0

    .line 3920
    nop

    .line 3938
    if-eqz v13, :cond_270

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3920
    :cond_270
    return-object v4

    .line 3923
    :cond_271
    :try_start_271
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27c

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27d

    :cond_27c
    move-object v0, v4

    .line 3924
    :goto_27d
    monitor-enter p0
    :try_end_27e
    .catch Landroid/os/RemoteException; {:try_start_271 .. :try_end_27e} :catch_29e
    .catchall {:try_start_271 .. :try_end_27e} :catchall_2d0

    .line 3925
    :try_start_27e
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$GenerationTracker;

    .line 3926
    if-eqz v2, :cond_293

    invoke-virtual {v2}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v2

    if-nez v2, :cond_293

    .line 3930
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3932
    :cond_293
    monitor-exit p0
    :try_end_294
    .catchall {:try_start_27e .. :try_end_294} :catchall_29b

    .line 3933
    nop

    .line 3938
    if-eqz v13, :cond_29a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3933
    :cond_29a
    return-object v0

    .line 3932
    :catchall_29b
    move-exception v0

    :try_start_29c
    monitor-exit p0
    :try_end_29d
    .catchall {:try_start_29c .. :try_end_29d} :catchall_29b

    :try_start_29d
    throw v0
    :try_end_29e
    .catch Landroid/os/RemoteException; {:try_start_29d .. :try_end_29e} :catch_29e
    .catchall {:try_start_29d .. :try_end_29e} :catchall_2d0

    .line 3934
    :catch_29e
    move-exception v0

    goto :goto_2a5

    .line 3938
    :catchall_2a0
    move-exception v0

    move-object v13, v4

    goto :goto_2d1

    .line 3934
    :catch_2a3
    move-exception v0

    move-object v13, v4

    .line 3935
    :goto_2a5
    :try_start_2a5
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c9
    .catchall {:try_start_2a5 .. :try_end_2c9} :catchall_2d0

    .line 3936
    nop

    .line 3938
    if-eqz v13, :cond_2cf

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3936
    :cond_2cf
    return-object v4

    .line 3938
    :catchall_2d0
    move-exception v0

    :goto_2d1
    if-eqz v13, :cond_2d6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3939
    :cond_2d6
    throw v0
.end method

.method public blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 14

    .line 3645
    const-string v1, " in "

    const-string v2, "Can\'t set key "

    const-string v3, "Settings"

    const/4 v4, 0x0

    move v0, p6

    :try_start_8
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    .line 3646
    const-string/jumbo v5, "value"

    invoke-virtual {p6, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    const-string p3, "_user"

    invoke-virtual {p6, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_7b

    .line 3648
    if-eqz p4, :cond_24

    .line 3649
    :try_start_1a
    const-string p3, "_tag"

    invoke-virtual {p6, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 3664
    :catch_20
    move-exception v0

    move-object p1, v0

    move-object p5, p2

    goto :goto_7e

    .line 3651
    :cond_24
    :goto_24
    const/4 v0, 0x1

    if-eqz p5, :cond_2c

    .line 3652
    const-string p3, "_make_default"

    invoke-virtual {p6, p3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3654
    :cond_2c
    if-eqz p7, :cond_33

    .line 3655
    const-string p3, "_overrideable_by_restore"

    invoke-virtual {p6, p3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_33} :catch_20

    .line 3657
    :cond_33
    :try_start_33
    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {p3, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object p3
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_7b

    .line 3658
    if-nez p3, :cond_60

    .line 3659
    :try_start_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " because cp is null"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_5f} :catch_20

    .line 3660
    return v4

    .line 3662
    :cond_60
    :try_start_60
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p1

    iget-object p4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p4}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p4

    .line 3663
    invoke-virtual {p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p4
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_6e} :catch_7b

    move-object p5, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, p4

    :try_start_72
    iget-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3662
    invoke-interface/range {p1 .. p6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_77} :catch_79

    .line 3667
    nop

    .line 3668
    return v0

    .line 3664
    :catch_79
    move-exception v0

    goto :goto_7d

    :catch_7b
    move-exception v0

    move-object p5, p2

    :goto_7d
    move-object p1, v0

    .line 3665
    :goto_7e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3666
    return v4
.end method

.method public blacklist setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3673
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3675
    return v1

    .line 3678
    :cond_6
    :try_start_6
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3679
    const-string v0, "_prefix"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    const-string v0, "_flags"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3681
    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {p3, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3682
    if-nez v2, :cond_3c

    .line 3683
    const-string p1, "Settings"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t set strings for prefix "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " because cp is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    return v1

    .line 3686
    :cond_3c
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object p1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p1}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p1

    .line 3687
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3686
    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 3689
    const-string p2, "config_set_all_return"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_57} :catch_58

    return p1

    .line 3690
    :catch_58
    move-exception v0

    .line 3692
    return v1
.end method
