.class public final Landroid/app/usage/UsageStatsManager;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStatsManager$UsageSource;,
        Landroid/app/usage/UsageStatsManager$ForcedReasons;,
        Landroid/app/usage/UsageStatsManager$StandbyBuckets;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_EVENT_ACTION:Ljava/lang/String; = "android.app.usage.extra.EVENT_ACTION"

.field public static final whitelist EXTRA_EVENT_CATEGORY:Ljava/lang/String; = "android.app.usage.extra.EVENT_CATEGORY"

.field public static final whitelist EXTRA_OBSERVER_ID:Ljava/lang/String; = "android.app.usage.extra.OBSERVER_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_TIME_LIMIT:Ljava/lang/String; = "android.app.usage.extra.TIME_LIMIT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_TIME_USED:Ljava/lang/String; = "android.app.usage.extra.TIME_USED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INTERVAL_BEST:I = 0x4

.field public static final greylist-max-o INTERVAL_COUNT:I = 0x4

.field public static final whitelist INTERVAL_DAILY:I = 0x0

.field public static final whitelist INTERVAL_MONTHLY:I = 0x2

.field public static final whitelist INTERVAL_WEEKLY:I = 0x1

.field public static final whitelist INTERVAL_YEARLY:I = 0x3

.field public static final greylist-max-o REASON_MAIN_DEFAULT:I = 0x100

.field public static final blacklist REASON_MAIN_FORCED_BY_SYSTEM:I = 0x600

.field public static final blacklist REASON_MAIN_FORCED_BY_USER:I = 0x400

.field public static final greylist-max-o REASON_MAIN_MASK:I = 0xff00

.field public static final greylist-max-o REASON_MAIN_PREDICTED:I = 0x500

.field public static final greylist-max-o REASON_MAIN_TIMEOUT:I = 0x200

.field public static final greylist-max-o REASON_MAIN_USAGE:I = 0x300

.field public static final blacklist REASON_SUB_DEFAULT_APP_RESTORED:I = 0x2

.field public static final blacklist REASON_SUB_DEFAULT_APP_UPDATE:I = 0x1

.field public static final blacklist REASON_SUB_DEFAULT_UNDEFINED:I = 0x0

.field public static final blacklist REASON_SUB_FORCED_SYSTEM_FLAG_ABUSE:I = 0x2

.field public static final blacklist REASON_SUB_FORCED_SYSTEM_FLAG_BACKGROUND_RESOURCE_USAGE:I = 0x1

.field public static final blacklist REASON_SUB_FORCED_SYSTEM_FLAG_BUGGY:I = 0x4

.field public static final blacklist REASON_SUB_FORCED_SYSTEM_FLAG_UNDEFINED:I = 0x0

.field public static final blacklist REASON_SUB_FORCED_USER_FLAG_INTERACTION:I = 0x2

.field public static final greylist-max-o REASON_SUB_MASK:I = 0xff

.field public static final greylist-max-o REASON_SUB_PREDICTED_RESTORED:I = 0x1

.field public static final greylist-max-o REASON_SUB_USAGE_ACTIVE_TIMEOUT:I = 0x7

.field public static final greylist-max-o REASON_SUB_USAGE_EXEMPTED_SYNC_SCHEDULED_DOZE:I = 0xc

.field public static final greylist-max-o REASON_SUB_USAGE_EXEMPTED_SYNC_SCHEDULED_NON_DOZE:I = 0xb

.field public static final greylist-max-o REASON_SUB_USAGE_EXEMPTED_SYNC_START:I = 0xd

.field public static final blacklist REASON_SUB_USAGE_FOREGROUND_SERVICE_START:I = 0xf

.field public static final greylist-max-o REASON_SUB_USAGE_MOVE_TO_BACKGROUND:I = 0x5

.field public static final greylist-max-o REASON_SUB_USAGE_MOVE_TO_FOREGROUND:I = 0x4

.field public static final greylist-max-o REASON_SUB_USAGE_NOTIFICATION_SEEN:I = 0x2

.field public static final greylist-max-o REASON_SUB_USAGE_SLICE_PINNED:I = 0x9

.field public static final greylist-max-o REASON_SUB_USAGE_SLICE_PINNED_PRIV:I = 0xa

.field public static final greylist-max-o REASON_SUB_USAGE_SYNC_ADAPTER:I = 0x8

.field public static final greylist-max-o REASON_SUB_USAGE_SYSTEM_INTERACTION:I = 0x1

.field public static final greylist-max-o REASON_SUB_USAGE_SYSTEM_UPDATE:I = 0x6

.field public static final blacklist REASON_SUB_USAGE_UNEXEMPTED_SYNC_SCHEDULED:I = 0xe

.field public static final greylist-max-o REASON_SUB_USAGE_USER_INTERACTION:I = 0x3

.field public static final whitelist STANDBY_BUCKET_ACTIVE:I = 0xa

.field public static final whitelist STANDBY_BUCKET_EXEMPTED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STANDBY_BUCKET_FREQUENT:I = 0x1e

.field public static final whitelist STANDBY_BUCKET_NEVER:I = 0x32
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STANDBY_BUCKET_RARE:I = 0x28

.field public static final whitelist STANDBY_BUCKET_RESTRICTED:I = 0x2d

.field public static final whitelist STANDBY_BUCKET_WORKING_SET:I = 0x14

.field public static final whitelist USAGE_SOURCE_CURRENT_ACTIVITY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_SOURCE_TASK_ROOT_ACTIVITY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-p sEmptyResults:Landroid/app/usage/UsageEvents;


# instance fields
.field private final greylist-max-p mContext:Landroid/content/Context;

.field private final greylist mService:Landroid/app/usage/IUsageStatsManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 438
    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;)V
    .registers 3

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 450
    iput-object p2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 451
    return-void
.end method

.method public static blacklist getMainReason(I)I
    .registers 2

    .line 1303
    const v0, 0xff00

    and-int/2addr p0, v0

    return p0
.end method

.method public static greylist-max-o reasonToString(I)Ljava/lang/String;
    .registers 4

    .line 1308
    and-int/lit16 v0, p0, 0xff

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1310
    const v2, 0xff00

    and-int/2addr p0, v2

    const-string v2, "-"

    sparse-switch p0, :sswitch_data_d8

    goto/16 :goto_d3

    .line 1326
    :sswitch_12
    const-string/jumbo p0, "s"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    if-lez v0, :cond_d3

    .line 1328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d3

    .line 1338
    :sswitch_27
    const-string/jumbo p0, "p"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    packed-switch v0, :pswitch_data_f2

    goto :goto_36

    .line 1341
    :pswitch_31
    const-string p0, "-r"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    :goto_36
    goto/16 :goto_d3

    .line 1332
    :sswitch_38
    const-string p0, "f"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    if-lez v0, :cond_d3

    .line 1334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d3

    .line 1349
    :sswitch_4c
    const-string/jumbo p0, "u"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    packed-switch v0, :pswitch_data_f8

    goto/16 :goto_d3

    .line 1394
    :pswitch_57
    const-string p0, "-fss"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d3

    .line 1391
    :pswitch_5e
    const-string p0, "-uss"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    goto/16 :goto_d3

    .line 1388
    :pswitch_65
    const-string p0, "-es"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    goto/16 :goto_d3

    .line 1385
    :pswitch_6c
    const-string p0, "-ed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    goto/16 :goto_d3

    .line 1382
    :pswitch_73
    const-string p0, "-en"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    goto :goto_d3

    .line 1379
    :pswitch_79
    const-string p0, "-lv"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    goto :goto_d3

    .line 1376
    :pswitch_7f
    const-string p0, "-lp"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    goto :goto_d3

    .line 1373
    :pswitch_85
    const-string p0, "-sa"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    goto :goto_d3

    .line 1370
    :pswitch_8b
    const-string p0, "-at"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    goto :goto_d3

    .line 1367
    :pswitch_91
    const-string p0, "-su"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    goto :goto_d3

    .line 1364
    :pswitch_97
    const-string p0, "-mb"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    goto :goto_d3

    .line 1361
    :pswitch_9d
    const-string p0, "-mf"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    goto :goto_d3

    .line 1358
    :pswitch_a3
    const-string p0, "-ui"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    goto :goto_d3

    .line 1355
    :pswitch_a9
    const-string p0, "-ns"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    goto :goto_d3

    .line 1352
    :pswitch_af
    const-string p0, "-si"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    goto :goto_d3

    .line 1346
    :sswitch_b5
    const-string/jumbo p0, "t"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    goto :goto_d3

    .line 1312
    :sswitch_bc
    const-string p0, "d"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    packed-switch v0, :pswitch_data_11a

    goto :goto_d2

    .line 1321
    :pswitch_c5
    const-string p0, "-ar"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d2

    .line 1318
    :pswitch_cb
    const-string p0, "-au"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    goto :goto_d2

    .line 1316
    :pswitch_d1
    nop

    .line 1324
    :goto_d2
    nop

    .line 1399
    :cond_d3
    :goto_d3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_d8
    .sparse-switch
        0x100 -> :sswitch_bc
        0x200 -> :sswitch_b5
        0x300 -> :sswitch_4c
        0x400 -> :sswitch_38
        0x500 -> :sswitch_27
        0x600 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_31
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_af
        :pswitch_a9
        :pswitch_a3
        :pswitch_9d
        :pswitch_97
        :pswitch_91
        :pswitch_8b
        :pswitch_85
        :pswitch_7f
        :pswitch_79
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
        :pswitch_57
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
    .end packed-switch
.end method

.method public static blacklist standbyBucketToString(I)Ljava/lang/String;
    .registers 1

    .line 1420
    sparse-switch p0, :sswitch_data_1e

    .line 1436
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1434
    :sswitch_8
    const-string p0, "NEVER"

    return-object p0

    .line 1432
    :sswitch_b
    const-string p0, "RESTRICTED"

    return-object p0

    .line 1430
    :sswitch_e
    const-string p0, "RARE"

    return-object p0

    .line 1428
    :sswitch_11
    const-string p0, "FREQUENT"

    return-object p0

    .line 1426
    :sswitch_14
    const-string p0, "WORKING_SET"

    return-object p0

    .line 1424
    :sswitch_17
    const-string p0, "ACTIVE"

    return-object p0

    .line 1422
    :sswitch_1a
    const-string p0, "EXEMPTED"

    return-object p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x5 -> :sswitch_1a
        0xa -> :sswitch_17
        0x14 -> :sswitch_14
        0x1e -> :sswitch_11
        0x28 -> :sswitch_e
        0x2d -> :sswitch_b
        0x32 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist usageSourceToString(I)Ljava/lang/String;
    .registers 3

    .line 1404
    packed-switch p0, :pswitch_data_20

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1411
    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1413
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1408
    :pswitch_1a
    const-string p0, "CURRENT_ACTIVITY"

    return-object p0

    .line 1406
    :pswitch_1d
    const-string p0, "TASK_ROOT_ACTIVITY"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public blacklist clearBroadcastEvents()V
    .registers 4

    .line 1616
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/usage/IUsageStatsManager;->clearBroadcastEvents(Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 1619
    nop

    .line 1620
    return-void

    .line 1617
    :catch_13
    move-exception v0

    .line 1618
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist clearBroadcastResponseStats(Ljava/lang/String;J)V
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1600
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1601
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1600
    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 1604
    nop

    .line 1605
    return-void

    .line 1602
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 1603
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist forceUsageSourceSettingRead()V
    .registers 2

    .line 1295
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->forceUsageSourceSettingRead()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1298
    nop

    .line 1299
    return-void

    .line 1296
    :catch_7
    move-exception v0

    .line 1297
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getAppMinStandbyBucket(Ljava/lang/String;)I
    .registers 5

    .line 869
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 870
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 869
    invoke-interface {v0, p1, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    .line 871
    :catch_13
    move-exception p1

    .line 872
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAppStandbyBucket()I
    .registers 5

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 764
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 765
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 763
    invoke-interface {v0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return v0

    .line 766
    :catch_19
    move-exception v0

    .line 768
    const/16 v0, 0xa

    return v0
.end method

.method public whitelist getAppStandbyBucket(Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 782
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 781
    invoke-interface {v0, p1, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    .line 783
    :catch_13
    move-exception p1

    .line 785
    const/16 p1, 0xa

    return p1
.end method

.method public whitelist getAppStandbyBuckets()Ljava/util/Map;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 819
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 820
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 819
    invoke-interface {v0, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 822
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 823
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 824
    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_36

    .line 825
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/AppStandbyInfo;

    .line 826
    iget-object v5, v4, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget v4, v4, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_37

    .line 824
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 828
    :cond_36
    return-object v1

    .line 829
    :catch_37
    move-exception v0

    .line 830
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1643
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0, p1}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1644
    :catch_7
    move-exception p1

    .line 1645
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getLastTimeAnyComponentUsed(Ljava/lang/String;)J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1520
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 1521
    :catch_d
    move-exception p1

    .line 1522
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUsageSource()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1282
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->getUsageSource()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1283
    :catch_7
    move-exception v0

    .line 1284
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isAppInactive(Ljava/lang/String;)Z
    .registers 5

    .line 723
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 724
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-interface {v0, p1, v1, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    .line 725
    :catch_13
    move-exception p1

    .line 728
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isAppStandbyEnabled()Z
    .registers 2

    .line 703
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->isAppStandbyEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 704
    :catch_7
    move-exception v0

    .line 705
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;)Z
    .registers 4

    .line 1631
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1632
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1631
    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 1633
    :catch_d
    move-exception p1

    .line 1634
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist onCarrierPrivilegedAppsChanged()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1472
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->onCarrierPrivilegedAppsChanged()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1475
    nop

    .line 1476
    return-void

    .line 1473
    :catch_7
    move-exception v0

    .line 1474
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist queryAndAggregateUsageStats(JJ)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 677
    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p1

    .line 678
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 679
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 682
    :cond_13
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 683
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 684
    const/4 p4, 0x0

    :goto_1d
    if-ge p4, p3, :cond_3d

    .line 685
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 686
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 687
    if-nez v1, :cond_37

    .line 688
    iget-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 690
    :cond_37
    invoke-virtual {v1, v0}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    .line 684
    :goto_3a
    add-int/lit8 p4, p4, 0x1

    goto :goto_1d

    .line 693
    :cond_3d
    return-object p2
.end method

.method public whitelist queryBroadcastResponseStats(Ljava/lang/String;J)Ljava/util/List;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation

    .line 1568
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1569
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1568
    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;

    move-result-object p1

    .line 1569
    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStatsList;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    .line 1568
    return-object p1

    .line 1570
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 1571
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist queryConfigurations(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 519
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 520
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 519
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 521
    if-eqz p1, :cond_16

    .line 522
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return-object p1

    .line 526
    :cond_16
    goto :goto_18

    .line 524
    :catch_17
    move-exception v0

    .line 527
    :goto_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist queryEventStats(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 565
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 566
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 565
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 567
    if-eqz p1, :cond_16

    .line 568
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return-object p1

    .line 572
    :cond_16
    goto :goto_18

    .line 570
    :catch_17
    move-exception v0

    .line 573
    :goto_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 601
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 600
    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12

    .line 602
    if-eqz p1, :cond_11

    .line 603
    return-object p1

    .line 607
    :cond_11
    goto :goto_13

    .line 605
    :catch_12
    move-exception v0

    .line 608
    :goto_13
    sget-object p1, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object p1
.end method

.method public whitelist queryEvents(Landroid/app/usage/UsageEventsQuery;)Landroid/app/usage/UsageEvents;
    .registers 4

    .line 625
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->queryEventsWithFilter(Landroid/app/usage/UsageEventsQuery;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_10

    .line 626
    if-eqz p1, :cond_f

    .line 627
    return-object p1

    .line 631
    :cond_f
    goto :goto_11

    .line 629
    :catch_10
    move-exception p1

    .line 632
    :goto_11
    sget-object p1, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object p1
.end method

.method public whitelist queryEventsForSelf(JJ)Landroid/app/usage/UsageEvents;
    .registers 11

    .line 652
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 653
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 652
    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12

    .line 654
    if-eqz p1, :cond_11

    .line 655
    return-object p1

    .line 659
    :cond_11
    goto :goto_13

    .line 657
    :catch_12
    move-exception v0

    .line 660
    :goto_13
    sget-object p1, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object p1
.end method

.method public whitelist queryUsageStats(IJJ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 486
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 487
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 486
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 488
    if-eqz p1, :cond_1c

    .line 489
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1d

    return-object p1

    .line 493
    :cond_1c
    goto :goto_1e

    .line 491
    :catch_1d
    move-exception v0

    .line 494
    :goto_1e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerAppUsageLimitObserver(I[Ljava/lang/String;Ljava/time/Duration;Ljava/time/Duration;Landroid/app/PendingIntent;)V
    .registers 15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1124
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 1125
    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {p4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    iget-object p3, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1126
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1124
    move v1, p1

    move-object v2, p2

    move-object v7, p5

    invoke-interface/range {v0 .. v8}, Landroid/app/usage/IUsageStatsManager;->registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    .line 1129
    nop

    .line 1130
    return-void

    .line 1127
    :catch_18
    move-exception v0

    move-object p1, v0

    .line 1128
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist registerAppUsageObserver(I[Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/PendingIntent;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 974
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 975
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    iget-object p5, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p5

    .line 974
    move-object p0, p6

    move-object p6, p5

    move-object p5, p0

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Landroid/app/usage/IUsageStatsManager;->registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 978
    nop

    .line 979
    return-void

    .line 976
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 977
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist registerUsageSessionObserver(I[Ljava/lang/String;Ljava/time/Duration;Ljava/time/Duration;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1045
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 1046
    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {p4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    iget-object p3, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1048
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1045
    move v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v9}, Landroid/app/usage/IUsageStatsManager;->registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    .line 1051
    nop

    .line 1052
    return-void

    .line 1049
    :catch_1a
    move-exception v0

    move-object p1, v0

    .line 1050
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1493
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/app/usage/IUsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1495
    goto :goto_8

    .line 1494
    :catch_7
    move-exception v0

    .line 1496
    :goto_8
    return-void
.end method

.method public whitelist reportUsageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1219
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1220
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-interface {v0, p1, p2, v1}, Landroid/app/usage/IUsageStatsManager;->reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1223
    nop

    .line 1224
    return-void

    .line 1221
    :catch_11
    move-exception p1

    .line 1222
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist reportUsageStart(Landroid/app/Activity;Ljava/lang/String;J)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1245
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object p1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1246
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1245
    move-object v2, p2

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 1249
    nop

    .line 1250
    return-void

    .line 1247
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 1248
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist reportUsageStop(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1262
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1263
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1262
    invoke-interface {v0, p1, p2, v1}, Landroid/app/usage/IUsageStatsManager;->reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1266
    nop

    .line 1267
    return-void

    .line 1264
    :catch_11
    move-exception p1

    .line 1265
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportUserInteraction(Ljava/lang/String;I)V
    .registers 4

    .line 1164
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0, p1, p2}, Landroid/app/usage/IUsageStatsManager;->reportUserInteraction(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1167
    nop

    .line 1168
    return-void

    .line 1165
    :catch_7
    move-exception p1

    .line 1166
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportUserInteraction(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    .registers 5

    .line 1196
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/usage/IUsageStatsManager;->reportUserInteractionWithBundle(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1199
    nop

    .line 1200
    return-void

    .line 1197
    :catch_7
    move-exception p1

    .line 1198
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setAppInactive(Ljava/lang/String;Z)V
    .registers 5

    .line 736
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 739
    goto :goto_d

    .line 737
    :catch_c
    move-exception p1

    .line 740
    :goto_d
    return-void
.end method

.method public whitelist setAppStandbyBucket(Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 803
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 806
    nop

    .line 807
    return-void

    .line 804
    :catch_d
    move-exception p1

    .line 805
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setAppStandbyBuckets(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 844
    if-nez p1, :cond_3

    .line 845
    return-void

    .line 847
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 848
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 849
    new-instance v2, Landroid/app/usage/AppStandbyInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    goto :goto_14

    .line 851
    :cond_39
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 853
    :try_start_3e
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_49} :catch_4b

    .line 856
    nop

    .line 857
    return-void

    .line 854
    :catch_4b
    move-exception p1

    .line 855
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setEstimatedLaunchTimeMillis(Ljava/lang/String;J)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 893
    if-eqz p1, :cond_23

    .line 896
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1b

    .line 900
    :try_start_8
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 901
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 900
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/usage/IUsageStatsManager;->setEstimatedLaunchTime(Ljava/lang/String;JI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_15

    .line 904
    nop

    .line 905
    return-void

    .line 902
    :catch_15
    move-exception p1

    .line 903
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 897
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "estimated launch time must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 894
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "package name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setEstimatedLaunchTimesMillis(Ljava/util/Map;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 919
    if-eqz p1, :cond_6f

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    .line 923
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 924
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 925
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 926
    if-eqz v2, :cond_4e

    .line 929
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 930
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_46

    .line 933
    new-instance v3, Landroid/app/usage/AppLaunchEstimateInfo;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5}, Landroid/app/usage/AppLaunchEstimateInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    goto :goto_13

    .line 931
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "estimated launch time must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 927
    :cond_4e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "package name cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 935
    :cond_57
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 938
    :try_start_5c
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_67} :catch_69

    .line 941
    nop

    .line 942
    return-void

    .line 939
    :catch_69
    move-exception p1

    .line 940
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 920
    :cond_6f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "estimatedLaunchTimesMillis cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterAppUsageLimitObserver(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1148
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1151
    nop

    .line 1152
    return-void

    .line 1149
    :catch_d
    move-exception p1

    .line 1150
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unregisterAppUsageObserver(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 994
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterAppUsageObserver(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 997
    nop

    .line 998
    return-void

    .line 995
    :catch_d
    move-exception p1

    .line 996
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unregisterUsageSessionObserver(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1068
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageSessionObserver(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1071
    nop

    .line 1072
    return-void

    .line 1069
    :catch_d
    move-exception p1

    .line 1070
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist whitelistAppTemporarily(Ljava/lang/String;JLandroid/os/UserHandle;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1459
    iget-object p4, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerWhitelistManager;

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/PowerWhitelistManager;

    .line 1460
    invoke-virtual {p4, p1, p2, p3}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarily(Ljava/lang/String;J)V

    .line 1461
    return-void
.end method
