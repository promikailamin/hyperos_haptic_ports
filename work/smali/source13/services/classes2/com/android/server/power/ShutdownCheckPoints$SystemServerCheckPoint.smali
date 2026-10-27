.class Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownCheckPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemServerCheckPoint"
.end annotation


# instance fields
.field private final mStackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/power/ShutdownCheckPoints$Injector;
    .param p2, "reason"    # Ljava/lang/String;

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 234
    return-void
.end method

.method private findCallSiteIndex()I
    .registers 5

    .line 267
    const-class v0, Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .line 270
    .local v1, "idx":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    aget-object v2, v2, v1

    .line 271
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 275
    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v3, v2

    if-ge v1, v3, :cond_2f

    aget-object v2, v2, v1

    .line 276
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 279
    :cond_2f
    return v1
.end method


# virtual methods
.method dumpDetails(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "methodName":Ljava/lang/String;
    if-nez v0, :cond_9

    const-string v1, "Failed to get method name"

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 246
    return-void
.end method

.method getMethodName()Ljava/lang/String;
    .registers 6

    .line 250
    invoke-direct {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findCallSiteIndex()I

    move-result v0

    .line 251
    .local v0, "idx":I
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v2, v1

    if-ge v0, v2, :cond_23

    .line 252
    aget-object v1, v1, v0

    .line 253
    .local v1, "element":Ljava/lang/StackTraceElement;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s.%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 255
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method getOrigin()Ljava/lang/String;
    .registers 2

    .line 238
    const-string v0, "SYSTEM"

    return-object v0
.end method

.method printStackTrace(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 260
    invoke-direct {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findCallSiteIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 261
    const-string v1, " at "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 264
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method
