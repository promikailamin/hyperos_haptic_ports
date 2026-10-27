.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "AppFunctionManagerServiceImpl.java"

# interfaces
.implements Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic val$callingUid:I

.field public final synthetic val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;I)V
    .registers 4

    .line 1120
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$4;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$4;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iput p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$4;->val$callingUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeOnSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .registers 4

    .line 1123
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$4;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$4;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$4;->val$callingUid:I

    invoke-static {v0, v1, p1, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->-$$Nest$mgrantTemporaryUriPermissions(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ExecuteAppFunctionResponse;I)V

    return-void
.end method
