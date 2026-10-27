.class public Lcom/android/server/firewall/IntentFirewall;
.super Ljava/lang/Object;
.source "IntentFirewall.java"


# static fields
.field public static final RULES_DIR:Ljava/io/File;

.field public static final factoryMap:Ljava/util/HashMap;


# instance fields
.field public mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field public final mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

.field public mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field public final mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

.field public final mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

.field public mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;


# direct methods
.method public static bridge synthetic -$$Nest$mreadRulesDir(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "ifw"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    const/16 v0, 0x13

    .line 99
    new-array v0, v0, [Lcom/android/server/firewall/FilterFactory;

    sget-object v1, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    sget-object v3, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v5, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v5, v0, v1

    const/4 v1, 0x6

    sget-object v5, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v5, v0, v1

    const/4 v1, 0x7

    sget-object v5, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v5, v0, v1

    const/16 v1, 0x8

    sget-object v5, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v5, v0, v1

    const/16 v1, 0x9

    sget-object v5, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v5, v0, v1

    const/16 v1, 0xa

    sget-object v5, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v5, v0, v1

    const/16 v1, 0xb

    sget-object v5, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v5, v0, v1

    const/16 v1, 0xc

    sget-object v5, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v5, v0, v1

    const/16 v1, 0xd

    sget-object v5, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v5, v0, v1

    const/16 v1, 0xe

    sget-object v5, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v5, v0, v1

    const/16 v1, 0xf

    sget-object v5, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v5, v0, v1

    const/16 v1, 0x10

    sget-object v5, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v5, v0, v1

    const/16 v1, 0x11

    sget-object v5, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v5, v0, v1

    const/16 v1, 0x12

    sget-object v5, Lcom/android/server/firewall/ExtraKeyValueFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v5, v0, v1

    .line 148
    new-instance v1, Ljava/util/HashMap;

    array-length v5, v0

    mul-int/2addr v5, v4

    div-int/2addr v5, v3

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    .line 149
    :goto_85
    array-length v1, v0

    if-ge v2, v1, :cond_96

    .line 150
    aget-object v1, v0, v2

    .line 151
    sget-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/firewall/FilterFactory;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_96
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;)V
    .registers 4

    .line 156
    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/firewall/IntentFirewall;-><init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;Ljava/io/File;)V
    .registers 6

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall-IA;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 93
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall-IA;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 94
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall-IA;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 161
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    .line 162
    new-instance p1, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;-><init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    .line 163
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 165
    invoke-virtual {p0, p3}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    .line 167
    new-instance p1, Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-direct {p1, p0, p3}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;-><init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    .line 168
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method public static getRulesDir()Ljava/io/File;
    .registers 1

    .line 319
    sget-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static joinPackages([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 294
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_2e

    .line 295
    aget-object v3, p0, v2

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0x96

    if-gt v4, v5, :cond_22

    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 300
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x7d

    if-le v3, v4, :cond_2b

    goto :goto_2e

    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 305
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 306
    aget-object p0, p0, v1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x95

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 315
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logIntent(ILandroid/content/Intent;ILjava/lang/String;)V
    .registers 15

    .line 253
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 256
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_e

    :cond_d
    move-object v3, v1

    .line 261
    :goto_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 264
    :try_start_15
    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 266
    array-length v2, v0

    .line 267
    invoke-static {v0}, Lcom/android/server/firewall/IntentFirewall;->joinPackages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_23

    :catch_21
    move-exception v0

    goto :goto_26

    :cond_23
    :goto_23
    move-object v6, v1

    move v5, v2

    goto :goto_2e

    .line 270
    :goto_26
    const-string v4, "IntentFirewall"

    const-string v5, "Remote exception while retrieving packages"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 274
    :goto_2e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    move v2, p0

    move v4, p2

    move-object v8, p3

    .line 273
    invoke-static/range {v2 .. v10}, Lcom/android/server/EventLogTags;->writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 4

    .line 460
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 462
    sget-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/firewall/FilterFactory;

    if-eqz v1, :cond_13

    .line 467
    invoke-virtual {v1, p0}, Lcom/android/server/firewall/FilterFactory;->newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object p0

    return-object p0

    .line 465
    :cond_13
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element in filter list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 15

    .line 196
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public checkComponentPermission(Ljava/lang/String;IIIZ)Z
    .registers 6

    .line 765
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z
    .registers 22

    .line 209
    invoke-virtual {p0}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    :cond_1a
    invoke-virtual {p1, p2, v0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V

    if-eqz p2, :cond_26

    .line 216
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->-$$Nest$mqueryByComponentClass(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Ljava/lang/String;Ljava/util/List;)V

    .line 219
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v8, 0x1

    if-eqz p1, :cond_2e

    return v8

    .line 224
    :cond_2e
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v9, v0

    move v10, v9

    move v11, v10

    .line 228
    :goto_37
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v9, v0, :cond_67

    .line 229
    invoke-virtual {p1, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/firewall/IntentFirewall$Rule;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 230
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/firewall/AndFilter;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 232
    invoke-virtual {v0}, Lcom/android/server/firewall/IntentFirewall$Rule;->getBlock()Z

    move-result v1

    or-int/2addr v10, v1

    .line 233
    invoke-virtual {v0}, Lcom/android/server/firewall/IntentFirewall$Rule;->getLog()Z

    move-result v0

    or-int/2addr v11, v0

    if-eqz v10, :cond_64

    if-eqz v11, :cond_64

    goto :goto_67

    :cond_64
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    :cond_67
    :goto_67
    if-eqz v11, :cond_74

    move/from16 p0, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v6, p7

    .line 244
    invoke-static {p0, v3, v4, v6}, Lcom/android/server/firewall/IntentFirewall;->logIntent(ILandroid/content/Intent;ILjava/lang/String;)V

    :cond_74
    xor-int/lit8 p0, v10, 0x1

    return p0
.end method

.method public checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 16

    .line 190
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v3, 0x2

    iget v8, p6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 15

    .line 184
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    iget v8, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 173
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 175
    :cond_e
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V
    .registers 14

    .line 367
    const-string p0, "Error reading intent firewall rules from "

    const-string v0, "Error while closing "

    const-string v1, "IntentFirewall"

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_1b

    .line 369
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 374
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_167

    .line 381
    :try_start_20
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    .line 383
    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 385
    const-string/jumbo v7, "rules"

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 387
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 388
    :cond_32
    :goto_32
    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 391
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 392
    const-string v9, "activity"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_47

    move v8, v4

    goto :goto_5d

    .line 394
    :cond_47
    const-string v9, "broadcast"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    const/4 v8, 0x1

    goto :goto_5d

    .line 396
    :cond_51
    const-string/jumbo v9, "service"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    const/4 v8, 0x2

    goto :goto_5d

    :cond_5c
    move v8, v10

    :goto_5d
    if-eq v8, v10, :cond_32

    .line 401
    new-instance v9, Lcom/android/server/firewall/IntentFirewall$Rule;

    invoke-direct {v9}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>()V

    .line 402
    invoke-virtual {v9, v8}, Lcom/android/server/firewall/IntentFirewall$Rule;->setRuleType(I)V

    .line 404
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_6d} :catch_7a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_6d} :catch_77
    .catchall {:try_start_20 .. :try_end_6d} :catchall_74

    .line 409
    :try_start_6d
    invoke-virtual {v9, v5}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_70} :catch_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_70} :catch_7d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_77
    .catchall {:try_start_6d .. :try_end_70} :catchall_74

    .line 415
    :try_start_70
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :catchall_74
    move-exception p0

    goto/16 :goto_14f

    :catch_77
    move-exception p2

    goto/16 :goto_108

    :catch_7a
    move-exception p2

    goto/16 :goto_132

    :catch_7d
    move-exception v8

    .line 411
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading an intent firewall rule from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_92} :catch_7a
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_92} :catch_77
    .catchall {:try_start_70 .. :try_end_92} :catchall_74

    goto :goto_32

    .line 428
    :cond_93
    :try_start_93
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_aa

    :catch_97
    move-exception p0

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_aa
    move p0, v4

    .line 434
    :goto_ab
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_167

    .line 435
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 436
    aget-object v0, p2, p0

    move v1, v4

    .line 438
    :goto_ba
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_105

    .line 439
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/firewall/IntentFirewall$Rule;

    move v5, v4

    .line 440
    :goto_c7
    invoke-virtual {v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilterCount()I

    move-result v7

    if-ge v5, v7, :cond_d7

    .line 441
    invoke-virtual {v3, v5}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c7

    :cond_d7
    move v5, v4

    .line 443
    :goto_d8
    invoke-virtual {v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilterCount()I

    move-result v7

    if-ge v5, v7, :cond_e8

    .line 444
    invoke-virtual {v3, v5}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilter(I)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7, v3}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d8

    :cond_e8
    move v5, v4

    .line 447
    :goto_e9
    invoke-virtual {v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentClassExactFilterCount()I

    move-result v7

    if-ge v5, v7, :cond_f9

    .line 449
    invoke-virtual {v3, v5}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentClassExactFilter(I)Ljava/lang/String;

    move-result-object v7

    .line 448
    invoke-static {v0, v7, v3}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->-$$Nest$maddComponentClassExactFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e9

    .line 451
    :cond_f9
    invoke-virtual {v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentClassPatternFilterCount()I

    move-result v5

    if-lez v5, :cond_102

    .line 452
    invoke-static {v0, v3}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->-$$Nest$maddComponentClassPatternFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    :cond_102
    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    :cond_105
    add-int/lit8 p0, p0, 0x1

    goto :goto_ab

    .line 424
    :goto_108
    :try_start_108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11a
    .catchall {:try_start_108 .. :try_end_11a} :catchall_74

    .line 428
    :try_start_11a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    goto :goto_167

    :catch_11e
    move-exception p0

    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_167

    .line 421
    :goto_132
    :try_start_132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_144
    .catchall {:try_start_132 .. :try_end_144} :catchall_74

    .line 428
    :try_start_144
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_148

    goto :goto_167

    :catch_148
    move-exception p0

    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_124

    .line 428
    :goto_14f
    :try_start_14f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_153

    goto :goto_166

    :catch_153
    move-exception p2

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    :goto_166
    throw p0

    :catch_167
    :cond_167
    :goto_167
    return-void
.end method

.method public final readRulesDir(Ljava/io/File;)V
    .registers 8

    const/4 v0, 0x3

    .line 333
    new-array v1, v0, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_12

    .line 335
    new-instance v4, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall-IA;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 338
    :cond_12
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_30

    move v0, v2

    .line 340
    :goto_19
    array-length v3, p1

    if-ge v0, v3, :cond_30

    .line 341
    aget-object v3, p1, v0

    .line 343
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 344
    invoke-virtual {p0, v3, v1}, Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 349
    :cond_30
    const-string p1, "IntentFirewall"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read new rules (A:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " B:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    .line 350
    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " S:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v5, v1, v4

    .line 351
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface {p1}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 354
    :try_start_82
    aget-object v0, v1, v2

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 355
    aget-object v0, v1, v3

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 356
    aget-object v0, v1, v4

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 357
    monitor-exit p1

    return-void

    :catchall_90
    move-exception p0

    monitor-exit p1
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public signaturesMatch(II)Z
    .registers 5

    .line 770
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 773
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    .line 774
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->checkUidSignaturesForAllUsers(II)I

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_15

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 776
    :goto_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 777
    throw p0
.end method
