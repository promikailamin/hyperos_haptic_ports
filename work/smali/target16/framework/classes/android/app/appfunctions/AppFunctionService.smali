.class public abstract Landroid/app/appfunctions/AppFunctionService;
.super Landroid/app/Service;
.source "AppFunctionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.app.appfunctions.AppFunctionService"

.field private static final blacklist TAG:Ljava/lang/String; = "AppFunctionService"


# instance fields
.field private final blacklist mBinder:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbuildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;
    .registers 1

    invoke-static {p0}, Landroid/app/appfunctions/AppFunctionService;->buildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoErrorCode(Ljava/lang/Throwable;)I
    .registers 1

    invoke-static {p0}, Landroid/app/appfunctions/AppFunctionService;->toErrorCode(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 162
    new-instance v0, Landroid/app/appfunctions/AppFunctionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/appfunctions/AppFunctionService$$ExternalSyntheticLambda0;-><init>(Landroid/app/appfunctions/AppFunctionService;)V

    .line 163
    invoke-static {p0, v0}, Landroid/app/appfunctions/AppFunctionService;->createBinder(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)Landroid/os/Binder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionService;->mBinder:Landroid/os/Binder;

    .line 162
    return-void
.end method

.method private static blacklist buildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;
    .registers 3

    .line 150
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 151
    nop

    .line 152
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 154
    :try_start_9
    invoke-interface {p0, v0}, Landroid/app/appfunctions/ICancellationCallback;->sendCancellationTransport(Landroid/os/ICancellationSignal;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 157
    nop

    .line 159
    return-object v1

    .line 155
    :catch_e
    move-exception p0

    .line 156
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist createBinder(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)Landroid/os/Binder;
    .registers 3

    .line 95
    new-instance v0, Landroid/app/appfunctions/AppFunctionService$1;

    invoke-direct {v0, p0, p1}, Landroid/app/appfunctions/AppFunctionService$1;-><init>(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)V

    return-object v0
.end method

.method private static blacklist toErrorCode(Ljava/lang/Throwable;)I
    .registers 1

    .line 219
    instance-of p0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz p0, :cond_7

    .line 220
    const/16 p0, 0x3e9

    return p0

    .line 222
    :cond_7
    const/16 p0, 0xbb8

    return p0
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 168
    iget-object p1, p0, Landroid/app/appfunctions/AppFunctionService;->mBinder:Landroid/os/Binder;

    return-object p1
.end method

.method public abstract whitelist onExecuteFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
            "Ljava/lang/String;",
            "Landroid/content/pm/SigningInfo;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
            "Landroid/app/appfunctions/AppFunctionException;",
            ">;)V"
        }
    .end annotation
.end method
