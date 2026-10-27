.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "AppFunctionManagerServiceImpl.java"

# interfaces
.implements Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic val$callingUid:I

.field public final synthetic val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;I)V
    .registers 4

    .line 1126
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iput p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->val$callingUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finalizeOnError(Landroid/app/appfunctions/AppFunctionException;J)V
    .registers 11

    .line 1139
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->-$$Nest$fgetmLoggerWrapper(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 1141
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionException;->getErrorCode()I

    move-result v3

    iget v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->val$callingUid:I

    move-wide v5, p2

    .line 1139
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionError(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJ)V

    .line 1144
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-static {p1, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->-$$Nest$mrecordAppFunctionAccess(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V

    return-void
.end method

.method public finalizeOnSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;J)V
    .registers 11

    .line 1131
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->-$$Nest$fgetmLoggerWrapper(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->val$callingUid:I

    move-object v3, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionSuccess(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ExecuteAppFunctionResponse;IJ)V

    .line 1133
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-static {p1, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->-$$Nest$mrecordAppFunctionAccess(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V

    return-void
.end method
