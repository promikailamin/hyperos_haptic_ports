.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;
.super Landroid/database/ContentObserver;
.source "AppFunctionManagerServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/os/Handler;)V
    .registers 3

    .line 168
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 171
    invoke-static {}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->-$$Nest$sfgetADDITIONAL_AGENTS_URI()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 174
    :cond_b
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->-$$Nest$mupdateAgentAllowlist(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;ZZ)V

    return-void
.end method
