.class final Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckOpsDelegateDispatcher"
.end annotation


# instance fields
.field private final mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field private final mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public static synthetic $r8$lambda$4Xrg3LJImAePkUNQfKyEhwrAa4o(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5QW1I627hxspeCV4Tl3zmfvAQEc(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6iUzpqAsrHNNZAT8wDQs4LrRyi8(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;IIILjava/lang/String;)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DtgeSBUWCLclQ1W7XJUC9XAaSEw(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gc4PFB4I6q8dwMdKLBLvNRVXSBU(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PbpU3Eszve011DPcjUEqveXh3R0(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$miO9eAps5f-PGP9N8HQxI5gogDo(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qgEIsDn8cQwu53qlXknjwBl6E_g(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckOpsDelegate(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .registers 4
    .param p2, "policy"    # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .param p3, "checkOpsDelegate"    # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 7852
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7853
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 7854
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 7855
    return-void
.end method

.method private checkDelegateAudioOperationImpl(IIILjava/lang/String;)I
    .registers 11
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 7900
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result v0

    return v0
.end method

.method private checkDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "raw"    # Z

    .line 7879
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda18;

    invoke-direct {v6, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I

    move-result v0

    return v0
.end method

.method private finishDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 8062
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda21;

    invoke-direct {v6, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V

    .line 8064
    return-void
.end method

.method private finishDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 11
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "skipProxyOperation"    # Z

    .line 8086
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V

    .line 8088
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$checkAudioOperation$2(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;

    .line 7890
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$checkDelegateAudioOperationImpl$3(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;

    .line 7901
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$checkDelegateOperationImpl$1(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 7
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Ljava/lang/String;
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z

    .line 7880
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$checkOperation$0(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 7
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Ljava/lang/String;
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z

    .line 7869
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$finishDelegateOperationImpl$13(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Ljava/lang/String;

    .line 8063
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$finishDelegateProxyOperationImpl$15(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 6
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Landroid/content/AttributionSource;
    .param p4, "x$3"    # Z

    .line 8087
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$finishOperation$12(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Ljava/lang/String;

    .line 8051
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$finishProxyOperation$14(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 6
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Landroid/content/AttributionSource;
    .param p4, "x$3"    # Z

    .line 8074
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$noteDelegateOperationImpl$5(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 9
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Ljava/lang/String;
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Ljava/lang/String;
    .param p7, "x$6"    # Z

    .line 7931
    invoke-static/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$noteDelegateProxyOperationImpl$7(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 8
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/content/AttributionSource;
    .param p3, "x$2"    # Z
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Z

    .line 7962
    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$noteOperation$4(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 9
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Ljava/lang/String;
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Ljava/lang/String;
    .param p7, "x$6"    # Z

    .line 7915
    invoke-static/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$noteProxyOperation$6(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 8
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/content/AttributionSource;
    .param p3, "x$2"    # Z
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Z

    .line 7945
    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startDelegateOperationImpl$9(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 13
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Ljava/lang/String;
    .param p6, "x$5"    # Z
    .param p7, "x$6"    # Z
    .param p8, "x$7"    # Ljava/lang/String;
    .param p9, "x$8"    # Z
    .param p10, "x$9"    # I
    .param p11, "x$10"    # I

    .line 7999
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startDelegateProxyOperationImpl$11(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 13
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Landroid/content/AttributionSource;
    .param p4, "x$3"    # Z
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Ljava/lang/String;
    .param p7, "x$6"    # Z
    .param p8, "x$7"    # Z
    .param p9, "x$8"    # I
    .param p10, "x$9"    # I
    .param p11, "x$10"    # I

    .line 8040
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startOperation$8(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 13
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Ljava/lang/String;
    .param p6, "x$5"    # Z
    .param p7, "x$6"    # Z
    .param p8, "x$7"    # Ljava/lang/String;
    .param p9, "x$8"    # Z
    .param p10, "x$9"    # I
    .param p11, "x$10"    # I

    .line 7980
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startProxyOperation$10(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 13
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Landroid/content/AttributionSource;
    .param p4, "x$3"    # Z
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Ljava/lang/String;
    .param p7, "x$6"    # Z
    .param p8, "x$7"    # Z
    .param p9, "x$8"    # I
    .param p10, "x$9"    # I
    .param p11, "x$10"    # I

    .line 8019
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method private noteDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 7929
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v9, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v9, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method private noteDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 15
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "shouldCollectAsyncNotedOp"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "shouldCollectMessage"    # Z
    .param p6, "skipProxyOperation"    # Z

    .line 7960
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method private startDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I

    .line 7997
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda15;

    invoke-direct {v13, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method private startDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 26
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z
    .param p8, "skipProxyOperation"    # Z
    .param p9, "proxyAttributionFlags"    # I
    .param p10, "proxiedAttributionFlsgs"    # I
    .param p11, "attributionChainId"    # I

    .line 8037
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;

    invoke-direct {v13, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 11
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 7884
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_26

    .line 7885
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_16

    .line 7886
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result v0

    return v0

    .line 7889
    :cond_16
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda23;

    invoke-direct {v5, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result v0

    return v0

    .line 7892
    :cond_26
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2f

    .line 7893
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateAudioOperationImpl(IIILjava/lang/String;)I

    move-result v0

    return v0

    .line 7895
    :cond_2f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOperation(IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "raw"    # Z

    .line 7863
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_28

    .line 7864
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_17

    .line 7865
    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I

    move-result v0

    return v0

    .line 7868
    :cond_17
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda14;

    invoke-direct {v6, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I

    move-result v0

    return v0

    .line 7871
    :cond_28
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_31

    .line 7872
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0

    .line 7874
    :cond_31
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 8045
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_26

    .line 8046
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_16

    .line 8047
    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V

    goto :goto_38

    .line 8050
    :cond_16
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda20;

    invoke-direct {v6, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V

    goto :goto_38

    .line 8053
    :cond_26
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2e

    .line 8054
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 8056
    :cond_2e
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 8058
    :goto_38
    return-void
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .registers 11
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "skipProxyOperation"    # Z

    .line 8068
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_24

    .line 8069
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_15

    .line 8070
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V

    goto :goto_31

    .line 8073
    :cond_15
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda12;

    invoke-direct {v5, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V

    goto :goto_31

    .line 8076
    :cond_24
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2c

    .line 8077
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    goto :goto_31

    .line 8080
    :cond_2c
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    .line 8082
    :goto_31
    return-void
.end method

.method public getCheckOpsDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 2

    .line 7858
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-object v0
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 7907
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_31

    .line 7908
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_1c

    .line 7909
    new-instance v9, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7913
    :cond_1c
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v9, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v9, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7917
    :cond_31
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_3a

    .line 7918
    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7921
    :cond_3a
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 15
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "shouldCollectAsyncNotedOp"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "shouldCollectMessage"    # Z
    .param p6, "skipProxyOperation"    # Z

    .line 7937
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2a

    .line 7938
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_18

    .line 7939
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7943
    :cond_18
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;

    invoke-direct {v7, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7947
    :cond_2a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_33

    .line 7948
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7952
    :cond_33
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I

    .line 7970
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_49

    .line 7971
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_28

    .line 7972
    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda16;

    invoke-direct {v13, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7977
    :cond_28
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda17;

    invoke-direct {v13, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7982
    :cond_49
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_52

    .line 7983
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7987
    :cond_52
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 26
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z
    .param p8, "skipProxyOperation"    # Z
    .param p9, "proxyAttributionFlags"    # I
    .param p10, "proxiedAttributionFlags"    # I
    .param p11, "attributionChainId"    # I

    .line 8007
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_49

    .line 8008
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_28

    .line 8009
    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v13, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 8015
    :cond_28
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v13, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 8021
    :cond_49
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_52

    .line 8022
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 8027
    :cond_52
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method
