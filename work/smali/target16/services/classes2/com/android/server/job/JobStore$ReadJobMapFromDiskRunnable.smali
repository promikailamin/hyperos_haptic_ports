.class public final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public final rtcGood:Z

.field public final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1106
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    .line 1110
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 1112
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 1113
    iput-object p4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1230
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .registers 5

    .line 1539
    const-string p0, "jobid"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1540
    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1541
    const-string v2, "class"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1542
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object p1
.end method

.method public final buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 13

    .line 1565
    const-string/jumbo p0, "net-capabilities-csv"

    const/4 v0, 0x0

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1567
    const-string/jumbo v1, "net-forbidden-capabilities-csv"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1569
    const-string/jumbo v2, "net-transport-types-csv"

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_1f

    if-nez v2, :cond_1b

    goto :goto_1f

    :cond_1b
    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    goto :goto_34

    .line 1572
    :cond_1f
    :goto_1f
    const-string/jumbo v3, "net-capabilities"

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1573
    const-string/jumbo v4, "net-unwanted-capabilities"

    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1575
    const-string/jumbo v5, "net-transport-types"

    invoke-interface {p2, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_34
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p0, :cond_98

    if-eqz v2, :cond_98

    .line 1581
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1582
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 1584
    invoke-static {p0}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object p0

    array-length v4, p0

    move v5, v6

    :goto_49
    if-ge v5, v4, :cond_53

    aget v8, p0, v5

    .line 1585
    invoke-virtual {v3, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 1588
    :cond_53
    invoke-static {v1}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object p0

    array-length v1, p0

    move v4, v6

    :goto_59
    if-ge v4, v1, :cond_63

    aget v5, p0, v4

    .line 1589
    invoke-virtual {v3, v5}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 1592
    :cond_63
    invoke-static {v2}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object p0

    array-length v1, p0

    :goto_68
    if-ge v6, v1, :cond_72

    aget v2, p0, v6

    .line 1593
    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 1596
    :cond_72
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-string v1, "estimated-download-bytes"

    const-wide/16 v2, -0x1

    .line 1598
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "estimated-upload-bytes"

    .line 1600
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1597
    invoke-virtual {p0, v4, v5, v8, v9}, Landroid/app/job/JobInfo$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-string/jumbo v1, "minimum-network-chunk-bytes"

    .line 1603
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1602
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumNetworkChunkBytes(J)Landroid/app/job/JobInfo$Builder;

    goto/16 :goto_123

    :cond_98
    if-eqz v3, :cond_f1

    if-eqz v5, :cond_f1

    .line 1608
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1609
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 1612
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_af
    const/16 v8, 0x19

    if-ge v3, v2, :cond_bd

    aget v9, v1, v3

    if-gt v9, v8, :cond_ba

    .line 1615
    invoke-virtual {p0, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    :cond_ba
    add-int/lit8 v3, v3, 0x1

    goto :goto_af

    .line 1618
    :cond_bd
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_c7
    if-ge v3, v2, :cond_d3

    aget v4, v1, v3

    if-gt v4, v8, :cond_d0

    .line 1621
    invoke-virtual {p0, v4}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    :cond_d0
    add-int/lit8 v3, v3, 0x1

    goto :goto_c7

    .line 1626
    :cond_d3
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    :goto_dc
    if-ge v6, v2, :cond_e9

    aget v3, v1, v6

    const/4 v4, 0x7

    if-gt v3, v4, :cond_e6

    .line 1629
    invoke-virtual {p0, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    :cond_e6
    add-int/lit8 v6, v6, 0x1

    goto :goto_dc

    .line 1632
    :cond_e9
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_123

    .line 1637
    :cond_f1
    const-string p0, "connectivity"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_fc

    .line 1639
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1641
    :cond_fc
    const-string/jumbo p0, "metered"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_109

    const/4 p0, 0x4

    .line 1643
    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1645
    :cond_109
    const-string/jumbo p0, "unmetered"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_116

    const/4 p0, 0x2

    .line 1647
    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1649
    :cond_116
    const-string/jumbo p0, "not-roaming"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_123

    const/4 p0, 0x3

    .line 1651
    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1655
    :cond_123
    :goto_123
    const-string p0, "idle"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12e

    .line 1657
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 1659
    :cond_12e
    const-string p0, "charging"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_139

    .line 1661
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1663
    :cond_139
    const-string p0, "battery-not-low"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_144

    .line 1665
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1667
    :cond_144
    const-string/jumbo p0, "storage-not-low"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_150

    .line 1669
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_150
    return-void
.end method

.method public final buildRtcExecutionTimesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;
    .registers 7

    .line 1699
    const-string p0, "delay"

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1700
    invoke-interface {p1, v2, p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1701
    const-string p0, "deadline"

    const-wide v3, 0x7fffffffffffffffL

    .line 1702
    invoke-interface {p1, v2, p0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    .line 1703
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .line 1678
    const-string p0, "initial-backoff"

    const/4 v0, 0x0

    invoke-interface {p2, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 1680
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1681
    const-string p0, "backoff-policy"

    invoke-interface {p2, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1682
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1683
    invoke-virtual {p1, v1, v2, p0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_1a
    return-void
.end method

.method public final readDebugTagsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Set;
    .registers 5

    .line 1767
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 1769
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    :goto_9
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3e

    .line 1771
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1772
    const-string v1, "debug-tag"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_3e

    .line 1776
    :cond_19
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_39

    .line 1779
    :try_start_21
    const-string/jumbo v0, "tag"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_31

    .line 1784
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :catch_31
    move-exception v0

    .line 1781
    const-string v1, "JobStore"

    const-string v2, "Invalid debug tag persisted to disk"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1770
    :cond_39
    :goto_39
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    goto :goto_9

    :cond_3e
    :goto_3e
    return-object p0
.end method

.method public final readJobMapImpl(Ljava/io/InputStream;ZJ)Ljava/util/List;
    .registers 14

    .line 1235
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 1237
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result p1

    :goto_8
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 1238
    const-string v8, "JobStore"

    if-eq p1, v6, :cond_2d

    if-eq p1, v7, :cond_2d

    .line 1240
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p1

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_2d
    const/4 v0, 0x0

    if-ne p1, v7, :cond_3c

    .line 1244
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 1245
    const-string p0, "No persisted jobs."

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-object v0

    .line 1250
    :cond_3c
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1251
    const-string v1, "job-info"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 1252
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    const-string/jumbo v1, "version"

    invoke-interface {v2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gt v3, v7, :cond_a7

    if-gez v3, :cond_59

    goto :goto_a7

    .line 1260
    :cond_59
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    :goto_5d
    if-ne v0, v6, :cond_99

    .line 1264
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1266
    const-string v1, "job"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    move-object v0, p0

    move v1, p2

    move-wide v4, p3

    .line 1268
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLcom/android/modules/utils/TypedXmlPullParser;IJ)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    move-object p2, v0

    if-eqz p0, :cond_93

    .line 1270
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result p3

    if-eqz p3, :cond_8f

    .line 1271
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Read out "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v8, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_8f
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 1275
    :cond_93
    const-string p0, "Error reading job from file."

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_99
    move v1, p2

    move-wide v4, p3

    move-object p2, p0

    .line 1279
    :goto_9c
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    if-ne v0, v7, :cond_a3

    return-object p1

    :cond_a3
    move-object p0, p2

    move p2, v1

    move-wide p3, v4

    goto :goto_5d

    .line 1256
    :cond_a7
    :goto_a7
    const-string p0, "Invalid version number, aborting jobs file read."

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    return-object v0
.end method

.method public final readJobWorkItemFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobWorkItem;
    .registers 12

    .line 1736
    const-string p0, "JobStore"

    new-instance v0, Landroid/app/job/JobWorkItem$Builder;

    invoke-direct {v0}, Landroid/app/job/JobWorkItem$Builder;-><init>()V

    .line 1738
    const-string v1, "delivery-count"

    const/4 v2, 0x0

    .line 1739
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobWorkItem$Builder;->setDeliveryCount(I)Landroid/app/job/JobWorkItem$Builder;

    move-result-object v1

    .line 1741
    const-string v3, "estimated-download-bytes"

    const-wide/16 v4, -0x1

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "estimated-upload-bytes"

    .line 1743
    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1740
    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/app/job/JobWorkItem$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobWorkItem$Builder;

    move-result-object v1

    const-string/jumbo v3, "minimum-network-chunk-bytes"

    .line 1745
    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobWorkItem$Builder;->setMinimumNetworkChunkBytes(J)Landroid/app/job/JobWorkItem$Builder;

    .line 1747
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1749
    :try_start_31
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 1750
    invoke-virtual {v0, p1}, Landroid/app/job/JobWorkItem$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobWorkItem$Builder;
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_38} :catch_44

    .line 1757
    :try_start_38
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem$Builder;->build()Landroid/app/job/JobWorkItem;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_3d

    return-object p0

    :catch_3d
    move-exception p1

    .line 1759
    const-string v0, "Invalid JobWorkItem"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_44
    move-exception p1

    .line 1752
    const-string v0, "Persisted extras contained invalid data"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public final readJobWorkItemsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .registers 6

    .line 1709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1711
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    :goto_9
    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    .line 1713
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1714
    const-string v2, "job-work-item"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_30

    .line 1719
    :cond_19
    :try_start_19
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobWorkItemFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobWorkItem;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1721
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception v1

    .line 1726
    const-string v2, "JobStore"

    const-string v3, "Problem with persisted JobWorkItem"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1712
    :cond_2b
    :goto_2b
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto :goto_9

    :cond_30
    :goto_30
    return-object v0
.end method

.method public final restoreJobFromXml(ZLcom/android/modules/utils/TypedXmlPullParser;IJ)Lcom/android/server/job/controllers/JobStatus;
    .registers 41

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v0, p3

    move-wide/from16 v3, p4

    .line 1298
    const-string v5, "JobStore"

    const/4 v6, 0x0

    .line 1302
    :try_start_b
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 1303
    invoke-virtual {v7, v8}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 1304
    const-string/jumbo v9, "uid"

    invoke-interface {v2, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_1e} :catch_353

    .line 1307
    const-string/jumbo v9, "priority"

    if-nez v0, :cond_31

    .line 1308
    :try_start_23
    invoke-interface {v2, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 1310
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_4f

    :cond_31
    if-lt v0, v8, :cond_4f

    .line 1313
    const-string v0, "bias"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 1315
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    .line 1317
    :cond_42
    invoke-interface {v2, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 1319
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 1322
    :cond_4f
    :goto_4f
    const-string v0, "flags"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 1324
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 1326
    :cond_5e
    const-string v0, "internalFlags"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 1328
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    goto :goto_6f

    :cond_6d
    const/16 v30, 0x0

    .line 1330
    :goto_6f
    const-string/jumbo v0, "sourceUserId"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7b

    const/4 v0, -0x1

    :goto_79
    move v14, v0

    goto :goto_80

    .line 1331
    :cond_7b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_79

    .line 1333
    :goto_80
    const-string v0, "lastSuccessfulRunTime"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v9, 0x0

    if-nez v0, :cond_8d

    move-wide/from16 v23, v9

    goto :goto_93

    .line 1334
    :cond_8d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v23, v15

    .line 1336
    :goto_93
    const-string v0, "lastFailedRunTime"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9e

    move-wide/from16 v25, v9

    goto :goto_a4

    .line 1337
    :cond_9e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v25, v15

    .line 1339
    :goto_a4
    const-string v0, "cumulativeExecutionTime"

    .line 1340
    invoke-interface {v2, v6, v0, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v27
    :try_end_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_aa} :catch_353

    .line 1346
    const-string/jumbo v0, "sourcePackageName"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1347
    const-string/jumbo v0, "namespace"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1348
    const-string/jumbo v0, "sourceTag"

    invoke-interface {v2, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1353
    :cond_c7
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v13, 0x4

    if-eq v0, v13, :cond_c7

    const/4 v15, 0x2

    if-ne v0, v15, :cond_df

    .line 1356
    const-string v0, "constraints"

    move-wide/from16 v19, v9

    .line 1357
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    :cond_df
    move-object/from16 v22, v6

    goto/16 :goto_352

    .line 1362
    :cond_e3
    :try_start_e3
    invoke-virtual {v1, v7, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_e6
    .catch Ljava/lang/NumberFormatException; {:try_start_e3 .. :try_end_e6} :catch_34b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e3 .. :try_end_e6} :catch_342
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_339
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e3 .. :try_end_e6} :catch_330

    .line 1377
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1381
    :goto_e9
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    if-eq v0, v13, :cond_32b

    if-eq v0, v15, :cond_f2

    return-object v6

    .line 1388
    :cond_f2
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;

    move-result-object v9

    .line 1390
    invoke-static {v9, v3, v4}, Lcom/android/server/job/JobStore;->-$$Nest$smconvertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v0

    .line 1392
    const-string/jumbo v10, "periodic"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19a

    .line 1394
    :try_start_107
    const-string/jumbo v8, "period"

    invoke-interface {v2, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v10, v14

    .line 1395
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1396
    const-string v8, "flex"

    invoke-interface {v2, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12b

    .line 1397
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v21, v9

    move-wide/from16 v8, v19

    goto :goto_12e

    :catch_128
    move-object/from16 v22, v6

    goto :goto_194

    :cond_12b
    move-object/from16 v21, v9

    move-wide v8, v13

    .line 1398
    :goto_12e
    invoke-virtual {v7, v13, v14, v8, v9}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    :try_end_131
    .catch Ljava/lang/NumberFormatException; {:try_start_107 .. :try_end_131} :catch_128

    move-object/from16 v22, v6

    .line 1403
    :try_start_133
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v31, v3, v13

    add-long v31, v31, v8

    cmp-long v6, v19, v31

    if-lez v6, :cond_192

    add-long v19, v3, v8

    add-long v19, v19, v13

    sub-long v8, v19, v8

    .line 1408
    const-string v6, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    .line 1411
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    .line 1412
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    const-wide/16 v33, 0x3e8

    div-long v31, v31, v33

    invoke-static/range {v31 .. v32}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1413
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    div-long v31, v31, v33

    invoke-static/range {v31 .. v32}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    div-long v31, v8, v33

    .line 1414
    invoke-static/range {v31 .. v32}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v15

    div-long v31, v19, v33

    move-wide/from16 v33, v8

    .line 1416
    invoke-static/range {v31 .. v32}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v13, v14, v0, v15, v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 1409
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_192
    .catch Ljava/lang/NumberFormatException; {:try_start_133 .. :try_end_192} :catch_194

    :cond_192
    :goto_192
    move-object v6, v0

    goto :goto_1e2

    .line 1423
    :catch_194
    :goto_194
    const-string v0, "Error reading periodic execution criteria, skipping."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v22

    :cond_19a
    move-object/from16 v22, v6

    move-object/from16 v21, v9

    move v10, v14

    .line 1426
    const-string/jumbo v6, "one-off"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30a

    .line 1428
    :try_start_1ac
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v8, v19

    if-eqz v6, :cond_1c4

    .line 1429
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1431
    :cond_1c4
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v6, v8, v13

    if-eqz v6, :cond_192

    .line 1432
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 1433
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v3

    .line 1432
    invoke-virtual {v7, v8, v9}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_1e1
    .catch Ljava/lang/NumberFormatException; {:try_start_1ac .. :try_end_1e1} :catch_304

    goto :goto_192

    .line 1446
    :goto_1e2
    invoke-virtual {v1, v7, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1448
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 1452
    :cond_1e8
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v8, 0x4

    if-eq v0, v8, :cond_1e8

    const/4 v9, 0x2

    if-ne v0, v9, :cond_2f8

    .line 1454
    const-string v0, "extras"

    .line 1455
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_200

    goto/16 :goto_2f8

    .line 1464
    :cond_200
    :try_start_200
    invoke-static {v2}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v8

    .line 1465
    invoke-virtual {v7, v8}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    :try_end_207
    .catch Ljava/lang/IllegalArgumentException; {:try_start_200 .. :try_end_207} :catch_2f1

    .line 1470
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v9, :cond_21e

    .line 1473
    const-string v13, "job-work-item"

    .line 1474
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21e

    .line 1475
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobWorkItemsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v13

    goto :goto_220

    :cond_21e
    move-object/from16 v13, v22

    :goto_220
    if-ne v0, v9, :cond_24e

    .line 1478
    const-string v0, "debug-info"

    .line 1479
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24e

    .line 1481
    :try_start_22e
    const-string/jumbo v0, "trace-tag"

    move-object/from16 v9, v22

    invoke-interface {v2, v9, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_23a} :catch_23b

    goto :goto_241

    :catch_23b
    move-exception v0

    .line 1483
    const-string v9, "Invalid trace tag persisted to disk"

    invoke-static {v5, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    :goto_241
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1486
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readDebugTagsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->addDebugTags(Ljava/util/Set;)Landroid/app/job/JobInfo$Builder;

    .line 1487
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    :cond_24e
    const/4 v1, 0x0

    .line 1501
    :try_start_24f
    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_253} :catch_2d5

    .line 1508
    const-string v2, "android"

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28b

    if-eqz v8, :cond_28b

    const-string v2, "SyncManagerJob"

    .line 1510
    invoke-virtual {v8, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_28b

    .line 1511
    const-string/jumbo v2, "owningPackage"

    invoke-virtual {v8, v2, v11}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1512
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_28b

    .line 1513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_28b
    invoke-static {v11, v10, v3, v4}, Lcom/android/server/job/JobSchedulerService;->standbyBucketAndReasonForPackage(Ljava/lang/String;IJ)J

    move-result-wide v2

    move v14, v10

    .line 1521
    new-instance v10, Lcom/android/server/job/controllers/JobStatus;

    .line 1522
    invoke-static {v11}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1523
    invoke-static {v2, v3}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v15

    invoke-static {v2, v3}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v16

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1525
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-eqz p1, :cond_2b3

    const/16 v29, 0x0

    goto :goto_2b5

    :cond_2b3
    move-object/from16 v29, v21

    :goto_2b5
    const/16 v31, 0x0

    move-object v11, v0

    move-wide/from16 v21, v2

    move-object v2, v13

    move-object v13, v4

    .line 1527
    invoke-direct/range {v10 .. v31}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;JJJJJLandroid/util/Pair;II)V

    if-eqz v2, :cond_2d4

    move v8, v1

    .line 1529
    :goto_2c2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2d4

    .line 1530
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    invoke-virtual {v10, v0}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c2

    :cond_2d4
    return-object v10

    :catch_2d5
    move-exception v0

    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to build job from XML, ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v22, 0x0

    return-object v22

    :catch_2f1
    move-exception v0

    .line 1467
    const-string v1, "Persisted extras contained invalid data"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v22

    .line 1456
    :cond_2f8
    :goto_2f8
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_303

    .line 1457
    const-string v0, "Error reading extras, skipping."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_303
    return-object v22

    .line 1436
    :catch_304
    const-string v0, "Error reading job execution criteria, skipping."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v22

    .line 1440
    :cond_30a
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_328

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_328
    const/16 v22, 0x0

    return-object v22

    :cond_32b
    move v8, v13

    const/4 v13, 0x0

    move v13, v8

    goto/16 :goto_e9

    :catch_330
    move-exception v0

    move-object/from16 v22, v6

    .line 1373
    const-string v1, "Constraints contained invalid data"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v22

    :catch_339
    move-exception v0

    move-object/from16 v22, v6

    .line 1370
    const-string v1, "Error I/O Exception."

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v22

    :catch_342
    move-exception v0

    move-object/from16 v22, v6

    .line 1367
    const-string v1, "Error Parser Exception."

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v22

    :catch_34b
    move-object/from16 v22, v6

    .line 1364
    const-string v0, "Error reading constraints, skipping."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_352
    return-object v22

    .line 1342
    :catch_353
    const-string v0, "Error parsing job\'s required fields, skipping"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    return-object v22
.end method

.method public run()V
    .registers 22

    move-object/from16 v1, p0

    .line 1118
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1119
    const-string v0, "JobStore"

    const-string v2, "jobs directory isn\'t a directory O.O"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    .line 1130
    :cond_1f
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_29} :catch_202

    if-nez v2, :cond_33

    .line 1136
    const-string v0, "JobStore"

    const-string v1, "Couldn\'t get job file list"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1140
    :cond_33
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 1142
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v5, v0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1143
    :try_start_3e
    array-length v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_45
    if-ge v8, v6, :cond_17f

    aget-object v14, v2, v8

    .line 1144
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v15, "jobs.xml"

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetSPLIT_FILE_PATTERN()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1145
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_72

    move-object/from16 v16, v2

    move/from16 v18, v6

    move/from16 v20, v8

    goto/16 :goto_177

    :catchall_6f
    move-exception v0

    goto/16 :goto_200

    .line 1149
    :cond_72
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0, v14}, Lcom/android/server/job/JobStore;->-$$Nest$mcreateJobFile(Lcom/android/server/job/JobStore;Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v0
    :try_end_78
    .catchall {:try_start_3e .. :try_end_78} :catchall_6f

    .line 1150
    :try_start_78
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v15
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_7c} :catch_133
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_78 .. :try_end_7c} :catch_111
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7c} :catch_111
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7c} :catch_102
    .catchall {:try_start_78 .. :try_end_7c} :catchall_6f

    .line 1151
    :try_start_7c
    iget-boolean v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-virtual {v1, v15, v0, v3, v4}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/InputStream;ZJ)Ljava/util/List;

    move-result-object v0
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_f3

    move-object/from16 v16, v2

    if-eqz v0, :cond_e5

    const/4 v7, 0x0

    .line 1153
    :goto_87
    :try_start_87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_e5

    .line 1154
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v17, v0

    .line 1155
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;
    :try_end_97
    .catchall {:try_start_87 .. :try_end_97} :catchall_e1

    move/from16 v18, v6

    .line 1156
    :try_start_99
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    move/from16 v19, v7

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v7
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_dd

    move/from16 v20, v8

    :try_start_a5
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v8

    .line 1155
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/job/JobStore$JobSet;->get(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_b2

    add-int/lit8 v13, v13, 0x1

    goto :goto_d4

    .line 1165
    :cond_b2
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 1166
    iput-wide v3, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1167
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    add-int/lit8 v9, v9, 0x1

    .line 1170
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    const/16 v6, 0x3e8

    if-ne v0, v6, :cond_d4

    add-int/lit8 v10, v10, 0x1

    .line 1172
    invoke-static {v2}, Lcom/android/server/job/JobStore;->-$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0
    :try_end_cc
    .catchall {:try_start_a5 .. :try_end_cc} :catchall_d1

    if-eqz v0, :cond_d4

    add-int/lit8 v11, v11, 0x1

    goto :goto_d4

    :catchall_d1
    move-exception v0

    :goto_d2
    move-object v2, v0

    goto :goto_f7

    :cond_d4
    :goto_d4
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v0, v17

    move/from16 v6, v18

    move/from16 v8, v20

    goto :goto_87

    :catchall_dd
    move-exception v0

    :goto_de
    move/from16 v20, v8

    goto :goto_d2

    :catchall_e1
    move-exception v0

    :goto_e2
    move/from16 v18, v6

    goto :goto_de

    :cond_e5
    move/from16 v18, v6

    move/from16 v20, v8

    if-eqz v15, :cond_153

    .line 1178
    :try_start_eb
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_eb .. :try_end_ee} :catch_139
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_eb .. :try_end_ee} :catch_f1
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_ef
    .catchall {:try_start_eb .. :try_end_ee} :catchall_6f

    goto :goto_153

    :catch_ef
    move-exception v0

    goto :goto_109

    :catch_f1
    move-exception v0

    goto :goto_118

    :catchall_f3
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_e2

    :goto_f7
    if-eqz v15, :cond_101

    .line 1150
    :try_start_f9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_fd

    goto :goto_101

    :catchall_fd
    move-exception v0

    :try_start_fe
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_101
    :goto_101
    throw v2
    :try_end_102
    .catch Ljava/io/FileNotFoundException; {:try_start_fe .. :try_end_102} :catch_139
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fe .. :try_end_102} :catch_f1
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_102} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_102} :catch_ef
    .catchall {:try_start_fe .. :try_end_102} :catchall_6f

    :catch_102
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v18, v6

    move/from16 v20, v8

    .line 1186
    :goto_109
    :try_start_109
    const-string v2, "JobStore"

    const-string v6, "Unexpected exception"

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_153

    :catch_111
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v18, v6

    move/from16 v20, v8

    .line 1182
    :goto_118
    const-string v2, "JobStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_153

    :catch_133
    move-object/from16 v16, v2

    move/from16 v18, v6

    move/from16 v20, v8

    .line 1180
    :catch_139
    const-string v0, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find jobs file: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_153
    :goto_153
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16a

    .line 1189
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "jobs_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_177

    :goto_168
    move v12, v2

    goto :goto_177

    .line 1195
    :cond_16a
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "jobs_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_177

    goto :goto_168

    :cond_177
    :goto_177
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v2, v16

    move/from16 v6, v18

    goto/16 :goto_45

    .line 1202
    :cond_17f
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iget v0, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v0, :cond_1a1

    .line 1203
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v9, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 1204
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v10, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 1205
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v11, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 1207
    :cond_1a1
    monitor-exit v5
    :try_end_1a2
    .catchall {:try_start_109 .. :try_end_1a2} :catchall_6f

    .line 1208
    const-string v0, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_1c4

    .line 1210
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$mmigrateJobFilesAsync(Lcom/android/server/job/JobStore;)V

    :cond_1c4
    if-lez v13, :cond_1e1

    .line 1214
    const-string v0, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " duplicate persisted jobs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_1e1
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0, v9}, Lcom/android/server/job/JobStore;->-$$Nest$fputmCurrentJobSetSize(Lcom/android/server/job/JobStore;I)V

    .line 1219
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmCurrentJobSetSize(Lcom/android/server/job/JobStore;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/job/JobStore;->-$$Nest$fputmScheduledJob30MinHighWaterMark(Lcom/android/server/job/JobStore;I)V

    .line 1220
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmScheduledJobHighWaterMarkLoggingRunnable(Lcom/android/server/job/JobStore;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1222
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1ff

    .line 1223
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1ff
    return-void

    .line 1207
    :goto_200
    :try_start_200
    monitor-exit v5
    :try_end_201
    .catchall {:try_start_200 .. :try_end_201} :catchall_6f

    throw v0

    :catch_202
    move-exception v0

    .line 1132
    const-string v1, "JobStore"

    const-string v2, "Not allowed to read job file directory"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
