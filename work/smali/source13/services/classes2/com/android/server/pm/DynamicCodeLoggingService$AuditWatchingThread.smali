.class Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;
.super Ljava/lang/Thread;
.source "DynamicCodeLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DynamicCodeLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuditWatchingThread"
.end annotation


# instance fields
.field private final mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V
    .registers 3
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 174
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 175
    const-string p1, "DynamicCodeLoggingService_AuditWatchingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 176
    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    .line 177
    return-void
.end method

.method private processAuditEvents()Z
    .registers 14

    .line 226
    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [I

    const-string v2, "auditd"

    invoke-static {v2}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 227
    .local v1, "tags":[I
    aget v2, v1, v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_12

    .line 230
    return v0

    .line 233
    :cond_12
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$smgetDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v2

    .line 235
    .local v2, "dynamicCodeLogger":Lcom/android/server/pm/dex/DynamicCodeLogger;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v4, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/EventLog$Event;>;"
    invoke-static {v1, v4}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 237
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$sfgetEXECUTE_NATIVE_AUDIT_PATTERN()Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 238
    .local v5, "matcher":Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_88

    .line 239
    iget-object v7, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-static {v7}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$fgetmAuditWatchingStopRequested(Lcom/android/server/pm/DynamicCodeLoggingService;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 240
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Stopping AuditWatchingJob run at scheduler request"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v3

    .line 244
    :cond_41
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/EventLog$Event;

    .line 247
    .local v7, "event":Landroid/util/EventLog$Event;
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getUid()I

    move-result v8

    .line 248
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v9

    if-nez v9, :cond_52

    .line 249
    goto :goto_85

    .line 251
    :cond_52
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v9

    .line 252
    .local v9, "data":Ljava/lang/Object;
    instance-of v10, v9, Ljava/lang/String;

    if-nez v10, :cond_5b

    .line 253
    goto :goto_85

    .line 255
    :cond_5b
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .line 256
    .local v10, "message":Ljava/lang/String;
    const-string/jumbo v11, "type=1400 "

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_68

    .line 257
    goto :goto_85

    .line 264
    :cond_68
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 265
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_72

    .line 266
    goto :goto_85

    .line 268
    :cond_72
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 269
    .local v11, "path":Ljava/lang/String;
    if-nez v11, :cond_82

    .line 272
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$smunhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 274
    :cond_82
    invoke-virtual {v2, v8, v11}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordNative(ILjava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_85} :catch_89

    .line 238
    .end local v7    # "event":Landroid/util/EventLog$Event;
    .end local v8    # "uid":I
    .end local v9    # "data":Ljava/lang/Object;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    :goto_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 277
    .end local v6    # "i":I
    :cond_88
    return v0

    .line 278
    .end local v1    # "tags":[I
    .end local v2    # "dynamicCodeLogger":Lcom/android/server/pm/dex/DynamicCodeLogger;
    .end local v4    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/EventLog$Event;>;"
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :catch_89
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuditWatchingJob failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    return v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 185
    invoke-direct {p0}, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->processAuditEvents()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/DynamicCodeLoggingService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 191
    :cond_e
    return-void
.end method
