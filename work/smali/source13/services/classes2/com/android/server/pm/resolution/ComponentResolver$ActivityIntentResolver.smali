.class public Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<",
        "Landroid/util/Pair<",
        "Lcom/android/server/pm/pkg/component/ParsedActivity;",
        "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
        ">;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 4
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userNeedsBadgingCache"    # Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 960
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1254
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    .line 961
    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 962
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 6
    .param p1, "orig"    # Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;
    .param p2, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p3, "userNeedsBadgingCache"    # Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 968
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 1254
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    .line 969
    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 970
    iput-object p3, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 971
    return-void
.end method

.method private log(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;II)V
    .registers 10
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .param p3, "match"    # I
    .param p4, "userId"    # I

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/content/IntentFilter;

    int-to-long v2, p3

    .line 1092
    const-string v4, "MATCH_"

    invoke-static {v1, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; intent info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1090
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void
.end method


# virtual methods
.method protected addActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "a"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1022
    .local p4, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;>;"
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1028
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_12
    if-ge v1, v0, :cond_5f

    .line 1029
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1030
    .local v2, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 1031
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    if-eqz p4, :cond_33

    const-string v4, "activity"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1032
    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    :cond_33
    invoke-virtual {v3}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_55

    .line 1039
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_55
    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    .line 1028
    .end local v2    # "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1043
    .end local v1    # "j":I
    :cond_5f
    return-void
.end method

.method public bridge synthetic addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V
    .registers 3

    .line 951
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    return-void
.end method

.method protected allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1066
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_35

    .line 1067
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1068
    .local v2, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1069
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1070
    const/4 v1, 0x0

    return v1

    .line 1066
    .end local v2    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1073
    .end local v0    # "i":I
    :cond_35
    return v1
.end method

.method protected bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 951
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V
    .registers 8
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1209
    .local p3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1210
    .local v0, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1212
    .local v1, "filter":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1213
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1214
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1215
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1216
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1215
    invoke-static {p1, v2, v3}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v2, " filter "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1218
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    return-void
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 951
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 8
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 1227
    move-object v0, p3

    check-cast v0, Landroid/util/Pair;

    .line 1229
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1230
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1231
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1232
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1233
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1232
    invoke-static {p1, v1, v2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const/4 v1, 0x1

    if-le p4, v1, :cond_3b

    .line 1235
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1237
    :cond_3b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1238
    return-void
.end method

.method protected filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1223
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    return-object p1
.end method

.method protected bridge synthetic filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 951
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    .line 1243
    .local p1, "input":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 951
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected getResolveList(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1247
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1085
    .local p2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 951
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Landroid/util/Pair;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 1079
    new-array v0, p1, [Landroid/util/Pair;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 951
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;
    .registers 29
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p3, "match"    # I
    .param p4, "userId"    # I
    .param p5, "customFlags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;IIJ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1101
    .local p2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v9, p4

    move-wide/from16 v10, p5

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1102
    .local v12, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1103
    .local v13, "info":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v14

    .line 1105
    .local v14, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    const/4 v15, 0x0

    if-nez v2, :cond_20

    .line 1109
    return-object v15

    .line 1112
    :cond_20
    nop

    .line 1113
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, p1

    invoke-interface {v8, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 1114
    .local v7, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v7, :cond_116

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_116

    .line 1115
    invoke-static {v7, v12, v10, v11, v9}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v2

    if-nez v2, :cond_3f

    move/from16 v5, p3

    move-object/from16 v17, v7

    goto/16 :goto_11a

    .line 1124
    :cond_3f
    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 1125
    .local v16, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    move-object v3, v12

    move-wide/from16 v4, p5

    move-object/from16 v6, v16

    move-object/from16 v17, v7

    .end local v7    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v7, p4

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1127
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v2, :cond_59

    .line 1132
    return-object v15

    .line 1134
    :cond_59
    const-wide/32 v3, 0x2000000

    and-long/2addr v3, v10

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_66

    const/4 v3, 0x1

    goto :goto_67

    :cond_66
    move v3, v4

    .line 1136
    .local v3, "matchExplicitlyVisibleOnly":Z
    :goto_67
    const-wide/32 v18, 0x1000000

    and-long v18, v10, v18

    cmp-long v8, v18, v5

    if-eqz v8, :cond_72

    const/4 v8, 0x1

    goto :goto_73

    :cond_72
    move v8, v4

    .line 1138
    .local v8, "matchVisibleToInstantApp":Z
    :goto_73
    if-eqz v8, :cond_86

    .line 1140
    invoke-virtual {v14}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v18

    if-eqz v18, :cond_86

    if-eqz v3, :cond_83

    .line 1142
    invoke-virtual {v14}, Landroid/content/IntentFilter;->isExplicitlyVisibleToInstantApp()Z

    move-result v18

    if-eqz v18, :cond_86

    :cond_83
    const/16 v18, 0x1

    goto :goto_88

    :cond_86
    move/from16 v18, v4

    .line 1143
    .local v18, "componentVisible":Z
    :goto_88
    const-wide/32 v19, 0x800000

    and-long v19, v10, v19

    cmp-long v19, v19, v5

    if-eqz v19, :cond_92

    const/4 v4, 0x1

    .line 1145
    .local v4, "matchInstantApp":Z
    :cond_92
    if-eqz v8, :cond_9d

    if-nez v18, :cond_9d

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v19

    if-nez v19, :cond_9d

    .line 1157
    return-object v15

    .line 1160
    :cond_9d
    if-nez v4, :cond_a6

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v19

    if-eqz v19, :cond_a6

    .line 1164
    return-object v15

    .line 1168
    :cond_a6
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v19

    if-eqz v19, :cond_b3

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->isUpdateAvailable()Z

    move-result v19

    if-eqz v19, :cond_b3

    .line 1172
    return-object v15

    .line 1174
    :cond_b3
    new-instance v15, Landroid/content/pm/ResolveInfo;

    .line 1175
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v14, v7}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v15, v7}, Landroid/content/pm/ResolveInfo;-><init>(Z)V

    move-object v7, v15

    .line 1176
    .local v7, "res":Landroid/content/pm/ResolveInfo;
    iput-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1177
    const-wide/16 v20, 0x40

    and-long v20, v10, v20

    cmp-long v5, v20, v5

    if-eqz v5, :cond_cb

    .line 1178
    iput-object v14, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1180
    :cond_cb
    invoke-virtual {v14}, Landroid/content/IntentFilter;->handleAllWebDataURI()Z

    move-result v5

    iput-boolean v5, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 1181
    invoke-virtual {v14}, Landroid/content/IntentFilter;->getPriority()I

    move-result v5

    iput v5, v7, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1186
    move/from16 v5, p3

    iput v5, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 1187
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v6

    iput-boolean v6, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1188
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    move-result v6

    iput v6, v7, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1189
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1190
    iget-object v6, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v6, v9}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 1191
    const/4 v6, 0x1

    iput-boolean v6, v7, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_ff

    .line 1193
    :cond_f9
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v6

    iput v6, v7, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1195
    :goto_ff
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v6

    iput v6, v7, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 1196
    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    iput-boolean v6, v7, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1197
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v6

    iput-boolean v6, v7, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1198
    return-object v7

    .line 1114
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "matchExplicitlyVisibleOnly":Z
    .end local v4    # "matchInstantApp":Z
    .end local v8    # "matchVisibleToInstantApp":Z
    .end local v16    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v18    # "componentVisible":Z
    .local v7, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_116
    move/from16 v5, p3

    move-object/from16 v17, v7

    .line 1122
    .end local v7    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_11a
    return-object v15
.end method

.method protected bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 14

    .line 951
    move-object v2, p2

    check-cast v2, Landroid/util/Pair;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 16
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 984
    const/4 v0, 0x0

    return-object v0

    .line 986
    :cond_a
    const-wide/32 v0, 0x10000

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p6

    move-wide v7, p4

    invoke-super/range {v1 .. v8}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 18
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 976
    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 977
    :cond_d
    if-eqz p4, :cond_12

    const/high16 v0, 0x10000

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    int-to-long v10, v0

    .line 978
    .local v10, "flags":J
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide v6, v10

    invoke-super/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .registers 22
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 993
    .local p6, "packageActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    move-object v9, p0

    move-object/from16 v10, p6

    iget-object v0, v9, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v11, p7

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 994
    const/4 v0, 0x0

    return-object v0

    .line 996
    :cond_f
    if-nez v10, :cond_16

    .line 997
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 999
    :cond_16
    const-wide/32 v0, 0x10000

    and-long v0, p4, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    move v4, v0

    .line 1000
    .local v4, "defaultOnly":Z
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v12

    .line 1001
    .local v12, "activitiesSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    .line 1005
    .local v13, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v12, :cond_66

    .line 1006
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 1007
    .local v1, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v2

    .line 1008
    .local v2, "intentFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    .line 1009
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object v3

    .line 1010
    .local v3, "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    const/4 v5, 0x0

    .local v5, "arrayIndex":I
    :goto_4b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_60

    .line 1011
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1010
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 1013
    .end local v5    # "arrayIndex":I
    :cond_60
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    .end local v1    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v3    # "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 1016
    .end local v0    # "i":I
    .end local v2    # "intentFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    :cond_66
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v13

    move/from16 v6, p7

    move-wide/from16 v7, p4

    invoke-super/range {v0 .. v8}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected removeActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;)V
    .registers 8
    .param p1, "a"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .param p2, "type"    # Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1052
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_12
    if-ge v1, v0, :cond_2c

    .line 1053
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1054
    .local v2, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 1059
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 1052
    .end local v2    # "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1061
    .end local v1    # "j":I
    :cond_2c
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1203
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1204
    return-void
.end method

.method public bridge synthetic updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 951
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
