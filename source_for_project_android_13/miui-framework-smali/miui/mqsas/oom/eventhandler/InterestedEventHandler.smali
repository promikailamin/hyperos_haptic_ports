.class public Lmiui/mqsas/oom/eventhandler/InterestedEventHandler;
.super Ljava/lang/Object;
.source "InterestedEventHandler.java"

# interfaces
.implements Lmiui/mqsas/oom/ExceptionHandler;


# static fields
.field private static final blacklist INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "InterestedEventHandler"

.field private static final blacklist TEST_PACKAGE_NAME:Ljava/lang/String; = "com.example.memleaktesttool"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 14
    const-string v0, "Binder ProxyMap has too many entries:"

    const-string v1, "occurring DMA-BUF OOM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/oom/eventhandler/InterestedEventHandler;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isInterestedOOMEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z
    .registers 8
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 35
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionMessage()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 37
    return v2

    .line 39
    :cond_c
    sget-object v1, Lmiui/mqsas/oom/eventhandler/InterestedEventHandler;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_10
    if-ge v4, v3, :cond_1f

    aget-object v5, v1, v4

    .line 40
    .local v5, "exceptionMsg":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 41
    const/4 v1, 0x1

    return v1

    .line 39
    .end local v5    # "exceptionMsg":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 44
    :cond_1f
    return v2
.end method


# virtual methods
.method public blacklist handle(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 21
    invoke-static {p1}, Lmiui/mqsas/oom/eventhandler/InterestedEventHandler;->isInterestedOOMEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 22
    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_e

    .line 23
    return v1

    .line 24
    :cond_e
    invoke-static {}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->getInstance()Lmiui/mqsas/sdk/ApplicationInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->getIsSystem()Z

    move-result v0

    const-string v2, "InterestedEventHandler"

    if-eqz v0, :cond_43

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curr proc is : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " pid= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return v1

    .line 27
    :cond_43
    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.example.memleaktesttool"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 28
    const-string v0, "begin dump dmabuffer leak app Hprof"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return v1

    .line 32
    :cond_55
    const/4 v0, 0x0

    return v0
.end method
