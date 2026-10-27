.class final Lcom/android/server/ambientcontext/AmbientContextShellCommand;
.super Landroid/os/ShellCommand;
.source "AmbientContextShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;
    }
.end annotation


# static fields
.field private static final REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field static final sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;


# instance fields
.field private final mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    .line 41
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 97
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-direct {v0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;-><init>()V

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    return-void
.end method

.method constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 47
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 49
    return-void
.end method

.method private getBoundPackageName()I
    .registers 5

    .line 189
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 190
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getComponentName(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 192
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_17

    const-string v3, ""

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1b
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const/4 v3, 0x0

    return v3
.end method

.method private getLastPackageName()I
    .registers 4

    .line 163
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->getLastStatus()Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    move-result-object v0

    .line 165
    .local v0, "lastResponse":Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_d

    const-string v2, ""

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_11
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x0

    return v1
.end method

.method private getLastStatusCode()I
    .registers 3

    .line 154
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 155
    invoke-virtual {v0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->getLastStatus()Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    move-result-object v0

    .line 156
    .local v0, "lastResponse":Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
    if-nez v0, :cond_a

    .line 157
    const/4 v1, -0x1

    return v1

    .line 159
    :cond_a
    invoke-virtual {v0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getStatusCode()I

    move-result v1

    return v1
.end method

.method private runQueryServiceStatus()I
    .registers 6

    .line 143
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 148
    .local v2, "types":[I
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 149
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    .line 150
    const/4 v3, 0x0

    return v3

    nop

    :array_20
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private runStartDetection()I
    .registers 9

    .line 127
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 130
    invoke-static {v2}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateRemoteDetectionResultCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;

    move-result-object v5

    .line 131
    invoke-static {v2}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;

    move-result-object v6

    .line 129
    move v2, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 132
    const/4 v1, 0x0

    return v1
.end method

.method private runStopDetection()I
    .registers 4

    .line 136
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->stopAmbientContextEvent(ILjava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    return v2
.end method

.method private setTemporaryService()I
    .registers 8

    .line 197
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 198
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, "userId":I
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "serviceName":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 201
    iget-object v4, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->resetTemporaryService(I)V

    .line 202
    const-string v4, "AmbientContextDetectionService temporary reset. "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    return v3

    .line 206
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 207
    .local v4, "duration":I
    iget-object v5, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v5, v1, v2, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->setTemporaryService(ILjava/lang/String;I)V

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AmbientContextDetectionService temporarily set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return v3
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 102
    if-nez p1, :cond_7

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 106
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_84

    :cond_f
    goto :goto_59

    :sswitch_10
    const-string/jumbo v1, "start-detection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    goto :goto_59

    :sswitch_1b
    const-string v1, "get-last-status-code"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x2

    goto :goto_59

    :sswitch_25
    const-string/jumbo v1, "query-service-status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x4

    goto :goto_59

    :sswitch_30
    const-string/jumbo v1, "set-temporary-service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x6

    goto :goto_59

    :sswitch_3b
    const-string v1, "get-last-package-name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x3

    goto :goto_59

    :sswitch_45
    const-string/jumbo v1, "stop-detection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_59

    :sswitch_50
    const-string v1, "get-bound-package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x5

    :goto_59
    packed-switch v0, :pswitch_data_a2

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 120
    :pswitch_61
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->setTemporaryService()I

    move-result v0

    return v0

    .line 118
    :pswitch_66
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getBoundPackageName()I

    move-result v0

    return v0

    .line 116
    :pswitch_6b
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runQueryServiceStatus()I

    move-result v0

    return v0

    .line 114
    :pswitch_70
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getLastPackageName()I

    move-result v0

    return v0

    .line 112
    :pswitch_75
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getLastStatusCode()I

    move-result v0

    return v0

    .line 110
    :pswitch_7a
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runStopDetection()I

    move-result v0

    return v0

    .line 108
    :pswitch_7f
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runStartDetection()I

    move-result v0

    return v0

    :sswitch_data_84
    .sparse-switch
        -0x7c399b40 -> :sswitch_50
        -0x7a19e586 -> :sswitch_45
        -0x1c5f812e -> :sswitch_3b
        0x41db2e8e -> :sswitch_30
        0x5a9159af -> :sswitch_25
        0x784ce7c8 -> :sswitch_1b
        0x7c42deda -> :sswitch_10
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7a
        :pswitch_75
        :pswitch_70
        :pswitch_6b
        :pswitch_66
        :pswitch_61
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 171
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 172
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "AmbientContextEvent commands: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 176
    const-string v1, "  start-detection USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const-string v1, "  stop-detection USER_ID: Stops AmbientContextEvent detection."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    const-string v1, "  get-last-status-code: Prints the latest request status code."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string v1, "  get-last-package-name: Prints the latest request package name."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    const-string v1, "  query-event-status USER_ID PACKAGE_NAME: Prints the event status code."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string v1, "  get-bound-package USER_ID:     Print the bound package that implements the service."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const-string v1, "  set-temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    const-string v1, "    Temporarily (for DURATION ms) changes the service implementation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    const-string v1, "    To reset, call with just the USER_ID argument."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    return-void
.end method
