.class public Lmiui/mqsas/oom/eventhandler/OOMHandler;
.super Ljava/lang/Object;
.source "OOMHandler.java"

# interfaces
.implements Lmiui/mqsas/oom/ExceptionHandler;


# static fields
.field private static final blacklist INTERESTED_CLASS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-string v0, "java.lang.OutOfMemoryError"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/oom/eventhandler/OOMHandler;->INTERESTED_CLASS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist isOOMEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z
    .registers 9
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 22
    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionClassName()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "eventExceptionClass":Ljava/lang/String;
    sget-object v1, Lmiui/mqsas/oom/eventhandler/OOMHandler;->INTERESTED_CLASS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_18

    aget-object v5, v1, v4

    .line 24
    .local v5, "exceptionClass":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 25
    const/4 v1, 0x1

    return v1

    .line 23
    .end local v5    # "exceptionClass":Ljava/lang/String;
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 28
    :cond_18
    return v3
.end method


# virtual methods
.method public blacklist handle(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    .registers 3
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 15
    invoke-direct {p0, p1}, Lmiui/mqsas/oom/eventhandler/OOMHandler;->isOOMEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 16
    const/4 v0, 0x4

    return v0

    .line 18
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
