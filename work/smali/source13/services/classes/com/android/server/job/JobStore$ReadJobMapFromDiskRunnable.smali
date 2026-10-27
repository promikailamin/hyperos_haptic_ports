.class final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final rtcGood:Z

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .registers 4
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p3, "rtcIsGood"    # Z

    .line 707
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 709
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 710
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1047
    const/4 v0, 0x0

    const-string/jumbo v1, "jobid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1048
    .local v1, "jobId":I
    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1049
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "class"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    .local v3, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 19
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1070
    .local v2, "netCapabilitiesLong":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1071
    .local v3, "netForbiddenCapabilitiesLong":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1073
    .local v4, "netTransportTypesLong":Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v6, "net-capabilities-csv"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1075
    .local v6, "netCapabilitiesIntArray":Ljava/lang/String;
    const-string/jumbo v7, "net-forbidden-capabilities-csv"

    invoke-interface {v1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1077
    .local v7, "netForbiddenCapabilitiesIntArray":Ljava/lang/String;
    const-string/jumbo v8, "net-transport-types-csv"

    invoke-interface {v1, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1079
    .local v8, "netTransportTypesIntArray":Ljava/lang/String;
    if-eqz v6, :cond_21

    if-nez v8, :cond_36

    .line 1080
    :cond_21
    const-string/jumbo v9, "net-capabilities"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1081
    const-string/jumbo v9, "net-unwanted-capabilities"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    const-string/jumbo v9, "net-transport-types"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1086
    :cond_36
    if-eqz v6, :cond_7d

    if-eqz v8, :cond_7d

    .line 1087
    new-instance v11, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v11}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1088
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v11

    .line 1090
    .local v11, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-static {v6}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_49
    if-ge v14, v13, :cond_53

    aget v15, v12, v14

    .line 1091
    .local v15, "capability":I
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1090
    .end local v15    # "capability":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_49

    .line 1094
    :cond_53
    invoke-static {v7}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_59
    if-ge v14, v13, :cond_63

    aget v15, v12, v14

    .line 1095
    .local v15, "forbiddenCapability":I
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1094
    .end local v15    # "forbiddenCapability":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_59

    .line 1098
    :cond_63
    invoke-static {v8}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    const/4 v9, 0x0

    :goto_69
    if-ge v9, v13, :cond_73

    aget v14, v12, v9

    .line 1099
    .local v14, "transport":I
    invoke-virtual {v11, v14}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1098
    .end local v14    # "transport":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    .line 1101
    :cond_73
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 1102
    .end local v11    # "builder":Landroid/net/NetworkRequest$Builder;
    move-object v9, v5

    goto/16 :goto_110

    :cond_7d
    if-eqz v2, :cond_dc

    if-eqz v4, :cond_dc

    .line 1103
    new-instance v11, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v11}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1104
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v11

    .line 1105
    .restart local v11    # "builder":Landroid/net/NetworkRequest$Builder;
    const/16 v12, 0x19

    .line 1107
    .local v12, "maxNetCapabilityInR":I
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_96
    const/16 v9, 0x19

    if-ge v15, v14, :cond_a4

    aget v10, v13, v15

    .line 1109
    .local v10, "capability":I
    if-gt v10, v9, :cond_a1

    .line 1110
    invoke-virtual {v11, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1107
    .end local v10    # "capability":I
    :cond_a1
    add-int/lit8 v15, v15, 0x1

    goto :goto_96

    .line 1113
    :cond_a4
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v10

    array-length v13, v10

    const/4 v14, 0x0

    :goto_ae
    if-ge v14, v13, :cond_ba

    aget v15, v10, v14

    .line 1115
    .restart local v15    # "forbiddenCapability":I
    if-gt v15, v9, :cond_b7

    .line 1116
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1113
    .end local v15    # "forbiddenCapability":I
    :cond_b7
    add-int/lit8 v14, v14, 0x1

    goto :goto_ae

    .line 1120
    :cond_ba
    const/4 v9, 0x7

    .line 1121
    .local v9, "maxTransportInR":I
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v10

    array-length v13, v10

    const/4 v14, 0x0

    :goto_c5
    if-ge v14, v13, :cond_d3

    aget v15, v10, v14

    .line 1123
    .local v15, "transport":I
    const/4 v5, 0x7

    if-gt v15, v5, :cond_cf

    .line 1124
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1121
    .end local v15    # "transport":I
    :cond_cf
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_c5

    .line 1127
    :cond_d3
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 1128
    .end local v9    # "maxTransportInR":I
    .end local v11    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v12    # "maxNetCapabilityInR":I
    const/4 v9, 0x0

    goto :goto_110

    .line 1130
    :cond_dc
    const-string v5, "connectivity"

    const/4 v9, 0x0

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1131
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_e9

    .line 1132
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1134
    :cond_e9
    const-string/jumbo v10, "metered"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1135
    if-eqz v5, :cond_f6

    .line 1136
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1138
    :cond_f6
    const-string/jumbo v10, "unmetered"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1139
    if-eqz v5, :cond_103

    .line 1140
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1142
    :cond_103
    const-string/jumbo v10, "not-roaming"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1143
    if-eqz v5, :cond_110

    .line 1144
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1148
    .end local v5    # "val":Ljava/lang/String;
    :cond_110
    :goto_110
    const-string/jumbo v5, "idle"

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1149
    .restart local v5    # "val":Ljava/lang/String;
    if-eqz v5, :cond_11e

    .line 1150
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    goto :goto_11f

    .line 1149
    :cond_11e
    const/4 v10, 0x1

    .line 1152
    :goto_11f
    const-string v11, "charging"

    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1153
    if-eqz v5, :cond_12a

    .line 1154
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1156
    :cond_12a
    const-string v11, "battery-not-low"

    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1157
    if-eqz v5, :cond_135

    .line 1158
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1160
    :cond_135
    const-string/jumbo v11, "storage-not-low"

    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1161
    if-eqz v5, :cond_141

    .line 1162
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1164
    :cond_141
    return-void
.end method

.method private buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1195
    const/4 v0, 0x0

    const-string v1, "delay"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 1197
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_10

    .line 1198
    :cond_e
    const-wide/16 v2, 0x0

    :goto_10
    nop

    .line 1199
    .local v2, "earliestRunTimeRtc":J
    const-string v4, "deadline"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    .end local v1    # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 1201
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_23

    .line 1202
    :cond_1e
    const-wide v4, 0x7fffffffffffffffL

    :goto_23
    nop

    .line 1203
    .local v4, "latestRunTimeRtc":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1171
    const/4 v0, 0x0

    const-string/jumbo v1, "initial-backoff"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 1173
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1174
    .local v2, "initialBackoff":J
    const-string v4, "backoff-policy"

    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1175
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1176
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 1178
    .end local v0    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_1b
    return-void
.end method

.method private readJobMapImpl(Ljava/io/InputStream;Z)Ljava/util/List;
    .registers 14
    .param p1, "fis"    # Ljava/io/InputStream;
    .param p2, "rtcIsGood"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    const-string v0, "Invalid version number, aborting jobs file read."

    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 763
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 764
    .local v2, "eventType":I
    :goto_a
    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "JobStore"

    if-eq v2, v3, :cond_31

    if-eq v2, v4, :cond_31

    .line 766
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 769
    :cond_31
    const/4 v6, 0x0

    if-ne v2, v4, :cond_40

    .line 770
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 771
    const-string v0, "No persisted jobs."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_3f
    return-object v6

    .line 776
    :cond_40
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 777
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "job-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 778
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v8, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_52
    const-string/jumbo v9, "version"

    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_5d} :catch_ad

    .line 783
    .local v9, "version":I
    if-gt v9, v4, :cond_a9

    if-gez v9, :cond_62

    goto :goto_a9

    .line 790
    :cond_62
    nop

    .line 791
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 794
    .end local v2    # "eventType":I
    .local v0, "eventType":I
    :cond_67
    if-ne v0, v3, :cond_a2

    .line 795
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 797
    .end local v7    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "job"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 798
    invoke-direct {p0, p2, v1, v9}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    .line 799
    .local v6, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v6, :cond_9c

    .line 800
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 801
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read out "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_98
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 805
    :cond_9c
    const-string v7, "Error reading job from file."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    .end local v6    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_a1
    :goto_a1
    move-object v7, v2

    .end local v2    # "tagName":Ljava/lang/String;
    .restart local v7    # "tagName":Ljava/lang/String;
    :cond_a2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 810
    if-ne v0, v4, :cond_67

    .line 811
    return-object v8

    .line 784
    .end local v0    # "eventType":I
    .local v2, "eventType":I
    :cond_a9
    :goto_a9
    :try_start_a9
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_ac} :catch_ad

    .line 785
    return-object v6

    .line 787
    .end local v9    # "version":I
    :catch_ad
    move-exception v3

    .line 788
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-object v6

    .line 813
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_b2
    return-object v6
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/job/controllers/JobStatus;
    .registers 44
    .param p1, "rtcIsGood"    # Z
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "schemaVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "JobStore"

    const/4 v5, 0x0

    .line 831
    .local v5, "internalFlags":I
    const/4 v6, 0x0

    :try_start_a
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    move-object v7, v0

    .line 832
    .local v7, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 833
    const-string/jumbo v8, "uid"

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_1e} :catch_3b6

    .line 836
    .local v11, "uid":I
    const-string/jumbo v8, "priority"

    if-nez v3, :cond_31

    .line 837
    :try_start_23
    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 838
    .local v8, "val":Ljava/lang/String;
    if-eqz v8, :cond_4f

    .line 839
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_4f

    .line 841
    .end local v8    # "val":Ljava/lang/String;
    :cond_31
    if-lt v3, v0, :cond_4f

    .line 842
    const-string v9, "bias"

    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 843
    .local v9, "val":Ljava/lang/String;
    if-eqz v9, :cond_42

    .line 844
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    .line 846
    :cond_42
    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 847
    .end local v9    # "val":Ljava/lang/String;
    .restart local v8    # "val":Ljava/lang/String;
    if-eqz v8, :cond_4f

    .line 848
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 851
    .end local v8    # "val":Ljava/lang/String;
    :cond_4f
    :goto_4f
    const-string v8, "flags"

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 852
    .restart local v8    # "val":Ljava/lang/String;
    if-eqz v8, :cond_5e

    .line 853
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 855
    :cond_5e
    const-string/jumbo v9, "internalFlags"

    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 856
    if-eqz v8, :cond_6d

    .line 857
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_6c} :catch_3b6

    move v5, v9

    .line 859
    :cond_6d
    :try_start_6d
    const-string/jumbo v9, "sourceUserId"

    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 860
    if-nez v8, :cond_79

    const/4 v9, -0x1

    goto :goto_7d

    :cond_79
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_7d
    move v15, v9

    .line 862
    .local v15, "sourceUserId":I
    const-string/jumbo v9, "lastSuccessfulRunTime"

    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 863
    if-nez v8, :cond_8b

    const-wide/16 v20, 0x0

    goto :goto_91

    :cond_8b
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide/from16 v20, v12

    .line 865
    .local v20, "lastSuccessfulRunTime":J
    :goto_91
    const-string/jumbo v12, "lastFailedRunTime"

    invoke-interface {v2, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 866
    if-nez v8, :cond_9e

    const-wide/16 v22, 0x0

    goto :goto_a4

    :cond_9e
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_a2} :catch_3b3

    move-wide/from16 v22, v12

    .line 870
    .end local v8    # "val":Ljava/lang/String;
    .local v22, "lastFailedRunTime":J
    :goto_a4
    nop

    .line 872
    const-string/jumbo v8, "sourcePackageName"

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 873
    .local v8, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v12, "sourceTag"

    invoke-interface {v2, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 878
    .local v27, "sourceTag":Ljava/lang/String;
    :goto_b3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 879
    .local v12, "eventType":I
    const/4 v13, 0x4

    if-eq v12, v13, :cond_3a5

    .line 881
    const/4 v14, 0x2

    if-ne v12, v14, :cond_39f

    .line 882
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "constraints"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d0

    move v3, v5

    move-object v5, v6

    move-object v6, v8

    move/from16 v32, v15

    goto/16 :goto_3a4

    .line 887
    :cond_d0
    :try_start_d0
    invoke-direct {v1, v7, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_d3
    .catch Ljava/lang/NumberFormatException; {:try_start_d0 .. :try_end_d3} :catch_391
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_d3} :catch_383
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_375
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d0 .. :try_end_d3} :catch_367

    .line 900
    nop

    .line 902
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 906
    :goto_d7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 907
    if-eq v12, v13, :cond_353

    .line 908
    if-eq v12, v14, :cond_e0

    .line 909
    return-object v6

    .line 915
    :cond_e0
    :try_start_e0
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v9
    :try_end_e4
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_e4} :catch_33f

    .line 921
    .local v9, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    nop

    .line 923
    sget-object v10, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v10}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 924
    .local v13, "elapsedNow":J
    invoke-static {v9, v13, v14}, Lcom/android/server/job/JobStore;->-$$Nest$smconvertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v10

    .line 926
    .local v10, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "periodic"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 928
    :try_start_fc
    const-string/jumbo v0, "period"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v28, v16

    .line 930
    .local v28, "periodMillis":J
    const-string v6, "flex"

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_111
    .catch Ljava/lang/NumberFormatException; {:try_start_fc .. :try_end_111} :catch_1b1

    move-object v0, v6

    .line 931
    if-eqz v0, :cond_125

    :try_start_114
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_114 .. :try_end_11c} :catch_11d

    goto :goto_127

    .line 956
    .end local v0    # "val":Ljava/lang/String;
    .end local v28    # "periodMillis":J
    :catch_11d
    move-exception v0

    move v3, v5

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    goto/16 :goto_1b7

    .line 931
    .restart local v0    # "val":Ljava/lang/String;
    .restart local v28    # "periodMillis":J
    :cond_125
    move-wide/from16 v16, v28

    :goto_127
    move-wide/from16 v30, v16

    .line 932
    .local v30, "flexMillis":J
    move v3, v5

    move-wide/from16 v5, v28

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-wide/from16 v8, v30

    .end local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v30    # "flexMillis":J
    .local v3, "internalFlags":I
    .local v5, "periodMillis":J
    .local v8, "flexMillis":J
    .local v28, "sourcePackageName":Ljava/lang/String;
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :try_start_132
    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 937
    move-object/from16 v16, v0

    .end local v0    # "val":Ljava/lang/String;
    .local v16, "val":Ljava/lang/String;
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    add-long v32, v13, v5

    add-long v32, v32, v8

    cmp-long v0, v30, v32

    if-lez v0, :cond_1ab

    .line 938
    add-long v30, v13, v8

    add-long v30, v30, v5

    .line 940
    .local v30, "clampedLateRuntimeElapsed":J
    sub-long v32, v30, v8

    .line 942
    .local v32, "clampedEarlyRuntimeElapsed":J
    const-string v0, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    move-wide/from16 v34, v5

    .end local v5    # "periodMillis":J
    .local v34, "periodMillis":J
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 945
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x0

    aput-object v6, v5, v17

    iget-object v6, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 946
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    aput-object v6, v5, v17

    iget-object v6, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 947
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x2

    aput-object v6, v5, v17

    const/4 v6, 0x3

    div-long v36, v32, v38

    .line 948
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    div-long v36, v30, v38

    .line 950
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x4

    aput-object v6, v5, v17

    .line 943
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    nop

    .line 954
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_1a9
    .catch Ljava/lang/NumberFormatException; {:try_start_132 .. :try_end_1a9} :catch_1af

    move-object v10, v0

    .end local v10    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    goto :goto_1ad

    .line 937
    .end local v0    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v30    # "clampedLateRuntimeElapsed":J
    .end local v32    # "clampedEarlyRuntimeElapsed":J
    .end local v34    # "periodMillis":J
    .restart local v5    # "periodMillis":J
    .restart local v10    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_1ab
    move-wide/from16 v34, v5

    .line 959
    .end local v5    # "periodMillis":J
    .end local v8    # "flexMillis":J
    .end local v16    # "val":Ljava/lang/String;
    :goto_1ad
    move-object v5, v10

    goto :goto_212

    .line 956
    :catch_1af
    move-exception v0

    goto :goto_1b7

    .end local v3    # "internalFlags":I
    .end local v28    # "sourcePackageName":Ljava/lang/String;
    .end local v29    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v5, "internalFlags":I
    .local v8, "sourcePackageName":Ljava/lang/String;
    .restart local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_1b1
    move-exception v0

    move v3, v5

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    .line 957
    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "internalFlags":I
    .restart local v28    # "sourcePackageName":Ljava/lang/String;
    .restart local v29    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_1b7
    const-string v5, "Error reading periodic execution criteria, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v4, 0x0

    return-object v4

    .line 960
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "internalFlags":I
    .end local v28    # "sourcePackageName":Ljava/lang/String;
    .end local v29    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v5    # "internalFlags":I
    .restart local v8    # "sourcePackageName":Ljava/lang/String;
    .restart local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_1be
    move v3, v5

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v3    # "internalFlags":I
    .restart local v28    # "sourcePackageName":Ljava/lang/String;
    .restart local v29    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "one-off"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_317

    .line 962
    :try_start_1d0
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_1d8
    .catch Ljava/lang/NumberFormatException; {:try_start_1d0 .. :try_end_1d8} :catch_309

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_1f4

    .line 963
    :try_start_1de
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v13

    invoke-virtual {v7, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    :try_end_1ea
    .catch Ljava/lang/NumberFormatException; {:try_start_1de .. :try_end_1ea} :catch_1eb

    goto :goto_1f4

    .line 969
    :catch_1eb
    move-exception v0

    move-wide/from16 v30, v13

    move/from16 v32, v15

    move-object/from16 v9, v28

    goto/16 :goto_310

    .line 965
    :cond_1f4
    :goto_1f4
    :try_start_1f4
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_1fc
    .catch Ljava/lang/NumberFormatException; {:try_start_1f4 .. :try_end_1fc} :catch_309

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v5, v8

    if-eqz v0, :cond_211

    .line 966
    :try_start_205
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 967
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v13

    .line 966
    invoke-virtual {v7, v5, v6}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_211
    .catch Ljava/lang/NumberFormatException; {:try_start_205 .. :try_end_211} :catch_1eb

    .line 972
    :cond_211
    move-object v5, v10

    .line 980
    .end local v10    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v5, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_212
    invoke-direct {v1, v7, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 982
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 986
    :goto_218
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 987
    .end local v12    # "eventType":I
    .local v6, "eventType":I
    const/4 v0, 0x4

    if-eq v6, v0, :cond_2fe

    .line 988
    const/4 v8, 0x2

    if-ne v6, v8, :cond_2eb

    .line 989
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "extras"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_236

    move-wide/from16 v30, v13

    move/from16 v32, v15

    move-object/from16 v9, v28

    goto/16 :goto_2f1

    .line 998
    :cond_236
    :try_start_236
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v8, v0

    .line 999
    .local v8, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v7, v8}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    :try_end_23e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_236 .. :try_end_23e} :catch_2dd

    .line 1003
    nop

    .line 1004
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 1016
    const/4 v0, 0x0

    :try_start_243
    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->build(Z)Landroid/app/job/JobInfo;

    move-result-object v10
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_247} :catch_2b8

    .line 1020
    .local v10, "builtJob":Landroid/app/job/JobInfo;
    nop

    .line 1023
    const-string v0, "android"

    move-object/from16 v9, v28

    .end local v28    # "sourcePackageName":Ljava/lang/String;
    .local v9, "sourcePackageName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_287

    if-eqz v8, :cond_287

    .line 1025
    const-string v0, "SyncManagerJob"

    const/4 v12, 0x0

    invoke-virtual {v8, v0, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_287

    .line 1026
    const-string/jumbo v0, "owningPackage"

    invoke-virtual {v8, v0, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .local v0, "sourcePackageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v9

    if-eqz v9, :cond_288

    .line 1028
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "\'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_288

    .line 1034
    .end local v0    # "sourcePackageName":Ljava/lang/String;
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    :cond_287
    move-object v0, v9

    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v0    # "sourcePackageName":Ljava/lang/String;
    :cond_288
    :goto_288
    invoke-static {v0, v15, v13, v14}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v4

    .line 1036
    .local v4, "appBucket":I
    new-instance v28, Lcom/android/server/job/controllers/JobStatus;

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    .line 1039
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1041
    if-eqz p1, :cond_2a3

    const/16 v24, 0x0

    goto :goto_2a5

    :cond_2a3
    move-object/from16 v24, v29

    :goto_2a5
    const/16 v26, 0x0

    move-object/from16 v9, v28

    move-object v12, v0

    move-wide/from16 v30, v13

    .end local v13    # "elapsedNow":J
    .local v30, "elapsedNow":J
    move v13, v15

    move v14, v4

    move/from16 v32, v15

    .end local v15    # "sourceUserId":I
    .local v32, "sourceUserId":I
    move-object/from16 v15, v27

    move/from16 v25, v3

    invoke-direct/range {v9 .. v26}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;JJJJLandroid/util/Pair;II)V

    .line 1042
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v9

    .line 1017
    .end local v0    # "sourcePackageName":Ljava/lang/String;
    .end local v4    # "appBucket":I
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "builtJob":Landroid/app/job/JobInfo;
    .end local v30    # "elapsedNow":J
    .end local v32    # "sourceUserId":I
    .restart local v13    # "elapsedNow":J
    .restart local v15    # "sourceUserId":I
    .restart local v28    # "sourcePackageName":Ljava/lang/String;
    :catch_2b8
    move-exception v0

    move-wide/from16 v30, v13

    move/from16 v32, v15

    move-object/from16 v9, v28

    move-object v10, v0

    .end local v13    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .end local v28    # "sourcePackageName":Ljava/lang/String;
    .local v9, "sourcePackageName":Ljava/lang/String;
    .restart local v30    # "elapsedNow":J
    .restart local v32    # "sourceUserId":I
    move-object v0, v10

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to build job from XML, ignoring: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    const/4 v10, 0x0

    return-object v10

    .line 1000
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "extras":Landroid/os/PersistableBundle;
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v30    # "elapsedNow":J
    .end local v32    # "sourceUserId":I
    .restart local v13    # "elapsedNow":J
    .restart local v15    # "sourceUserId":I
    .restart local v28    # "sourcePackageName":Ljava/lang/String;
    :catch_2dd
    move-exception v0

    move-wide/from16 v30, v13

    move/from16 v32, v15

    move-object/from16 v9, v28

    const/4 v10, 0x0

    .line 1001
    .end local v13    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .end local v28    # "sourcePackageName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v30    # "elapsedNow":J
    .restart local v32    # "sourceUserId":I
    const-string v8, "Persisted extras contained invalid data"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1002
    return-object v10

    .line 988
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v30    # "elapsedNow":J
    .end local v32    # "sourceUserId":I
    .restart local v13    # "elapsedNow":J
    .restart local v15    # "sourceUserId":I
    .restart local v28    # "sourcePackageName":Ljava/lang/String;
    :cond_2eb
    move-wide/from16 v30, v13

    move/from16 v32, v15

    move-object/from16 v9, v28

    .line 990
    .end local v13    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .end local v28    # "sourcePackageName":Ljava/lang/String;
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v30    # "elapsedNow":J
    .restart local v32    # "sourceUserId":I
    :goto_2f1
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2fc

    .line 991
    const-string v0, "Error reading extras, skipping."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_2fc
    const/4 v4, 0x0

    return-object v4

    .line 987
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v30    # "elapsedNow":J
    .end local v32    # "sourceUserId":I
    .restart local v13    # "elapsedNow":J
    .restart local v15    # "sourceUserId":I
    .restart local v28    # "sourcePackageName":Ljava/lang/String;
    :cond_2fe
    move-wide/from16 v30, v13

    move/from16 v32, v15

    move-object/from16 v9, v28

    const/4 v8, 0x2

    const/4 v12, 0x0

    .end local v13    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .end local v28    # "sourcePackageName":Ljava/lang/String;
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v30    # "elapsedNow":J
    .restart local v32    # "sourceUserId":I
    move v12, v6

    goto/16 :goto_218

    .line 969
    .end local v5    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v6    # "eventType":I
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v30    # "elapsedNow":J
    .end local v32    # "sourceUserId":I
    .local v10, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v12    # "eventType":I
    .restart local v13    # "elapsedNow":J
    .restart local v15    # "sourceUserId":I
    .restart local v28    # "sourcePackageName":Ljava/lang/String;
    :catch_309
    move-exception v0

    move-wide/from16 v30, v13

    move/from16 v32, v15

    move-object/from16 v9, v28

    .line 970
    .end local v13    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .end local v28    # "sourcePackageName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v30    # "elapsedNow":J
    .restart local v32    # "sourceUserId":I
    :goto_310
    const-string v5, "Error reading job execution criteria, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v4, 0x0

    return-object v4

    .line 974
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v30    # "elapsedNow":J
    .end local v32    # "sourceUserId":I
    .restart local v13    # "elapsedNow":J
    .restart local v15    # "sourceUserId":I
    .restart local v28    # "sourcePackageName":Ljava/lang/String;
    :cond_317
    move-wide/from16 v30, v13

    move/from16 v32, v15

    move-object/from16 v9, v28

    .end local v13    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .end local v28    # "sourcePackageName":Ljava/lang/String;
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v30    # "elapsedNow":J
    .restart local v32    # "sourceUserId":I
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_33d

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_33d
    const/4 v4, 0x0

    return-object v4

    .line 916
    .end local v3    # "internalFlags":I
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v10    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v29    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v30    # "elapsedNow":J
    .end local v32    # "sourceUserId":I
    .local v5, "internalFlags":I
    .local v8, "sourcePackageName":Ljava/lang/String;
    .restart local v15    # "sourceUserId":I
    :catch_33f
    move-exception v0

    move v3, v5

    move-object v9, v8

    move/from16 v32, v15

    move-object v5, v0

    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v15    # "sourceUserId":I
    .restart local v3    # "internalFlags":I
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v32    # "sourceUserId":I
    move-object v0, v5

    .line 917
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_351

    .line 918
    const-string v5, "Error parsing execution time parameters, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_351
    const/4 v5, 0x0

    return-object v5

    .line 907
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "internalFlags":I
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v32    # "sourceUserId":I
    .restart local v5    # "internalFlags":I
    .restart local v8    # "sourcePackageName":Ljava/lang/String;
    .restart local v15    # "sourceUserId":I
    :cond_353
    move/from16 v17, v0

    move v3, v5

    move-object v5, v6

    move-object v6, v8

    move v0, v13

    move v10, v14

    move/from16 v32, v15

    const-wide/16 v8, 0x0

    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v15    # "sourceUserId":I
    .restart local v3    # "internalFlags":I
    .local v6, "sourcePackageName":Ljava/lang/String;
    .restart local v32    # "sourceUserId":I
    move-object v8, v6

    move/from16 v0, v17

    move-object v6, v5

    move v5, v3

    move/from16 v3, p3

    goto/16 :goto_d7

    .line 897
    .end local v3    # "internalFlags":I
    .end local v6    # "sourcePackageName":Ljava/lang/String;
    .end local v32    # "sourceUserId":I
    .restart local v5    # "internalFlags":I
    .restart local v8    # "sourcePackageName":Ljava/lang/String;
    .restart local v15    # "sourceUserId":I
    :catch_367
    move-exception v0

    move v3, v5

    move-object v5, v6

    move-object v6, v8

    move/from16 v32, v15

    move-object v8, v0

    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v15    # "sourceUserId":I
    .restart local v3    # "internalFlags":I
    .restart local v6    # "sourcePackageName":Ljava/lang/String;
    .restart local v32    # "sourceUserId":I
    move-object v0, v8

    .line 898
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "Constraints contained invalid data"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    return-object v5

    .line 894
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "internalFlags":I
    .end local v6    # "sourcePackageName":Ljava/lang/String;
    .end local v32    # "sourceUserId":I
    .restart local v5    # "internalFlags":I
    .restart local v8    # "sourcePackageName":Ljava/lang/String;
    .restart local v15    # "sourceUserId":I
    :catch_375
    move-exception v0

    move v3, v5

    move-object v5, v6

    move-object v6, v8

    move/from16 v32, v15

    move-object v8, v0

    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v15    # "sourceUserId":I
    .restart local v3    # "internalFlags":I
    .restart local v6    # "sourcePackageName":Ljava/lang/String;
    .restart local v32    # "sourceUserId":I
    move-object v0, v8

    .line 895
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Error I/O Exception."

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    return-object v5

    .line 891
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "internalFlags":I
    .end local v6    # "sourcePackageName":Ljava/lang/String;
    .end local v32    # "sourceUserId":I
    .restart local v5    # "internalFlags":I
    .restart local v8    # "sourcePackageName":Ljava/lang/String;
    .restart local v15    # "sourceUserId":I
    :catch_383
    move-exception v0

    move v3, v5

    move-object v5, v6

    move-object v6, v8

    move/from16 v32, v15

    move-object v8, v0

    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v15    # "sourceUserId":I
    .restart local v3    # "internalFlags":I
    .restart local v6    # "sourcePackageName":Ljava/lang/String;
    .restart local v32    # "sourceUserId":I
    move-object v0, v8

    .line 892
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "Error Parser Exception."

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    return-object v5

    .line 888
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "internalFlags":I
    .end local v6    # "sourcePackageName":Ljava/lang/String;
    .end local v32    # "sourceUserId":I
    .restart local v5    # "internalFlags":I
    .restart local v8    # "sourcePackageName":Ljava/lang/String;
    .restart local v15    # "sourceUserId":I
    :catch_391
    move-exception v0

    move v3, v5

    move-object v5, v6

    move-object v6, v8

    move/from16 v32, v15

    move-object v8, v0

    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v15    # "sourceUserId":I
    .restart local v3    # "internalFlags":I
    .restart local v6    # "sourcePackageName":Ljava/lang/String;
    .restart local v32    # "sourceUserId":I
    move-object v0, v8

    .line 889
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "Error reading constraints, skipping."

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return-object v5

    .line 881
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "internalFlags":I
    .end local v6    # "sourcePackageName":Ljava/lang/String;
    .end local v32    # "sourceUserId":I
    .restart local v5    # "internalFlags":I
    .restart local v8    # "sourcePackageName":Ljava/lang/String;
    .restart local v15    # "sourceUserId":I
    :cond_39f
    move v3, v5

    move-object v5, v6

    move-object v6, v8

    move/from16 v32, v15

    .line 884
    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v15    # "sourceUserId":I
    .restart local v3    # "internalFlags":I
    .restart local v6    # "sourcePackageName":Ljava/lang/String;
    .restart local v32    # "sourceUserId":I
    :goto_3a4
    return-object v5

    .line 879
    .end local v3    # "internalFlags":I
    .end local v6    # "sourcePackageName":Ljava/lang/String;
    .end local v32    # "sourceUserId":I
    .restart local v5    # "internalFlags":I
    .restart local v8    # "sourcePackageName":Ljava/lang/String;
    .restart local v15    # "sourceUserId":I
    :cond_3a5
    move/from16 v17, v0

    move v3, v5

    move-object v6, v8

    move/from16 v32, v15

    const-wide/16 v8, 0x0

    .end local v5    # "internalFlags":I
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v15    # "sourceUserId":I
    .restart local v3    # "internalFlags":I
    .restart local v6    # "sourcePackageName":Ljava/lang/String;
    .restart local v32    # "sourceUserId":I
    move-object v8, v6

    const/4 v6, 0x0

    move/from16 v3, p3

    goto/16 :goto_b3

    .line 867
    .end local v3    # "internalFlags":I
    .end local v6    # "sourcePackageName":Ljava/lang/String;
    .end local v7    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v11    # "uid":I
    .end local v12    # "eventType":I
    .end local v20    # "lastSuccessfulRunTime":J
    .end local v22    # "lastFailedRunTime":J
    .end local v27    # "sourceTag":Ljava/lang/String;
    .end local v32    # "sourceUserId":I
    .restart local v5    # "internalFlags":I
    :catch_3b3
    move-exception v0

    move v3, v5

    .end local v5    # "internalFlags":I
    .restart local v3    # "internalFlags":I
    goto :goto_3b7

    .end local v3    # "internalFlags":I
    .restart local v5    # "internalFlags":I
    :catch_3b6
    move-exception v0

    .line 868
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3b7
    const-string v3, "Error parsing job\'s required fields, skipping"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, "numJobs":I
    const/4 v1, 0x0

    .line 716
    .local v1, "numSystemJobs":I
    const/4 v2, 0x0

    .line 718
    .local v2, "numSyncJobs":I
    :try_start_3
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobsFile(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_d} :catch_b5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_89
    .catchall {:try_start_3 .. :try_end_d} :catchall_86

    .line 719
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_d
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v4, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_7a

    .line 720
    :try_start_12
    iget-boolean v5, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v5

    .line 721
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_4e

    .line 722
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 723
    .local v6, "now":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_21
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4e

    .line 724
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 725
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 726
    iput-wide v6, v9, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 727
    iget-object v10, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v10, v9}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 729
    add-int/lit8 v0, v0, 0x1

    .line 730
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_4b

    .line 731
    add-int/lit8 v1, v1, 0x1

    .line 732
    invoke-static {v9}, Lcom/android/server/job/JobStore;->-$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 733
    add-int/lit8 v2, v2, 0x1

    .line 723
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    .line 738
    .end local v6    # "now":J
    .end local v8    # "i":I
    :cond_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_77

    .line 739
    if-eqz v3, :cond_54

    :try_start_51
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_54} :catch_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_54} :catch_b5
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_89
    .catchall {:try_start_51 .. :try_end_54} :catchall_86

    .line 750
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_54
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_e2

    .line 751
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v0, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 752
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v1, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 753
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v2, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_e2

    .line 738
    .end local v5    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_77
    move-exception v5

    :try_start_78
    monitor-exit v4
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    .end local v0    # "numJobs":I
    .end local v1    # "numSystemJobs":I
    .end local v2    # "numSyncJobs":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :try_start_79
    throw v5
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 718
    .restart local v0    # "numJobs":I
    .restart local v1    # "numSystemJobs":I
    .restart local v2    # "numSyncJobs":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :catchall_7a
    move-exception v4

    if-eqz v3, :cond_85

    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_85

    :catchall_81
    move-exception v5

    :try_start_82
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "numJobs":I
    .end local v1    # "numSystemJobs":I
    .end local v2    # "numSyncJobs":I
    .end local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :cond_85
    :goto_85
    throw v4
    :try_end_86
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_86} :catch_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_82 .. :try_end_86} :catch_b5
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_86} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_89
    .catchall {:try_start_82 .. :try_end_86} :catchall_86

    .line 750
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "numJobs":I
    .restart local v1    # "numSystemJobs":I
    .restart local v2    # "numSyncJobs":I
    .restart local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :catchall_86
    move-exception v3

    goto/16 :goto_101

    .line 745
    :catch_89
    move-exception v3

    .line 748
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8a
    const-string v4, "JobStore"

    const-string v5, "Unexpected exception"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_86

    .line 750
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_e2

    .line 751
    :goto_9c
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v0, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 752
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v1, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 753
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v2, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_e2

    .line 743
    :catch_b5
    move-exception v3

    .line 744
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_b6
    const-string v4, "JobStore"

    const-string v5, "Error jobstore xml."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_86

    .line 750
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_e2

    .line 751
    goto :goto_9c

    .line 739
    :catch_c9
    move-exception v3

    .line 740
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_ca
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 741
    const-string v4, "JobStore"

    const-string v5, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_ca .. :try_end_d7} :catchall_86

    .line 750
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_d7
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_e2

    .line 751
    goto :goto_9c

    .line 756
    :cond_e2
    :goto_e2
    const-string v3, "JobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " jobs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void

    .line 750
    :goto_101
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iget v4, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v4, :cond_123

    .line 751
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v0, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 752
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v1, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 753
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v2, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 755
    :cond_123
    throw v3
.end method
