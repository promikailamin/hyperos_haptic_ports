.class Landroid/app/AppScoutStateMachine$1;
.super Ljava/lang/Object;
.source "AppScoutStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppScoutStateMachine;->dumpThreadTrace(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppScoutStateMachine;

.field final synthetic blacklist val$mDirName:Ljava/lang/String;

.field final synthetic blacklist val$mEventName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppScoutStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/AppScoutStateMachine;

    .line 299
    iput-object p1, p0, Landroid/app/AppScoutStateMachine$1;->this$0:Landroid/app/AppScoutStateMachine;

    iput-object p2, p0, Landroid/app/AppScoutStateMachine$1;->val$mDirName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/AppScoutStateMachine$1;->val$mEventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 303
    :try_start_0
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->loadWalkStackLibrary:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_80

    const-string v1, "MIUIScout App"

    if-eqz v0, :cond_1d

    :try_start_6
    sget-object v0, Landroid/app/AppScoutStateMachine;->ENABLE_MI_TRACE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 304
    const-string v0, "Kick all to walk stacks..."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$1;->val$mDirName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$smnWalkStackAll(Ljava/lang/String;)V

    .line 306
    const-string v0, "Get current stack trace..."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v0, "backTrace":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/app/AppScoutStateMachine$1;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v2}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmMonitorThread(Landroid/app/AppScoutStateMachine;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 310
    .local v2, "st":[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/AppScoutStateMachine$1;->val$mEventName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/AppScoutStateMachine$1;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v4}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmMonitorThread(Landroid/app/AppScoutStateMachine;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " backtrace:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    array-length v3, v2

    const/4 v4, 0x0

    :goto_60
    if-ge v4, v3, :cond_77

    aget-object v5, v2, v4

    .line 313
    .local v5, "element":Ljava/lang/StackTraceElement;
    const-string v6, "    at "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    nop

    .end local v5    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 315
    :cond_77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7e} :catch_80

    .line 318
    nop

    .end local v0    # "backTrace":Ljava/lang/StringBuilder;
    .end local v2    # "st":[Ljava/lang/StackTraceElement;
    goto :goto_88

    .line 316
    :catch_80
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppScoutStateMachine"

    const-string v2, "Dump trace Fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_88
    return-void
.end method
