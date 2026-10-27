.class public Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;
.super Ljava/lang/Object;
.source "AppFunctionsLoggerWrapper.java"


# static fields
.field static final INTERACTION_TYPE_OTHER:I = 0x1

.field static final INTERACTION_TYPE_UNSPECIFIED:I = 0x0

.field static final INTERACTION_TYPE_USER_QUERY:I = 0x2

.field static final INTERACTION_TYPE_USER_SCHEDULED:I = 0x3

.field static final SUCCESS_RESPONSE_CODE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "AppFunctionsLoggerWrapper"


# instance fields
.field public final mLoggerClock:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

.field public final mLoggingExecutor:Ljava/util/concurrent/Executor;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$E-GaZXKbGpv9ACEQx4jBBvQjy0M(Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->lambda$logAppFunctionsRequestReported$0(ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->LOGGING_THREAD_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;-><init>(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggingExecutor:Ljava/util/concurrent/Executor;

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggerClock:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

    return-void
.end method


# virtual methods
.method public final accessCheckFlagsEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final getInteractionType(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)I
    .registers 4

    .line 128
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->accessCheckFlagsEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 132
    :cond_8
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getAttribution()Landroid/app/appfunctions/AppFunctionAttribution;

    move-result-object p0

    if-nez p0, :cond_13

    return v0

    .line 136
    :cond_13
    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionAttribution;->getInteractionType()I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_23

    const/4 v1, 0x2

    if-eq p0, p1, :cond_22

    if-eq p0, v1, :cond_20

    return v0

    :cond_20
    const/4 p0, 0x3

    return p0

    :cond_22
    return v1

    :cond_23
    return p1
.end method

.method public final getPackageUid(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 120
    :try_start_1
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    return p0

    .line 122
    :catch_8
    sget-object p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package uid not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final synthetic lambda$logAppFunctionsRequestReported$0(ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V
    .registers 21

    .line 108
    invoke-virtual {p2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->getPackageUid(Ljava/lang/String;)I

    move-result v3

    .line 110
    invoke-virtual {p2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getRequestDataSize()I

    move-result v5

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->getInteractionType(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)I

    move-result v11

    const/16 v1, 0x3e6

    move v2, p1

    move v4, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    .line 104
    invoke-static/range {v1 .. v11}, Lcom/android/server/appfunctions/AppFunctionsStatsLog;->write(IIIIIIJJI)V

    return-void
.end method

.method public logAppFunctionError(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJ)V
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-wide v5, p4

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionsRequestReported(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIIJ)V

    return-void
.end method

.method public logAppFunctionSuccess(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ExecuteAppFunctionResponse;IJ)V
    .registers 13

    const/4 v2, -0x1

    .line 72
    invoke-virtual {p2}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->getResponseDataSize()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-wide v5, p4

    .line 69
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionsRequestReported(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIIJ)V

    return-void
.end method

.method public final logAppFunctionsRequestReported(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIIJ)V
    .registers 18

    .line 96
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggerClock:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

    .line 97
    invoke-interface {v0}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getRequestTime()J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-lez v0, :cond_1a

    .line 100
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getRequestTime()J

    move-result-wide v2

    sub-long v2, p5, v2

    move-wide v8, v2

    goto :goto_1b

    :cond_1a
    move-wide v8, v6

    .line 102
    :goto_1b
    iget-object v10, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggingExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v2, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
