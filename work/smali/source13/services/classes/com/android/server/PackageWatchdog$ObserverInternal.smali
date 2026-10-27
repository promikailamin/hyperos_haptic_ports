.class Lcom/android/server/PackageWatchdog$ObserverInternal;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverInternal"
.end annotation


# instance fields
.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# direct methods
.method static bridge synthetic -$$Nest$mprunePackagesLocked(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->prunePackagesLocked(J)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 1178
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1172
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 1179
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 1180
    invoke-virtual {p0, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 1181
    return-void
.end method

.method private prunePackagesLocked(J)Ljava/util/Set;
    .registers 10
    .param p1, "elapsedMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation

    .line 1229
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1230
    .local v0, "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1231
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1233
    .local v2, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v3

    .line 1234
    .local v3, "oldState":I
    invoke-virtual {v2, p1, p2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->handleElapsedTimeLocked(J)I

    move-result v4

    .line 1235
    .local v4, "newState":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_4d

    if-ne v4, v5, :cond_4d

    .line 1237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed health check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageWatchdog"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_4d
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isExpiredLocked()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1241
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1243
    .end local v2    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v3    # "oldState":I
    .end local v4    # "newState":I
    :cond_56
    goto :goto_f

    .line 1244
    :cond_57
    return-object v0
.end method

.method public static read(Landroid/util/TypedXmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;
    .registers 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "watchdog"    # Lcom/android/server/PackageWatchdog;

    .line 1307
    const/4 v0, 0x0

    .line 1308
    .local v0, "observerName":Ljava/lang/String;
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "observer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PackageWatchdog"

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    .line 1309
    const-string/jumbo v1, "name"

    invoke-interface {p0, v3, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1311
    const-string v1, "Unable to read observer name"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return-object v3

    .line 1315
    :cond_24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 1318
    .local v4, "innerDepth":I
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1319
    const-string/jumbo v5, "package"

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_3e} :catch_70
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3e} :catch_70

    if-eqz v5, :cond_2d

    .line 1321
    :try_start_40
    invoke-virtual {p1, p0}, Lcom/android/server/PackageWatchdog;->parseMonitoredPackage(Landroid/util/TypedXmlPullParser;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v5

    .line 1322
    .local v5, "pkg":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v5, :cond_49

    .line 1323
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_49} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_49} :catch_70
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_49} :catch_70

    .line 1328
    .end local v5    # "pkg":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    :cond_49
    goto :goto_2d

    .line 1325
    :catch_4a
    move-exception v5

    .line 1326
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping package for observer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_61} :catch_70
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_61} :catch_70

    .line 1327
    goto :goto_2d

    .line 1334
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_62
    nop

    .line 1335
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1336
    return-object v3

    .line 1338
    :cond_6a
    new-instance v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-direct {v2, v0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 1331
    :catch_70
    move-exception v5

    .line 1332
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read observer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    return-object v3
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1343
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1344
    .local v0, "isPersistent":Z
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1346
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v3

    .line 1347
    .local v3, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Failures: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmFailureHistory(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Landroid/util/LongArrayQueue;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LongArrayQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Monitoring duration remaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmDurationMs(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Explicit health check duration: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmHealthCheckDurationMs(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Health check state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmHealthCheckState(Lcom/android/server/PackageWatchdog$MonitoredPackage;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mtoString(Lcom/android/server/PackageWatchdog$MonitoredPackage;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1354
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    goto/16 :goto_2d

    .line 1355
    :cond_d6
    return-void
.end method

.method public getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1286
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    return-object v0
.end method

.method public getMonitoredPackages()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public onPackageFailureLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1253
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 1254
    invoke-interface {v0, p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->mayObservePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1255
    invoke-static {}, Lcom/android/server/PackageWatchdog;->-$$Nest$sfgetsPackageWatchdog()Lcom/android/server/PackageWatchdog;

    move-result-object v0

    sget-wide v2, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->putMonitoredPackage(Lcom/android/server/PackageWatchdog$MonitoredPackage;)V

    .line 1258
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v0

    .line 1259
    .local v0, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v0, :cond_2f

    .line 1260
    invoke-virtual {v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->onFailureLocked()Z

    move-result v1

    return v1

    .line 1262
    :cond_2f
    return v1
.end method

.method public putMonitoredPackage(Lcom/android/server/PackageWatchdog$MonitoredPackage;)V
    .registers 4
    .param p1, "p"    # Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1296
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    return-void
.end method

.method public updatePackagesLocked(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 1206
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    const/4 v0, 0x0

    .local v0, "pIndex":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1207
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1208
    .local v1, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v2

    .line 1209
    .local v2, "existingPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v2, :cond_1f

    .line 1210
    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmDurationMs(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckDuration(J)V

    goto :goto_22

    .line 1212
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->putMonitoredPackage(Lcom/android/server/PackageWatchdog$MonitoredPackage;)V

    .line 1206
    .end local v1    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v2    # "existingPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1215
    .end local v0    # "pIndex":I
    :cond_25
    return-void
.end method

.method public writeLocked(Landroid/util/TypedXmlSerializer;)Z
    .registers 6
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;

    .line 1190
    const-string/jumbo v0, "observer"

    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1191
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1192
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 1193
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1194
    .local v3, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-virtual {v3, p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->writeLocked(Landroid/util/TypedXmlSerializer;)V

    .line 1192
    .end local v3    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1196
    .end local v2    # "i":I
    :cond_26
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_29} :catch_2b

    .line 1197
    const/4 v0, 0x1

    return v0

    .line 1198
    :catch_2b
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PackageWatchdog"

    const-string v2, "Cannot save observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1200
    const/4 v1, 0x0

    return v1
.end method
