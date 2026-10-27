.class Landroid/app/appfunctions/AppFunctionService$1;
.super Landroid/app/appfunctions/IAppFunctionService$Stub;
.source "AppFunctionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appfunctions/AppFunctionService;->createBinder(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)Landroid/os/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$onExecuteFunction:Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;


# direct methods
.method public static synthetic blacklist $r8$lambda$JOIM0ThvAyu67QTk61E_UabkL4k(Landroid/app/appfunctions/AppFunctionService$1;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/appfunctions/AppFunctionService$1;->lambda$executeAppFunction$0(Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)V
    .registers 3

    .line 95
    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$onExecuteFunction:Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;

    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionService$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$executeAppFunction$0(Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V
    .registers 8

    .line 113
    nop

    .line 117
    :try_start_1
    invoke-static {p5}, Landroid/app/appfunctions/AppFunctionService;->-$$Nest$smbuildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;

    move-result-object p5

    move-object v0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    new-instance p5, Landroid/app/appfunctions/AppFunctionService$1$1;

    invoke-direct {p5, p0, p6}, Landroid/app/appfunctions/AppFunctionService$1$1;-><init>(Landroid/app/appfunctions/AppFunctionService$1;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V

    .line 113
    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;->perform(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 141
    goto :goto_2d

    .line 133
    :catch_14
    move-exception v0

    move-object p1, v0

    .line 137
    const-string p2, "AppFunctionService"

    const-string p3, "Uncaught exception in AppFunctionService"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    new-instance p2, Landroid/app/appfunctions/AppFunctionException;

    .line 140
    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionService;->-$$Nest$smtoErrorCode(Ljava/lang/Throwable;)I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 138
    invoke-virtual {p6, p2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 142
    :goto_2d
    return-void
.end method


# virtual methods
.method public blacklist executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .registers 16

    .line 103
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$context:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APP_FUNCTION_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 107
    new-instance v9, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-direct {v9, p5}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    .line 109
    iget-object p5, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$context:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p5

    iget-object v4, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$onExecuteFunction:Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;

    new-instance v2, Landroid/app/appfunctions/AppFunctionService$1$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Landroid/app/appfunctions/AppFunctionService$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/appfunctions/AppFunctionService$1;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V

    .line 110
    invoke-interface {p5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    return-void

    .line 105
    :cond_26
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can only be called by the system server."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
