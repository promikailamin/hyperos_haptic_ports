.class public Lmiui/mqsas/oom/eventhandler/MQSHandler;
.super Ljava/lang/Object;
.source "MQSHandler.java"

# interfaces
.implements Lmiui/mqsas/oom/ExceptionHandler;


# static fields
.field private static final blacklist INTERESTED_CLASS:Ljava/lang/String; = "java.lang.OutOfMemoryError"

.field private static final blacklist INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 11
    const-string v0, "Binder ProxyMap has too many entries:"

    const-string v1, "occurring DMA-BUF OOM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/oom/eventhandler/MQSHandler;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist isNeedCaptureHrof(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z
    .registers 11
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 23
    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionClassName()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "eventExceptionClass":Ljava/lang/String;
    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionMessage()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "java.lang.OutOfMemoryError"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    .line 26
    return v3

    .line 28
    :cond_12
    sget-object v2, Lmiui/mqsas/oom/eventhandler/MQSHandler;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_17
    if-ge v6, v4, :cond_25

    aget-object v7, v2, v6

    .line 29
    .local v7, "exceptionMsg":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 30
    return v3

    .line 28
    .end local v7    # "exceptionMsg":Ljava/lang/String;
    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 33
    :cond_25
    return v5
.end method


# virtual methods
.method public blacklist handle(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    .registers 3
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 17
    invoke-direct {p0, p1}, Lmiui/mqsas/oom/eventhandler/MQSHandler;->isNeedCaptureHrof(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 18
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->checkDumpForJavaException(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v0

    return v0

    .line 20
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
